package itassetrepo

import (
	"bytes"
	"context"
	"database/sql"
	"fmt"
	"html/template"
	"log"
	"net/smtp"
	"strconv"
	"strings"
	"time"

	"github.com/premsynfosys/AMS_API/models/cmnmdl"
	itassetmdl "github.com/premsynfosys/AMS_API/models/itassetmdl"
	//cmnrepo "github.com/premsynfosys/AMS_API/repository/cmnrepo"
)

// NewSQLRepo retunrs implement of post repository interface
func NewSQLRepo(con *sql.DB) ITAsserIntfc {
	return &mysqlRepo{
		Conn: con,
	}

}

type mysqlRepo struct {
	Conn *sql.DB
}

func (m *mysqlRepo) GetITAssetGroups(ctx context.Context) ([]*itassetmdl.ITAssetGroup, error) {
	selDB, err := m.Conn.QueryContext(ctx, "SELECT iditassetgroups,itassetgroupName FROM itassetgroups where RecordStatus='Active';")
	if err != nil {
		panic(err.Error())
	}

	res := make([]*itassetmdl.ITAssetGroup, 0)
	for selDB.Next() {
		emp := new(itassetmdl.ITAssetGroup)
		err = selDB.Scan(&emp.IDITAssetgroups, &emp.ITAssetgroupName)
		if err != nil {
			panic(err.Error())
		}
		res = append(res, emp)
	}
	if err != nil {
		return nil, err

	}
	defer selDB.Close()
	return res, nil
}
func (m *mysqlRepo) ITAssetGroups_Create(ctx context.Context, grp *itassetmdl.ITAssetGroup) error {
	selDB, err := m.Conn.PrepareContext(ctx, "INSERT INTO itassetgroups(itassetgroupName,CreatedBy) VALUES(?,?);")
	if err != nil {
		panic(err.Error())
	}
	_, err = selDB.ExecContext(ctx, &grp.ITAssetgroupName, &grp.CreatedBy)

	if err != nil {
		return err
	}

	return err
}

func (m *mysqlRepo) GetEmployeeITAssetsByID(ctx context.Context, EmpID int, isCheckin int) ([]*itassetmdl.ITAssetModel, error) {
	selDB, err := m.Conn.QueryContext(ctx, "call sp_ITAssetsListByEmpID(?,?)", EmpID, isCheckin)
	if err != nil {
		panic(err.Error())
	}

	res := make([]*itassetmdl.ITAssetModel, 0)
	for selDB.Next() {
		mdl := new(itassetmdl.ITAssetModel)
		chk := new(itassetmdl.ITassetCheckout)
		emp := new(cmnmdl.Employees)
		err = selDB.Scan(&mdl.IDITAssets, &mdl.ITAssetName, &mdl.ITAssetGroup, &mdl.ITAssetModel, &mdl.ITAssetSerialNo, &mdl.ITAssetIdentificationNo, &mdl.ITAssetDescription, &mdl.ITAssetPrice, &mdl.ITAssetWarranty, &mdl.ITAssetStatus, &mdl.ITAssetFileUpld, &mdl.ITAssetImg, &mdl.RecordStatus,
			&mdl.Vendor, &mdl.Location, &mdl.CustomFields1, &mdl.CustomFields1Value, &mdl.CustomFields1Type, &mdl.CustomFields2, &mdl.CustomFields2Value, &mdl.CustomFields2Type,
			&mdl.CustomFields3, &mdl.CustomFields3Value, &mdl.CustomFields3Type, &mdl.CustomFields4, &mdl.CustomFields4Value, &mdl.CustomFields4Type,
			&mdl.CustomFields5, &mdl.CustomFields5Value, &mdl.CustomFields5Type, &mdl.Statusname, &mdl.Itassetgroupname, &chk.IDITAssetCheckOutCheckIN,
			&chk.CheckedOutUserID, &chk.CheckedOutAssetID, &chk.CheckedOutDate, &chk.ExpectedCheckInDate, &chk.CheckinDate, &chk.Comments, &chk.IsCheckin,
			&emp.IDEmployees, &emp.FirstName, &emp.LastName, &emp.Email, &emp.Mobile, &emp.Status, &emp.Designation)
		mdl.ITassetCheckout = chk
		mdl.Employees = emp
		if err != nil {
			panic(err.Error())
		}
		res = append(res, mdl)
	}
	if err != nil {
		return nil, err

	}
	defer selDB.Close()
	return res, nil
}

func (m *mysqlRepo) CreateITAssetRequest(Listmdl []*itassetmdl.ITAssetRequest) (err error) {
	var ReqGroupID int
	err = m.Conn.QueryRow("SELECT ifnull(max(ReqGroupID),0)+1 FROM itassetrequest;").Scan(&ReqGroupID)
	query := " INSERT INTO itassetrequest(ReqGroupID,RequestedBy,AssetType,AssetID,Description,RequestedOn,Priority,ReqStatus) VALUES "
	vals := []interface{}{}
	mailHtmlbody := "<table   border='1' width='50%'> <thead><th>Asset Type</th><th>Description</th></thead><tbody>"
	for _, req := range Listmdl {
		query += " (?,?,?,?,?, now(),?,?),"
		vals = append(vals, &ReqGroupID, &req.RequestedBy, &req.AssetType, &req.AssetID, &req.Description, &req.Priority, "Requested")
		mailHtmlbody += "<tr>"
		mailHtmlbody += "<td>" + *req.AssetType + "</td>"
		mailHtmlbody += "<td>" + *req.Description + "</td>"
		mailHtmlbody += "</tr>"
	}
	mailHtmlbody += "</tbody></table>"
	query = query[0 : len(query)-1]

	txn, err := m.Conn.Begin()
	stmtA, err1 := txn.Prepare(query)
	if err1 != nil {
		return err
	}
	_, err2 := stmtA.Exec(vals...)

	Apprvlquery := " insert into itasset_req_approvals (itassetReqGroupID, RoleID, ApproverID, Grade, CreatedOn, Status) "
	Apprvlquery += "	values(?,?,?,?, now(),'Requested') "
	stmtApprvl, err4 := txn.Prepare(Apprvlquery)
	_, err5 := stmtApprvl.Exec(&ReqGroupID, &Listmdl[0].ITAssetRequestApproval.RoleID, &Listmdl[0].ITAssetRequestApproval.ApproverID,
		&Listmdl[0].ITAssetRequestApproval.Grade)
	AprvrMail, AprvrName := m.GetMailByUserID(nil, Listmdl[0].ITAssetRequestApproval.ApproverID)
	RcvrMail, RcvrName := m.GetMailByUserID(Listmdl[0].RequestedBy, nil)

	if err == nil {
		Subject := "ITAsset(s) requested by - " + RcvrName + ""
		Msg := "" + RcvrName + " requested below assets <br />"
		Msg += mailHtmlbody
		Msg += "<br/><p>Approver : " + AprvrName + "</p>"
		Msg += "<br/><p>Priority : " + *Listmdl[0].Priority + "</p>"
		emailAprvr := cmnmdl.Email{
			ToAddress: AprvrMail,
			Subject:   Subject,
			Body:      Msg,
		}
		emailRcvr := cmnmdl.Email{
			ToAddress: RcvrMail,
			Subject:   Subject,
			Body:      Msg,
		}
		go m.SendEmail(&emailAprvr, false)

		go m.SendEmail(&emailRcvr, false)
	}
	defer func() {
		if err != nil || err1 != nil || err2 != nil || err4 != nil || err5 != nil {
			txn.Rollback()
			return
		}
		err = txn.Commit()
	}()
	return err
}

func (m *mysqlRepo) GetITAssetReqList(ctx context.Context, ApprvrID int) ([]*itassetmdl.ITAssetReqList, error) {
	selDB, err := m.Conn.QueryContext(ctx, "call sp_ITAssetReqListByApprover(?);", ApprvrID)
	if err != nil {
		panic(err.Error())
	}

	res := make([]*itassetmdl.ITAssetReqList, 0)
	for selDB.Next() {
		mdl := new(itassetmdl.ITAssetReqList)
		ITAssetRequest := new(itassetmdl.ITAssetRequest)
		ira := new(itassetmdl.ITAssetRequestApproval)
		Requester := new(cmnmdl.Employees)
		err = selDB.Scan(&ITAssetRequest.AssetType, &ITAssetRequest.ReqGroupID, &ITAssetRequest.RequestedBy,
			&ITAssetRequest.ReqStatus, &ITAssetRequest.Priority, &ITAssetRequest.RequestedOn, &ITAssetRequest.AssetID, &ITAssetRequest.Description,
			&Requester.FirstName,
			&ira.RoleID, &ira.ApproverID, &ira.Grade, &ira.Status, &ira.Comments, &ira.CreatedOn, &ira.ActionedOn)

		ITAssetRequest.ITAssetRequestApproval = ira
		mdl.Requester = Requester
		mdl.ITAssetRequest = ITAssetRequest
		if err != nil {
			panic(err.Error())
		}
		res = append(res, mdl)
	}
	if err != nil {
		return nil, err

	}
	defer selDB.Close()
	return res, nil
}
func (m *mysqlRepo) ITAssetReqListByReqGroup(ctx context.Context, ReqGroupID int, ApproverID int) ([]*itassetmdl.ITAssetReqList, error) {
	selDB, err := m.Conn.QueryContext(ctx, "call sp_ITAssetReqListByReqGroup(?,?);", ReqGroupID, ApproverID)
	if err != nil {
		panic(err.Error())
	}
	res := make([]*itassetmdl.ITAssetReqList, 0)
	for selDB.Next() {
		mdl := new(itassetmdl.ITAssetReqList)
		ITAssetRequest := new(itassetmdl.ITAssetRequest)
		ira := new(itassetmdl.ITAssetRequestApproval)
		Requester := new(cmnmdl.Employees)
		err = selDB.Scan(&ITAssetRequest.IDITAssetrequest, &ITAssetRequest.AssetType, &ITAssetRequest.ReqGroupID, &Requester.FirstName, &ITAssetRequest.RequestedBy,
			&ITAssetRequest.ReqStatus, &ITAssetRequest.Priority, &ITAssetRequest.Description, &ITAssetRequest.RequestedOn,
			&ITAssetRequest.AssetID, &ira.IDitasset_Req_approvals,
			&ira.RoleID, &ira.ApproverID, &ira.Grade, &ira.Status, &ira.Comments, &ira.CreatedOn, &ira.ActionedOn)

		ITAssetRequest.ITAssetRequestApproval = ira
		mdl.Requester = Requester
		mdl.ITAssetRequest = ITAssetRequest
		if err != nil {
			panic(err.Error())
		}
		res = append(res, mdl)
	}
	if err != nil {
		return nil, err

	}
	defer selDB.Close()
	return res, nil
}

func (m *mysqlRepo) ITAssetReqReject(ctx context.Context, Mdl *itassetmdl.ITAssetRequestApproval) (bool, error) {
	query := "update itassetrequest set ReqStatus='Rejected' where ReqGroupID =? ;"
	stmt, err := m.Conn.PrepareContext(ctx, query)
	_, err = stmt.ExecContext(ctx, &Mdl.ITAssetReqGroupID)
	query = "update itasset_req_approvals set Status='Rejected',Comments=?,ActionedOn=now() where iditasset_Req_approvals = ? ;"
	stmt, err = m.Conn.PrepareContext(ctx, query)
	_, err = stmt.ExecContext(ctx, &Mdl.Comments, &Mdl.IDitasset_Req_approvals)
	defer stmt.Close()
	if err != nil {
		return false, err
	}

	return true, err
}
func (m *mysqlRepo) ITAssetReqApprove(ctx context.Context, MdlList []*itassetmdl.ITAssetRequest) (bool, error) {
	txn, err := m.Conn.Begin()
	queryReq := "update itasset_req_approvals set Status='Approved' ,Comments=?,ActionedOn=now() where iditasset_Req_approvals= ? "
	stmnt, _ := txn.PrepareContext(ctx, queryReq)
	_, err2 := stmnt.Exec(&MdlList[0].ITAssetRequestApproval.Comments, &MdlList[0].ITAssetRequestApproval.IDitasset_Req_approvals)
	if err2 != nil {
		txn.Rollback()
		return false, err2
	}
	// query := "update itassetrequest set ReqStatus='Approved',AssetID=? where iditassetrequest in ( "
	// vals := []interface{}{}
	//vals = append(vals, &MdlList[0].ApproverComments)
	for _, item := range MdlList {
		query := "update itassetrequest set ReqStatus='Approved',AssetID=? where iditassetrequest =? ;"
		stmt, err := txn.PrepareContext(ctx, query)
		if err != nil {
			txn.Rollback()
			return false, err
		}
		defer stmt.Close()

		_, err = stmt.ExecContext(ctx, &item.AssetID, &item.IDITAssetrequest)
		if err != nil {
			txn.Rollback()
			return false, err
		}
		// query += "?,"
		// vals = append(vals, &item.IDITAssetrequest,&item.AssetID)
	}
	// query = query[0 : len(query)-1]
	// query += ")"
	var ReqGroupID int
	for _, item := range MdlList {
		var RequestedBy int

		err = m.Conn.QueryRowContext(ctx, "SELECT RequestedBy,ReqGroupID FROM itassetrequest where iditassetrequest=?;", &item.IDITAssetrequest).Scan(&RequestedBy, &ReqGroupID)
		if err != nil {
			txn.Rollback()
			return false, err
		}
		ITassetCheckout := itassetmdl.ITassetCheckout{}
		ITassetCheckout.AssetID = item.AssetID
		ITassetCheckout.CheckedOutUserID = &RequestedBy
		ITassetCheckout.Comments = item.ITAssetRequestApproval.Comments
		ITassetCheckout.CheckOut_By = item.CreatedBy
		ITassetCheckout.CreatedBy = item.CreatedBy

		query := "call sp_ITasset_CheckOut_insert(?,?,?,?,now(),?,?,? ,?) ;"
		stmt, err := txn.PrepareContext(ctx, query)
		if err != nil {
			txn.Rollback()
			return false, err
		}
		_, err = stmt.ExecContext(ctx, ITassetCheckout.AssetID, "User", ITassetCheckout.CheckedOutUserID,
			ITassetCheckout.CheckedOutAssetID, ITassetCheckout.ExpectedCheckInDate, ITassetCheckout.Comments, false, ITassetCheckout.CreatedBy)

		if err != nil {
			txn.Rollback()
			return false, err
		}
		defer stmt.Close()
	}

	// query := "update itassetrequest set ReqStatus='Partially Approved' where ReqGroupID =? and ReqStatus='Requested' ;"
	// 	stmt, err := txn.PrepareContext(ctx, query)
	// 	if err != nil {
	// 		txn.Rollback()
	// 		return false, err
	// 	}
	// 	_, err = stmt.ExecContext(ctx, &ReqGroupID)
	// 	if err != nil {
	// 		txn.Rollback()
	// 		return false, err
	// 	}
	// if err != nil {
	// 	txn.Rollback()
	// 	return false, err
	// }
	if err == nil {
		err = txn.Commit()
	}

	return true, err
}
func (m *mysqlRepo) ITAssetReqForward(ctx context.Context, mdl *itassetmdl.ITAssetRequestApproval) error {
	query := "update itasset_req_approvals set Status=? ,Comments=?,ActionedOn=now() where iditasset_Req_approvals= ? "
	txn, err := m.Conn.Begin()
	stmnt, _ := txn.PrepareContext(ctx, query)
	_, err2 := stmnt.Exec(&mdl.Status, &mdl.Comments, &mdl.IDitasset_Req_approvals)
	if err2 != nil {
		txn.Rollback()
		return err2
	}
	FinalGrade := 1
	if *mdl.Grade != FinalGrade && *mdl.Status != "Rejected" {
		Apprvlquery := " insert into itasset_req_approvals (itassetReqGroupID, RoleID, ApproverID, Grade, CreatedOn, Status) "
		Apprvlquery += "	values(?,?,?,?, now(),'Requested') "
		stmtApprvl, err3 := txn.Prepare(Apprvlquery)

		if err3 != nil {
			txn.Rollback()
			return err3
		}
		_, err4 := stmtApprvl.Exec(&mdl.ITAssetReqGroupID, &mdl.NextRoleID, &mdl.NextApproverID, &mdl.NextGrade)

		if err4 != nil {
			txn.Rollback()
			return err4
		}

		AprvrMail, AprvrName := m.GetMailByUserID(nil, mdl.NextApproverID)
		Subject := "ITAsset(s) Requested forwarded"
		Msg := "<p>Hai " + AprvrName + "</p><p>One New ITAsset Request forwarded for you. Please check the ITAsser Request list</p>"
		emailAprvr := cmnmdl.Email{
			ToAddress: AprvrMail,
			Subject:   Subject,
			Body:      Msg,
		}

		go m.SendEmail(&emailAprvr, false)

	}
	err = txn.Commit()

	return err
}
func (m *mysqlRepo) CreateITAsset(ctx context.Context, mdl *itassetmdl.ITAssetModel) (int64, error) {
	var query strings.Builder
	const shortForm = "2006-01-02"
	ss := mdl.ITAssetWarranty
	t, _ := time.Parse(shortForm, *ss)

	query.WriteString("INSERT into  itassets (ITAssetName,ITAssetGroup,ITAssetModel,ITAssetSerialNo,")
	query.WriteString("ITAssetIdentificationNo,ITAssetDescription,ITAssetPrice,ITAssetWarranty,")
	query.WriteString("ITAssetStatus,ITAssetFileUpld,ITAssetImg,Vendor,Location,CustomFields1,CustomFields1Value,CustomFields1Type,CustomFields2,CustomFields2Value,CustomFields2Type,CustomFields3,CustomFields3Value,CustomFields3Type,CustomFields4,CustomFields4Value,CustomFields4Type,CustomFields5,CustomFields5Value,CustomFields5Type,CreatedBy) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?) ")

	stmt, err := m.Conn.PrepareContext(ctx, query.String())
	if err != nil {
		return -1, err
	}

	res, err := stmt.ExecContext(ctx, mdl.ITAssetName, mdl.ITAssetGroup, mdl.ITAssetModel, mdl.ITAssetSerialNo,
		mdl.ITAssetIdentificationNo, mdl.ITAssetDescription,
		mdl.ITAssetPrice, t, mdl.ITAssetStatus, mdl.ITAssetFileUpld, mdl.ITAssetImg, mdl.Vendor, mdl.Location,
		mdl.CustomFields1, mdl.CustomFields1Value, mdl.CustomFields1Type, mdl.CustomFields2, mdl.CustomFields2Value, mdl.CustomFields2Type,
		mdl.CustomFields3, mdl.CustomFields3Value, mdl.CustomFields3Type, mdl.CustomFields4, mdl.CustomFields4Value, mdl.CustomFields4Type,
		mdl.CustomFields5, mdl.CustomFields5Value, mdl.CustomFields5Type, mdl.CreatedBy)
	defer stmt.Close()

	if err != nil {
		return -1, err
	}

	return res.LastInsertId()
}
func (m *mysqlRepo) BulkCreateITAsset(ctx context.Context, Listmdl []*itassetmdl.ITAssetModel) error {
	var query strings.Builder
	query.WriteString("INSERT into  itassets (ITAssetName,ITAssetModel,ITAssetSerialNo,")
	query.WriteString("ITAssetDescription,ITAssetPrice,CreatedBy) values ")
	vals := []interface{}{}

	for _, row := range Listmdl {
		query.WriteString(" (?,?,?,?,?,?),")
		vals = append(vals, row.ITAssetName, row.ITAssetModel, row.ITAssetSerialNo, row.ITAssetDescription, row.ITAssetPrice, row.CreatedBy)
	}
	//trim the last ,
	sqlStr := query.String()
	sqlStr = sqlStr[0 : len(sqlStr)-1]

	stmt, _ := m.Conn.Prepare(sqlStr)
	_, err := stmt.Exec(vals...)

	defer stmt.Close()

	if err != nil {
		return err
	}

	return err
}
func (m *mysqlRepo) UpdateITAsset(ctx context.Context, mdl *itassetmdl.ITAssetModel) error {
	var query strings.Builder
	const shortForm = "2006-01-02"
	ss := mdl.ITAssetWarranty
	t, _ := time.Parse(shortForm, *ss)
	query.WriteString("UPDATE itassets SET ITAssetName =?,ITAssetGroup = ?,ITAssetModel = ?,ITAssetSerialNo =?,ITAssetDescription =?,")
	query.WriteString("ITAssetPrice =?,ITAssetWarranty =?,ITAssetStatus =?,ITAssetImg =?,Vendor =?,Location = ?,ModifiedBy=? WHERE idITAssets = ?;")
	stmt, err := m.Conn.PrepareContext(ctx, query.String())
	if err != nil {
		return err
	}
	_, err = stmt.ExecContext(ctx, mdl.ITAssetName, mdl.ITAssetGroup, mdl.ITAssetModel, mdl.ITAssetSerialNo,
		mdl.ITAssetDescription,
		mdl.ITAssetPrice, t, mdl.ITAssetStatus, mdl.ITAssetImg, mdl.Vendor, mdl.Location, mdl.ModifiedBy, mdl.IDITAssets)
	defer stmt.Close()

	return err
}
func (m *mysqlRepo) GetITAsset(ctx context.Context, LocID int) ([]*itassetmdl.ITAssetModel, error) {
	selDB, err := m.Conn.QueryContext(ctx, "call sp_ITAssetsList(?)", LocID)
	if err != nil {
		panic(err.Error())
	}

	res := make([]*itassetmdl.ITAssetModel, 0)
	for selDB.Next() {
		mdl := new(itassetmdl.ITAssetModel)
		chk := &itassetmdl.ITassetCheckout{}
		usr := &cmnmdl.Employees{}
		err = selDB.Scan(&mdl.IDITAssets, &mdl.ITAssetName, &mdl.ITAssetGroup, &mdl.Itassetgroupname, &mdl.ITAssetModel, &mdl.ITAssetSerialNo, &mdl.ITAssetIdentificationNo, &mdl.ITAssetDescription,
			&mdl.ITAssetPrice, &mdl.ITAssetWarranty, &mdl.ITAssetStatus, &mdl.Statusname, &mdl.ITAssetFileUpld, &mdl.ITAssetImg, &mdl.RecordStatus,
			&chk.IDITAssetCheckOutCheckIN, &chk.CheckedOutUserID, &chk.CheckedOutAssetID, &chk.CheckedOutDate,
			&chk.ExpectedCheckInDate, &chk.CheckinDate, &chk.Comments, &chk.IsCheckin, &mdl.Vendor, &mdl.Location, &mdl.CustomFields1, &mdl.CustomFields1Value, &mdl.CustomFields1Type, &mdl.CustomFields2, &mdl.CustomFields2Value, &mdl.CustomFields2Type, &mdl.CustomFields3, &mdl.CustomFields3Value, &mdl.CustomFields3Type, &mdl.CustomFields4, &mdl.CustomFields4Value, &mdl.CustomFields4Type, &mdl.CustomFields5, &mdl.CustomFields5Value, &mdl.CustomFields5Type, &usr.FirstName)
		mdl.ITassetCheckout = chk
		mdl.Employees = usr
		if err != nil {
			panic(err.Error())
		}
		res = append(res, mdl)
	}
	if err != nil {
		return nil, err

	}
	defer selDB.Close()
	return res, nil
}

func (m *mysqlRepo) CreateITAssetsCheckoutT(ctx context.Context, usr *itassetmdl.ITassetCheckout) error {
	query := "call sp_ITasset_CheckOut_insert(?,?,?, ?,?,?, ?,?,?) ;"

	stmt, err := m.Conn.PrepareContext(ctx, query)
	if err != nil {
		return err
	}
	_, err = stmt.ExecContext(ctx, usr.AssetID, usr.CheckedOutTo, usr.CheckedOutUserID, usr.CheckedOutAssetID,
		usr.CheckedOutDate,
		usr.ExpectedCheckInDate, usr.Comments, usr.IsCheckin, usr.CreatedBy)
	if err != nil {
		return err
	}
	defer stmt.Close()
	if *usr.CheckedOutTo == "User" {
		mail, name := m.GetMailByUserID(nil, usr.CheckedOutUserID)
		Msg := "<h3>Hai " + name + "</h3>"
		Msg += "<p>ITAsset successfully allocated to you.</p>"
		emailRcvr := cmnmdl.Email{
			ToAddress: mail,
			Subject:   "ITAsset Allocated.",
			Body:      Msg,
		}
		go m.SendEmail(&emailRcvr, false)
	}
	if err != nil {
		return err
	}
	return err
}

func (m *mysqlRepo) CreateITAssetsCheckIn(ctx context.Context, usr *itassetmdl.ITassetCheckout) error {
	query := "call sp_ITasset_CheckIn(?,?,?) ;"

	stmt, err := m.Conn.PrepareContext(ctx, query)
	if err != nil {
		return err
	}
	_, err = stmt.ExecContext(ctx, usr.CheckinComments, usr.IDITAssetCheckOutCheckIN, usr.CheckinDate)
	defer stmt.Close()

	if err != nil {
		return err
	}
	return err
}
func (m *mysqlRepo) ITAssetRetire(ctx context.Context, mdl *itassetmdl.Retire) error {
	query := "call sp_ITasset_Retire(?,?,?,?,?) ;"

	stmt, err := m.Conn.PrepareContext(ctx, query)
	if err != nil {
		return err
	}
	_, err = stmt.ExecContext(ctx, mdl.AssetID, mdl.Reason, mdl.RetireDate, mdl.Commnets, mdl.RetiredBy)
	defer stmt.Close()

	if err != nil {
		return err
	}
	return err
}
func (m *mysqlRepo) GetITassetsFilesByID(ctx context.Context, id int) ([]*itassetmdl.ITassetsFiles, error) {
	selDB, err := m.Conn.QueryContext(ctx, "SELECT idITAssetsFiles,Name,Descrption,path,AssetID,FileType,Size,UploadedOn,CreatedBy,CreatedOn,Record_Status FROM itassetsfiles where AssetID=?;", id)
	if err != nil {
		panic(err.Error())
	}

	res := make([]*itassetmdl.ITassetsFiles, 0)
	for selDB.Next() {
		item := new(itassetmdl.ITassetsFiles)
		err = selDB.Scan(&item.IDITAssetsFiles, &item.Name, &item.Descrption, &item.Path, &item.AssetID, &item.FileType, &item.Size, &item.UploadedOn, &item.CreatedBy, &item.CreatedOn, &item.RecordStatus)
		if err != nil {
			panic(err.Error())
		}
		res = append(res, item)
	}
	if err != nil {
		return nil, err

	}
	defer selDB.Close()
	return res, nil
}
func (m *mysqlRepo) CreateITassetsFiles(ctx context.Context, usr *itassetmdl.ITassetsFiles) error {
	query := "INSERT INTO itassetsfiles(Name,Descrption,path,AssetID,FileType,Size)VALUES(?,?,?,?,?,?);"

	stmt, err := m.Conn.PrepareContext(ctx, query)
	if err != nil {
		return err
	}
	_, err = stmt.ExecContext(ctx, usr.Name, usr.Descrption, usr.Path, usr.AssetID, usr.FileType, usr.Size)
	defer stmt.Close()

	if err != nil {
		return err
	}
	return err
}
func (m *mysqlRepo) ITAssetsBulkEdit(ctx context.Context, usr *itassetmdl.ITAssetModel, ids []string) error {

	var query strings.Builder
	query.WriteString("update itassets set ITAssetDescription=?,ITAssetWarranty=?,Vendor=?,Location=? where idITAssets IN ( ")

	for _, dt := range ids {
		query.WriteString(" " + dt + ",")
	}
	sqlStr := query.String()
	sqlStr = sqlStr[0 : len(sqlStr)-1]
	sqlStr += " )"

	stmt, err := m.Conn.PrepareContext(ctx, sqlStr)
	if err != nil {
		return err
	}
	const shortForm = "2006-01-02"
	ss := usr.ITAssetWarranty
	t, _ := time.Parse(shortForm, *ss)
	_, err = stmt.ExecContext(ctx, usr.ITAssetDescription, t, usr.Vendor, usr.Location)
	defer stmt.Close()

	if err != nil {
		return err
	}
	return err
}
func (m *mysqlRepo) GetCustomFields(ctx context.Context) (*itassetmdl.ITAssetModel, error) {
	qry := "SELECT CustomFields1,CustomFields1Value,CustomFields1Type,CustomFields2,CustomFields2Value,CustomFields2Type, "
	qry += " CustomFields3,CustomFields3Value,CustomFields3Type,CustomFields4,CustomFields4Value,CustomFields4Type,CustomFields5, "
	qry += " CustomFields5Value,CustomFields5Type FROM itassets  order by idITAssets desc limit 1; "
	selDB := m.Conn.QueryRowContext(ctx, qry)

	item := new(itassetmdl.ITAssetModel)

	err := selDB.Scan(&item.CustomFields1, &item.CustomFields1Value, &item.CustomFields1Type, &item.CustomFields2, &item.CustomFields2Value, &item.CustomFields2Type, &item.CustomFields3, &item.CustomFields3Value, &item.CustomFields3Type, &item.CustomFields4, &item.CustomFields4Value, &item.CustomFields4Type, &item.CustomFields5, &item.CustomFields5Value, &item.CustomFields5Type)
	if err != nil {
		panic(err.Error())
	}

	if err != nil {
		return nil, err

	}

	return item, nil
}

func (m *mysqlRepo) SendEmail(mdl *cmnmdl.Email, IsRetry bool) {
	auth := smtp.PlainAuth("", "premkumardot123@gmail.com", "premkumar143", "smtp.gmail.com")
	htmlbdy := "<!doctype html><html lang='en'><head></head><body>" + mdl.Body + "</body></html>"
	t, err := template.New("msg").Parse(htmlbdy)
	if err != nil {
		log.Printf("smtp error: %s", err)
	}
	buf := new(bytes.Buffer)
	if err = t.Execute(buf, nil); err != nil {
		log.Printf("smtp error: %s", err)
	}
	body := buf.String()

	mime := "MIME-version: 1.0;\nContent-Type: text/html; charset=\"UTF-8\";\n\n"
	Htmlsubject := "Subject: " + mdl.Subject + "!\n"
	msg := []byte(Htmlsubject + mime + "\n" + body)
	err = smtp.SendMail("smtp.gmail.com:587", auth, "premkumardot123@gmail.com", []string{mdl.ToAddress}, msg)
	if err != nil {
		if IsRetry {
			if mdl.TimePeriod == 1 {
				if mdl.Attempts < 3 {
					mdl.Reason = err.Error()
					mdl.Attempts = mdl.Attempts + 1
					m.UpdateFailedEmails(mdl)
				} else {
					mdl.Reason = err.Error()
					mdl.TimePeriod = 12
					m.UpdateFailedEmails(mdl)
				}
			} else if mdl.TimePeriod == 12 {
				mdl.TimePeriod = 24
				mdl.Reason = err.Error()
				m.UpdateFailedEmails(mdl)
			} else if mdl.TimePeriod == 24 {
				mdl.Status = "Failed"
				mdl.Reason = err.Error()
				m.UpdateFailedEmails(mdl)
			}
		} else {
			mdl.TimePeriod = 1
			mdl.Attempts = 1
			mdl.Status = "Retry"
			mdl.Reason = err.Error()
			m.CreateFailedEmails(mdl)
		}
		log.Printf("smtp error: %s", err)
	} else if IsRetry {
		m.DeleteFailedEmails(mdl)
	}
}
func (m *mysqlRepo) GetMailByUserID(userID *int, EmpID *int) (Email string, Name string) {
	var UsrID, empID string
	if userID != nil {
		UsrID = strconv.Itoa(*userID)
	}
	if EmpID != nil {
		empID = strconv.Itoa(*EmpID)
	}

	var selDB *sql.Row
	if userID != nil {
		selDB = m.Conn.QueryRow("SELECT emp.Email ,emp.FirstName FROM users usr join employees emp on emp.IdEmployees=EmployeeId where usr.idUsers=" + UsrID + " ;")
	} else {
		selDB = m.Conn.QueryRow("SELECT Email ,FirstName from employees where IdEmployees=" + empID + " ;")
	}
	selDB.Scan(&Email, &Name)
	return
}

func (m *mysqlRepo) GetFailedMails() ([]*cmnmdl.Email, error) {
	selDB, err := m.Conn.Query("SELECT idEmails,ToAddress,Subject,Body,TimePeriod,Status,Attempts,Created_On FROM emails where status!='Failed';")
	if err != nil {
		panic(err.Error())
	}
	res := make([]*cmnmdl.Email, 0)
	for selDB.Next() {
		item := new(cmnmdl.Email)
		err = selDB.Scan(&item.IDEmails, &item.ToAddress, &item.Subject, &item.Body, &item.TimePeriod, &item.Status,
			&item.Attempts, &item.CreatedOn)
		if err != nil {
			panic(err.Error())
		}
		res = append(res, item)
	}
	if err != nil {
		return nil, err

	}
	defer selDB.Close()
	return res, nil
}
func (m *mysqlRepo) CreateFailedEmails(mdl *cmnmdl.Email) (err error) {

	query := "INSERT INTO emails ( ToAddress,Subject,Body,TimePeriod,Status,Attempts,Reason) VALUES (?,?,?,?,?,?,?);"
	stmt, _ := m.Conn.Prepare(query)
	_, err = stmt.Exec(mdl.ToAddress, mdl.Subject, mdl.Body, mdl.TimePeriod, mdl.Status, mdl.Attempts, mdl.Reason)
	defer stmt.Close()

	return err
}
func (m *mysqlRepo) UpdateFailedEmails(mdl *cmnmdl.Email) (err error) {

	query := "UPDATE emails SET TimePeriod = ?,Status = ?,Attempts =? ,Reason=? WHERE idEmails = ?;"
	stmt, _ := m.Conn.Prepare(query)
	_, err = stmt.Exec(mdl.TimePeriod, mdl.Status, mdl.Attempts, mdl.Reason, mdl.IDEmails)
	defer stmt.Close()

	return err
}
func (m *mysqlRepo) DeleteFailedEmails(mdl *cmnmdl.Email) (err error) {

	query := "delete from emails WHERE idEmails = ?;"
	stmt, _ := m.Conn.Prepare(query)
	_, err = stmt.Exec(mdl.TimePeriod, mdl.Status, mdl.Attempts, mdl.IDEmails)
	defer stmt.Close()

	return err
}

//RetryFailedmails  ..
func (m *mysqlRepo) RetryFailedmails() {
	var err error
	ListEmails := make([]*cmnmdl.Email, 0)
	for {
		select {
		case <-time.After(time.Hour):
			ListEmails, err = m.GetFailedMails()
			if err != nil {
				fmt.Println("failed in retrying mails")
			}
			for _, itm := range ListEmails {
				if itm.TimePeriod == 1 {
					go m.SendEmail(itm, true)
				}
			}
		case <-time.After(12 * time.Hour):
			for _, itm := range ListEmails {
				if itm.TimePeriod == 12 {
					go m.SendEmail(itm, true)
				}
			}
		case <-time.After(24 * time.Hour):
			for _, itm := range ListEmails {
				if itm.TimePeriod == 24 {
					go m.SendEmail(itm, true)
				}
			}
		}
	}
}

func (m *mysqlRepo) ITasset_services_Insert(ctx context.Context, itm *itassetmdl.ITasset_services) error {
	qry := "INSERT INTO itasset_services (ITAssetID,Expected_Start_Date,Expected_End_Date,Actual_Start_Date,"
	qry += "	Actual_End_Date,ServiceBy_Type,ServiceBy_EmpID,ServiceBy_VendorID,Service_Type, Status,Description,Is_Asset_UnAvailable"
	qry += " ,CreatedBy) VALUES (?,?,?,?, ?,?,?,?, ?,?,?,? , ?); "
	stmt, err := m.Conn.PrepareContext(ctx, qry)
	if err != nil {
		return err
	}
	if itm.Expected_Start_Date == nil { //start
		t := time.Now()
		tm := t.Format("2006-01-02 15:04:05")
		itm.Actual_Start_Date = &tm
		start := 1
		itm.Status = &start
	} else { //schedule
		schedule := 2
		itm.Status = &schedule
	}
	_, err = stmt.Exec(itm.ITAssetID, itm.Expected_Start_Date, itm.Expected_End_Date, itm.Actual_Start_Date,
		itm.Actual_End_Date, itm.ServiceBy_Type, itm.ServiceBy_EmpID, itm.ServiceBy_VendorID, itm.Service_Type, itm.Status, itm.Description, itm.Is_Asset_UnAvailable, itm.CreatedBy)
	if err == nil && *itm.Is_Asset_UnAvailable == 1 && itm.Expected_Start_Date == nil {
		stmt1, err := m.Conn.Prepare("update itassets set ITAssetStatus = 4  where idITAssets=?")
		if err != nil {
			return err
		}
		_, err = stmt1.Exec(*itm.ITAssetID)
	}

	return err
}
func (m *mysqlRepo) ITasset_services_start_Update(ctx context.Context, itm *itassetmdl.ITasset_services) error {
	qry := "update itasset_services set Actual_Start_Date=?,Status=1 where idITAsset_Services=?;"
	stmt, err := m.Conn.PrepareContext(ctx, qry)
	if err != nil {
		return err
	}
	t := time.Now()
	tm := t.Format("2006-01-02 15:04:05")
	itm.Actual_Start_Date = &tm

	_, err = stmt.Exec(itm.Actual_Start_Date, itm.IDITAsset_Services)

	return err
}
func (m *mysqlRepo) ITasset_services_Complete_Update(ctx context.Context, itm *itassetmdl.ITasset_services) error {
	qryA := "update itassets set ITAssetStatus=1 where idITAssets = (select distinct ITAssetID from itasset_services where Is_Asset_UnAvailable=1 and Status=1 and Expected_Start_Date < now() or Actual_Start_Date < now() and  ITAssetID=? );"

	qry := "update itasset_services set Actual_End_Date=?,Status=3,Cost=?,Comments=? where idITAsset_Services=?"

	txn, err := m.Conn.Begin()
	stmtA, err1 := txn.PrepareContext(ctx, qryA)
	stmtB, err2 := txn.PrepareContext(ctx, qry)

	_, err4 := stmtA.Exec(itm.ITAssetID)
	_, err3 := stmtB.Exec(itm.Actual_End_Date, itm.Cost, itm.Comments, itm.IDITAsset_Services)

	defer func() {
		if err != nil || err1 != nil || err2 != nil || err3 != nil || err4 != nil {
			txn.Rollback()
			return
		}
		err = txn.Commit()
	}()
	return err
}

func (m *mysqlRepo) ITasset_services_Extend_Update(ctx context.Context, itm *itassetmdl.ITasset_services) error {
	qry := "update itasset_services set Actual_End_Date=? where idITAsset_Services=?"
	stmt, err := m.Conn.PrepareContext(ctx, qry)
	if err != nil {
		return err
	}
	_, err = stmt.Exec(itm.Actual_End_Date, itm.IDITAsset_Services)

	return err
}

//GetITAssetservices_List ..
func (m *mysqlRepo) GetITAssetservices_List(ctx context.Context, _ITAssetID int) ([]*itassetmdl.ITasset_services, error) {
	selDB, err := m.Conn.QueryContext(ctx, "call sp_itasset_services_List(?)", _ITAssetID)
	if err != nil {
		panic(err.Error())
	}

	res := make([]*itassetmdl.ITasset_services, 0)
	for selDB.Next() {
		its := new(itassetmdl.ITasset_services)
		vnd := new(cmnmdl.Vendors)
		emp := new(cmnmdl.Employees)
		it := new(itassetmdl.ITAssetModel)
		sct := new(itassetmdl.Service_type)
		scs := new(itassetmdl.Service_status)
		emp_crtdby := new(cmnmdl.Employees)
		err = selDB.Scan(&its.IDITAsset_Services, &its.ITAssetID, &its.Expected_Start_Date, &its.Expected_End_Date, &its.Actual_Start_Date, &its.Actual_End_Date,
			&its.ServiceBy_Type, &its.ServiceBy_EmpID, &its.ServiceBy_VendorID, &its.Service_Type, &its.Status, &its.Description, &its.Is_Asset_UnAvailable,
			&its.Cost, &its.Comments, &its.CreatedOn, &its.CreatedBy,
			&vnd.Idvendors, &vnd.Name, &vnd.Description, &vnd.Websites, &vnd.Address, &vnd.Email, &vnd.ContactPersonName, &vnd.Phone,
			&emp.IDEmployees, &emp.FirstName, &emp.LastName, &emp.Email, &emp.Mobile,
			&it.IDITAssets, &it.ITAssetName, &it.ITAssetModel, &it.ITAssetIdentificationNo, &it.ITAssetDescription,
			&sct.IDService_type, &sct.TypeName, &scs.StatusName, &scs.IDServiceStatus,
			&emp_crtdby.IDEmployees, &emp_crtdby.FirstName, &emp_crtdby.LastName)
		its.Vendors = vnd
		its.Employees = emp
		its.ITAssetModel = it
		its.Service_type = sct
		its.Service_status = scs
		its.Employees_CreatedBy = emp_crtdby
		if err != nil {
			return nil, err

		}
		res = append(res, its)
	}
	if err != nil {
		return nil, err

	}
	defer selDB.Close()
	return res, nil
}
func (m *mysqlRepo) ITAsset_Service_Request(ctx context.Context, itm *itassetmdl.ITAsset_service_request) error {
	UserQry := "SELECT  emp.IdEmployees  from employees emp join users usr on usr.EmployeeId=emp.IdEmployees "
	UserQry += " where Location=? and role=2 limit 1 "
	selDB := m.Conn.QueryRowContext(ctx, UserQry, itm.LocationID)

	err := selDB.Scan(&itm.Admin_EmpID)
	if err != nil {
		return err
	}
	status := "Requested"
	itm.Issue_Status = &status
	qry := "INSERT INTO itasset_service_request (DateOfReq,ITAssetID,Admin_EmpID,Emp_EmpID,Issue_Description,Issue_Status) VALUES(NOW(),?,?,?,?,?);"
	stmt, err := m.Conn.PrepareContext(ctx, qry)
	if err != nil {
		return err
	}
	_, err = stmt.Exec(itm.ITAssetID, itm.Admin_EmpID, itm.Emp_EmpID, itm.Issue_Description, itm.Issue_Status)
	if err != nil {

		Adminmail, AdminName := m.GetMailByUserID(itm.Admin_EmpID, nil)
		EmpMail, EmpName := m.GetMailByUserID(itm.Emp_EmpID, nil)
		Subject := "ITAsset issue raised from " + AdminName + " (" + EmpMail + " )"
		Msg := "" + EmpName + " raised issue regarding IT Asset <br />"
		Msg += "<br/><p>Please click below link to check</p>"

		email := cmnmdl.Email{
			ToAddress: Adminmail,
			Subject:   Subject,
			Body:      Msg,
		}
		go m.SendEmail(&email, false)
	}
	return err
}

func (m *mysqlRepo) ITAsset_Service_Request_Resolve(ctx context.Context, itm *itassetmdl.ITAsset_service_request) error {
	qry := "update itasset_service_request set AdminComments=?,ModifiedOn=now(),Issue_Status='Resolved' where iditasset_service_request=?;"
	stmt, err := m.Conn.PrepareContext(ctx, qry)
	if err != nil {
		return err
	}
	_, err = stmt.Exec(itm.AdminComments, itm.IDitasset_service_request)
	if itm.ITAssetID != nil {
		qryA := "call sp_ITAssetService_Request_ApproveByAsst(?,?,?,?)"
		stmt, err := m.Conn.PrepareContext(ctx, qryA)
		if err != nil {
			return err
		}
		_, err = stmt.Exec(itm.ITAssetID, itm.OldITAssetID, itm.Emp_EmpID, itm.Admin_EmpID)

	}
	return err
}
func (m *mysqlRepo) GetITAsset_service_request_List(ctx context.Context, EmpID int) ([]*itassetmdl.ITAsset_service_request, error) {
	selDB, err := m.Conn.QueryContext(ctx, "call sp_itasset_service_request_List(?)", EmpID)
	if err != nil {
		panic(err.Error())
	}

	res := make([]*itassetmdl.ITAsset_service_request, 0)
	for selDB.Next() {
		isr := new(itassetmdl.ITAsset_service_request)
		it := new(itassetmdl.ITAssetModel)
		EmpEmp := new(cmnmdl.Employees)
		AdmnEmp := new(cmnmdl.Employees)
		err = selDB.Scan(&isr.IDitasset_service_request, &isr.DateOfReq, &isr.ITAssetID, &isr.Admin_EmpID, &isr.Emp_EmpID, &isr.Issue_Description,
			&isr.Issue_Status, &isr.AdminComments,
			&it.IDITAssets, &it.ITAssetName, &it.ITAssetGroup, &it.ITAssetIdentificationNo,
			&EmpEmp.IDEmployees, &EmpEmp.FirstName, &EmpEmp.LastName, &EmpEmp.Email, &EmpEmp.Mobile,
			&AdmnEmp.IDEmployees, &AdmnEmp.FirstName, &AdmnEmp.LastName, &AdmnEmp.Email, &AdmnEmp.Mobile)
		isr.Admin = AdmnEmp
		isr.Employee = EmpEmp
		isr.ITAssets = it
		if err != nil {
			panic(err.Error())
		}
		res = append(res, isr)
	}
	if err != nil {
		return nil, err

	}
	defer selDB.Close()
	return res, nil
}

func (m *mysqlRepo) GetITAsset_Retired(ctx context.Context, LocID int, EmpID int) ([]*itassetmdl.ITAssetModel, error) {
	selDB, err := m.Conn.QueryContext(ctx, "call sp_GetITAssets_Retired(?)", LocID)
	if err != nil {
		panic(err.Error())
	}

	res := make([]*itassetmdl.ITAssetModel, 0)
	for selDB.Next() {
		mdl := new(itassetmdl.ITAssetModel)
		rt := &itassetmdl.Retire{}
		loc := &cmnmdl.Locations{}
		ven := &cmnmdl.Vendors{}
		RetiredBy := &cmnmdl.Employees{}
		err = selDB.Scan(&mdl.IDITAssets, &mdl.ITAssetName, &mdl.ITAssetGroup, &mdl.Itassetgroupname, &mdl.ITAssetModel, &mdl.ITAssetSerialNo, &mdl.ITAssetIdentificationNo, &mdl.ITAssetDescription,
			&mdl.ITAssetPrice, &mdl.ITAssetWarranty, &mdl.ITAssetStatus, &mdl.ITAssetFileUpld, &mdl.ITAssetImg, &mdl.RecordStatus,
			&mdl.Vendor, &mdl.Location, &rt.Reason, &rt.Commnets, &rt.RetireDate, &mdl.Statusname,
			&loc.Name, &loc.Address1, &loc.Address2, &loc.State, &loc.Zipcode,
			&ven.Name, &ven.Websites, &ven.Email, &ven.Phone,
			&RetiredBy.IDEmployees, &RetiredBy.FirstName, &RetiredBy.LastName)
		mdl.LocationData = loc
		mdl.VendorData = ven
		mdl.RetireData = rt
		mdl.Employees = RetiredBy
		if err != nil {
			panic(err.Error())
		}
		res = append(res, mdl)
	}
	if err != nil {
		return nil, err

	}
	defer selDB.Close()
	return res, nil
}

func (m *mysqlRepo) Get_ITAssetsHistory_ByAsset(ctx context.Context, AssetID int) ([]*itassetmdl.ITAssetModel, error) {
	query := "call sp_ITAssetHistorybyAsset(?)"
	selDB, err := m.Conn.QueryContext(ctx, query, AssetID)
	if err != nil {
		fmt.Println(err.Error())
		return nil, err
	}
	res := make([]*itassetmdl.ITAssetModel, 0)
	for selDB.Next() {
		mdl := new(itassetmdl.ITAssetModel)
		CrtdBy := new(cmnmdl.Employees)

		err := selDB.Scan(&mdl.IDitassets_history, &mdl.IDITAssets, &mdl.CreatedOn, &mdl.CreatedBy, &mdl.ActionePerformed, &mdl.MainTblID, &mdl.ITAssetName, &mdl.ITAssetIdentificationNo,
			&CrtdBy.FirstName, &CrtdBy.LastName)

		mdl.Employees = CrtdBy
		if err != nil {
			fmt.Println(err.Error())
			return nil, err
		}

		res = append(res, mdl)
	}
	return res, nil
}

func (m *mysqlRepo) ITAssetReq_ApprovalStatusList(ctx context.Context, ReqGroupID int) ([]*itassetmdl.ITAssetRequestApproval, error) {
	query := "SELECT Aprvr.FirstName,ira.ITAssetReqGroupID,ira.iditasset_Req_approvals,  ira.RoleID,ira.ApproverID,ira.Grade,ira.Status,ira.Comments,ira.CreatedOn,ira.ActionedOn "
	query += ",rl.RoleName	from itasset_req_approvals ira  "
	query += "left join employees Aprvr on ira.ApproverID=Aprvr.IdEmployees "
	query += "	left join roles rl on rl.idRoles=ira.RoleID "
	query += "where ira.itassetReqGroupID= ?; "
	selDB, err := m.Conn.QueryContext(ctx, query, ReqGroupID)
	if err != nil {
		fmt.Println(err.Error())
		return nil, err
	}
	res := make([]*itassetmdl.ITAssetRequestApproval, 0)
	for selDB.Next() {
		mdl := new(itassetmdl.ITAssetRequestApproval)
		apprvr := new(cmnmdl.Employees)

		err := selDB.Scan(&apprvr.FirstName, &mdl.ITAssetReqGroupID, &mdl.IDitasset_Req_approvals, &mdl.RoleID, &mdl.ApproverID, &mdl.Grade, &mdl.Status, &mdl.Comments, &mdl.CreatedOn,
			&mdl.ActionedOn, &mdl.RoleName)
		mdl.Employee = apprvr
		if err != nil {
			fmt.Println(err.Error())
			return nil, err
		}

		res = append(res, mdl)
	}
	return res, nil
}

func (m *mysqlRepo) GetITAssetReqListByEmp(ctx context.Context, EmpID int) ([]*itassetmdl.ITAssetReqList, error) {
	selDB, err := m.Conn.QueryContext(ctx, "call sp_ITAssetReqListByEmp(?);", EmpID)
	if err != nil {
		panic(err.Error())
	}

	res := make([]*itassetmdl.ITAssetReqList, 0)
	for selDB.Next() {
		mdl := new(itassetmdl.ITAssetReqList)
		ITAssetRequest := new(itassetmdl.ITAssetRequest)
		ira := new(itassetmdl.ITAssetRequestApproval)
		Requester := new(cmnmdl.Employees)
		err = selDB.Scan(&ITAssetRequest.AssetType, &ITAssetRequest.ReqGroupID, &ITAssetRequest.RequestedBy,
			&ITAssetRequest.ReqStatus, &ITAssetRequest.Priority, &ITAssetRequest.RequestedOn, &ITAssetRequest.AssetID, &ITAssetRequest.Description,
			&Requester.FirstName,
			&ira.RoleID, &ira.ApproverID, &ira.Grade, &ira.Status, &ira.Comments, &ira.CreatedOn, &ira.ActionedOn)

		ITAssetRequest.ITAssetRequestApproval = ira
		mdl.Requester = Requester
		mdl.ITAssetRequest = ITAssetRequest
		if err != nil {
			panic(err.Error())
		}
		res = append(res, mdl)
	}
	if err != nil {
		return nil, err

	}
	defer selDB.Close()
	return res, nil
}

func (m *mysqlRepo) ITAssetDelete(ctx context.Context, AssetID int) error {
	query := "call sp_ITAssetDelete(?);"
	stmt, err := m.Conn.PrepareContext(ctx, query)
	_, err = stmt.ExecContext(ctx, AssetID)
	defer stmt.Close()
	return err
}

func (m *mysqlRepo) GetITAssetToCheckoutToITasset(ctx context.Context, LocID int, AssetID int) ([]*itassetmdl.ITAssetModel, error) {
	qry := " SELECT idITAssets,ITAssetName,ITAssetSerialNo,ITAssetIdentificationNo FROM  " +
		" itassets where ITAssetStatus=1 and idITAssets !=? and Location=? and RecordStatus='Active' ;"
	selDB, err := m.Conn.QueryContext(ctx, qry, AssetID, LocID)
	if err != nil {
		panic(err.Error())
	}
	res := make([]*itassetmdl.ITAssetModel, 0)
	for selDB.Next() {
		mdl := new(itassetmdl.ITAssetModel)
		err = selDB.Scan(&mdl.IDITAssets, &mdl.ITAssetName, &mdl.ITAssetSerialNo, &mdl.ITAssetIdentificationNo)
		if err != nil {
			panic(err.Error())
		}
		res = append(res, mdl)
	}
	if err != nil {
		return nil, err

	}
	defer selDB.Close()
	return res, nil
}
