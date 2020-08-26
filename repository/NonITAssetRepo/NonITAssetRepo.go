package NonITAssetRepo

import (
	"bytes"
	"context"
	"database/sql"
	"errors"
	"html/template"
	"log"
	"net/smtp"
	"strconv"
	"strings"

	"github.com/premsynfosys/AMS_API/models/cmnmdl"
	"github.com/premsynfosys/AMS_API/models/nonitassets_mdl"
)

//NewSQLRepo ..
func NewSQLRepo(con *sql.DB) NonITAssetIntfc {
	return &mysqlRepo{
		Conn: con,
	}
}

type mysqlRepo struct {
	Conn *sql.DB
}

func (m *mysqlRepo) GetNonITAssetMasterLists(ctx context.Context) ([]*nonitassets_mdl.NonITAssets_Master, error) {
	qry := " select idNonITAssets_Master,NonITAssets_Name,NonITAssets_GroupID,NonITAssets_SubGroupID, "
	qry += " Description,Created_On,Created_By,Modified_On,Modified_By,Record_Status,nig.NonITAssets_GroupName,nig.idNonITAssets_Groups "
	qry += " from  nonitassets_master nim join nonitassets_groups  nig on nig.idNonITAssets_Groups =nim.NonITAssets_GroupID "
	qry += " order by idNonITAssets_Master desc ;"
	selDB, err := m.Conn.QueryContext(ctx, qry)
	if err != nil {
		panic(err.Error())
	}

	res := make([]*nonitassets_mdl.NonITAssets_Master, 0)
	for selDB.Next() {
		mdl := &nonitassets_mdl.NonITAssets_Master{}
		grp := nonitassets_mdl.NonITAssets_Groups{}
		err = selDB.Scan(&mdl.IDNonITAssets_Master, &mdl.NonITAssets_Name, &mdl.NonITAssets_GroupID, &mdl.NonITAssets_SubGroupID, &mdl.Description,
			&mdl.Created_On, &mdl.Created_By, &mdl.Modified_On, &mdl.Modified_By, &mdl.Record_Status,
			&grp.NonITAssets_GroupName, &grp.IDNonITAssets_Groups)

		if err != nil {
			panic(err.Error())
		}
		mdl.NonITAssets_Groups = &grp
		res = append(res, mdl)
	}
	if err != nil {
		return nil, err

	}
	defer selDB.Close()
	return res, nil
}

func (m *mysqlRepo) CreateNonITAsset(ctx context.Context, mdl *nonitassets_mdl.NonITAssets) error {
	var query strings.Builder
	query.WriteString(" INSERT INTO nonitassets (NonITAssets_Master_ID,ModelNo,Description,Img,TotalQnty,AvailableQnty,InUseQnty,ThresholdQnty, ")
	query.WriteString(" ReOrderStockPrice,ReOrderQuantity,StatusID,LocationID,Created_By, ")
	query.WriteString("	CustomFields1,CustomFields1Value,CustomFields1Type,CustomFields2,CustomFields2Value,CustomFields2Type, ")
	query.WriteString("CustomFields3,CustomFields3Value,CustomFields3Type,CustomFields4,CustomFields4Value,CustomFields4Type, ")
	query.WriteString("CustomFields5,CustomFields5Value,CustomFields5Type) VALUES (?,?,?,?, ?,?,?,?,?,   ?,?,?,?,?,  ?,?,?,?,?,  ?,?,?,?,?, ?,?,?,?); ")
	txn, err := m.Conn.Begin()
	stmt, err := txn.PrepareContext(ctx, query.String())
	if err != nil {
		return err
	}
	res, err1 := stmt.ExecContext(ctx, &mdl.NonITAssets_Master_ID, &mdl.ModelNo, &mdl.Description, &mdl.Img, &mdl.TotalQnty,
		&mdl.AvailableQnty, &mdl.InUseQnty, &mdl.ThresholdQnty, &mdl.ReOrderStockPrice, &mdl.ReOrderQuantity, &mdl.StatusID, &mdl.LocationID, &mdl.Created_By,
		&mdl.CustomFields1, &mdl.CustomFields1Value, &mdl.CustomFields1Type, &mdl.CustomFields2, &mdl.CustomFields2Value, &mdl.CustomFields2Type,
		&mdl.CustomFields3, &mdl.CustomFields3Value, &mdl.CustomFields3Type, &mdl.CustomFields4, &mdl.CustomFields4Value, &mdl.CustomFields4Type,
		&mdl.CustomFields5, &mdl.CustomFields5Value, &mdl.CustomFields5Type)

	defer stmt.Close()

	if err1 != nil {
		return err
	}
	nonitassets, err2 := res.LastInsertId()
	Oprtns := mdl.NonITAssets_Oprtns
	*Oprtns.NonITAsset_ID = int(nonitassets)
	// const shortForm = "2006-01-02"
	// ss := Oprtns.Warranty
	// Warranty, _ := time.Parse(shortForm, *ss)
	//Warranty, _ := utils.CustomDateFormate(*Oprtns.Warranty)

	qry := "INSERT INTO nonitassets_oprtns(NonITAsset_ID,Quantity,Warranty,UnitPrice,VendorID,OrderedBy,Comments,Created_By,StatusID) "
	qry += " VALUES (?,?,?, ?,?,?, ?,?,?);"
	stmtA, err3 := txn.PrepareContext(ctx, qry)
	_, err4 := stmtA.ExecContext(ctx, &Oprtns.NonITAsset_ID, &Oprtns.Quantity, &Oprtns.Warranty, &Oprtns.UnitPrice, &Oprtns.VendorID, &Oprtns.OrderedBy,
		&Oprtns.Comments, &Oprtns.Created_By, &Oprtns.StatusID)
	if err != nil || err1 != nil || err2 != nil || err3 != nil || err4 != nil {
		txn.Rollback()
		return errors.New("failed")
	} else {
		err = txn.Commit()
	}

	return err
}

func (m *mysqlRepo) GetNonITAssetLists(ctx context.Context, LocID int) ([]*nonitassets_mdl.NonITAssets, error) {
	qry := " call sp_NonITAssetList(?) "

	selDB, err := m.Conn.QueryContext(ctx, qry, LocID)
	if err != nil {
		panic(err.Error())
	}

	res := make([]*nonitassets_mdl.NonITAssets, 0)
	for selDB.Next() {
		mdl := &nonitassets_mdl.NonITAssets{}
		nim := nonitassets_mdl.NonITAssets_Master{}
		nig := nonitassets_mdl.NonITAssets_Groups{}
		loc := cmnmdl.Locations{}
		st := cmnmdl.Status{}
		err = selDB.Scan(&mdl.IDNonITAsset, &mdl.NonITAssets_Master_ID, &mdl.IdentificationNo, &mdl.ModelNo, &mdl.Description,
			&mdl.Img, &mdl.TotalQnty, &mdl.AvailableQnty, &mdl.InUseQnty, &mdl.ThresholdQnty, &mdl.ReOrderStockPrice,
			&mdl.ReOrderQuantity, &mdl.StatusID, &mdl.LocationID, &mdl.Created_On,
			&nim.IDNonITAssets_Master, &nim.NonITAssets_Name, &nig.IDNonITAssets_Groups, &nig.NonITAssets_GroupName,
			&loc.Name, &loc.Address1, &loc.Address2, &loc.State, &loc.Zipcode, &st.IDStatus, &st.StatusName)
		if err != nil {
			panic(err.Error())
		}
		mdl.NonITAssets_Master = &nim
		mdl.NonITAssets_Groups = &nig
		mdl.Locations = &loc
		mdl.Status = &st
		res = append(res, mdl)
	}
	if err != nil {
		return nil, err

	}
	defer selDB.Close()
	return res, nil
}
func (m *mysqlRepo) GetNonITAssetList_BY_AssetID(ctx context.Context, AssetID int) (*nonitassets_mdl.NonITAssets, error) {
	qry := " call sp_NonITAssetListByAsset(?) "
	selDB := m.Conn.QueryRowContext(ctx, qry, AssetID)

	mdl := &nonitassets_mdl.NonITAssets{}
	nim := nonitassets_mdl.NonITAssets_Master{}
	nig := nonitassets_mdl.NonITAssets_Groups{}
	loc := cmnmdl.Locations{}
	st := cmnmdl.Status{}
	err := selDB.Scan(&mdl.IDNonITAsset, &mdl.NonITAssets_Master_ID, &mdl.IdentificationNo, &mdl.ModelNo, &mdl.Description,
		&mdl.Img, &mdl.TotalQnty, &mdl.AvailableQnty, &mdl.InUseQnty, &mdl.ThresholdQnty, &mdl.ReOrderStockPrice,
		&mdl.ReOrderQuantity, &mdl.StatusID, &mdl.LocationID, &mdl.Created_On,
		&nim.IDNonITAssets_Master, &nim.NonITAssets_Name, &nig.IDNonITAssets_Groups, &nig.NonITAssets_GroupName,
		&loc.Name, &loc.Address1, &loc.Address2, &loc.State, &loc.Zipcode, &st.IDStatus, &st.StatusName)
	if err != nil {
		panic(err.Error())
	}
	mdl.NonITAssets_Master = &nim
	mdl.NonITAssets_Groups = &nig
	mdl.Locations = &loc
	mdl.Status = &st

	if err != nil {
		return nil, err

	}
	return mdl, nil
}

func (m *mysqlRepo) NonITAsset_Edit(ctx context.Context, mdl *nonitassets_mdl.NonITAssets) error {
	query := "UPDATE nonitassets SET NonITAssets_Master_ID = ?,ModelNo = ?,Description = ?,Img =?,ThresholdQnty =?,ReOrderStockPrice = ?, "
	query += " ReOrderQuantity = ?,LocationID = ?,Modified_On = now(),Modified_By = ? ,"
	query += " CustomFields1 = ?,CustomFields1Value = ?,CustomFields1Type = ?,CustomFields2 = ?,CustomFields2Value = ?,CustomFields2Type = ?,CustomFields3 = ?,CustomFields3Value = ?,CustomFields3Type = ?,CustomFields4 = ?,CustomFields4Value = ?,CustomFields4Type = ?,CustomFields5 = ?,CustomFields5Value = ?,CustomFields5Type = ? "
	query += " WHERE IDNonITAsset = ?; "
	stmt, err := m.Conn.PrepareContext(ctx, query)
	if err != nil {
		return err
	}
	_, err = stmt.ExecContext(ctx, mdl.NonITAssets_Master_ID, mdl.ModelNo, mdl.Description, mdl.Img, mdl.ThresholdQnty, mdl.ReOrderStockPrice,
		mdl.ReOrderQuantity, mdl.LocationID, mdl.Modified_By,
		mdl.CustomFields1, mdl.CustomFields1Value, mdl.CustomFields1Type, mdl.CustomFields2, mdl.CustomFields2Value, mdl.CustomFields2Type,
		mdl.CustomFields3, mdl.CustomFields3Value, mdl.CustomFields3Type, mdl.CustomFields4, mdl.CustomFields4Value, mdl.CustomFields4Type,
		mdl.CustomFields5, mdl.CustomFields5Value, mdl.CustomFields5Type, mdl.IDNonITAsset)
	defer stmt.Close()

	if err != nil {
		return err
	}
	return err
}

func (m *mysqlRepo) PostNonITAssets_oprtns_AddStock(mdl *nonitassets_mdl.NonITAssets_Oprtns) (err error) {
	var oprtnsquery strings.Builder
	oprtnsquery.WriteString("insert into nonitassets_oprtns(NonITAsset_ID, Quantity, Warranty, UnitPrice, ")
	oprtnsquery.WriteString(" VendorID, OrderedBy, Comments, Created_By, StatusID) values (?,?,?,  ?,?,?,  ?,?,?);")
	var query strings.Builder
	query.WriteString("update nonitassets set TotalQnty=TotalQnty+?,AvailableQnty=AvailableQnty+? where IDNonITAsset=?;")

	var err1, err2, err3 error
	txn, err := m.Conn.Begin()
	stmt1, err := txn.Prepare(oprtnsquery.String())
	stmt2, err := txn.Prepare(query.String())
	if err != nil {
		return err
	}
	_, err1 = stmt1.Exec(mdl.NonITAsset_ID, mdl.Quantity, mdl.Warranty, mdl.UnitPrice, mdl.VendorID, mdl.OrderedBy, mdl.Comments, mdl.Created_By, mdl.StatusID)

	_, err2 = stmt2.Exec(mdl.Quantity, mdl.Quantity, mdl.NonITAsset_ID)
	defer func() {
		if err != nil || err1 != nil || err2 != nil || err3 != nil {
			txn.Rollback()
			return
		}
		err = txn.Commit()
	}()
	return err
}
func (m *mysqlRepo) PostNonITAssets_oprtns_Removestock(mdl *nonitassets_mdl.NonITAssets_Oprtns) (err error) {

	var oprtnsquery strings.Builder
	oprtnsquery.WriteString("insert into nonitassets_oprtns(NonITAsset_ID, Quantity, ")
	oprtnsquery.WriteString("OrderedBy, Comments, Created_By, StatusID) values (?,?,?,  ?,?,?);")

	var query strings.Builder
	query.WriteString("update nonitassets set TotalQnty=TotalQnty-?,AvailableQnty=AvailableQnty-? where IDNonITAsset=?;")
	var err1, err2, err3 error
	txn, err := m.Conn.Begin()
	stmt1, err := txn.Prepare(oprtnsquery.String())
	stmt2, err := txn.Prepare(query.String())
	if err != nil {
		return err
	}
	_, err1 = stmt1.Exec(mdl.NonITAsset_ID, mdl.Quantity, mdl.OrderedBy, mdl.Comments, mdl.Created_By, mdl.StatusID)
	_, err2 = stmt2.Exec(mdl.Quantity, mdl.Quantity, mdl.NonITAsset_ID)

	if err != nil || err1 != nil || err2 != nil || err3 != nil {
		txn.Rollback()
		return errors.New("failed")
	} else {
		err = txn.Commit()
	}
	return err
}

func (m *mysqlRepo) PostNonITAssets_CheckOut(mdl *nonitassets_mdl.NonITAssets_checkout_checkin) (err error) {

	oprtnsquery := "insert into nonitassets_checkout_checkin(NonITAsset_ID,CheckedOutTo,CheckedOutUserID,CheckedOutPlace,"
	oprtnsquery += " CheckedOutDate,CheckOut_Qnty,InUse,CheckOut_Comments,Created_By,CheckOut_By) values (?,?,?,?,?,?,  ?,?,?,?) ;"

	query := "update nonitassets set InUseQnty=InUseQnty+?,AvailableQnty=AvailableQnty-? where IDNonITAsset=?;"
	var err1, err2 error
	txn, err := m.Conn.Begin()
	stmt1, err := txn.Prepare(oprtnsquery)
	stmt2, err := txn.Prepare(query)
	if err != nil {
		return err
	}
	_, err1 = stmt1.Exec(mdl.NonITAsset_ID, mdl.CheckedOutTo, mdl.CheckedOutUserID, mdl.CheckedOutPlace, mdl.CheckedOutDate, mdl.CheckOut_Qnty, mdl.CheckOut_Qnty, mdl.CheckOut_Comments, mdl.Created_By, mdl.CheckOut_By)
	_, err2 = stmt2.Exec(mdl.CheckOut_Qnty, mdl.CheckOut_Qnty, mdl.NonITAsset_ID)
	if err != nil || err1 != nil || err2 != nil {
		txn.Rollback()
		return errors.New("failed")
	}

	err = txn.Commit()
	dt, errq := m.GetThresholdReachedStockNonITAssetsByID(*mdl.NonITAsset_ID)
	if errq == nil {
		Subject := "Stock Reached Threshold levels"
		mailHtmlbody := "<p>Hai " + *dt.FirstName + "</p><p>Below stocks are reached Threshold levels</p>"
		mailHtmlbody += "<table   border='1' width='50%'> <thead><th>Asset Name</th><th>Identification No</th><th>Available Quantity</th><th>Threshold Quantity</th></thead><tbody>"
		mailHtmlbody += "<tr>"
		mailHtmlbody += "<td>" + *dt.AssetName + "</td>"
		mailHtmlbody += "<td>" + *dt.IdentificationNo + "</td>"
		mailHtmlbody += "<td>" + strconv.Itoa(*dt.AvailableQnty) + "</td>"
		mailHtmlbody += "<td>" + strconv.Itoa(*dt.ThresholdQnty) + "</td>"
		mailHtmlbody += "</tr>"
		mailHtmlbody += "</tbody></table>"
		emailAprvr := cmnmdl.Email{
			ToAddress: *dt.Email,
			Subject:   Subject,
			Body:      mailHtmlbody,
		}
		log.Println(mailHtmlbody)
		go m.SendEmail(&emailAprvr, false)
	}
	return err
}

func (m *mysqlRepo) GetThresholdReachedStockNonITAssetsByID(AssetID int) (*cmnmdl.ThresholdAlert, error) {
	query := " select  nim.NonITAssets_Name,nit.IdentificationNo,emp.FirstName,emp.Email,nit.AvailableQnty,nit.ThresholdQnty from nonitassets nit  "
	query += " join employees emp on emp.Location=nit.LocationID "
	query += " join nonitassets_master nim on nim.idNonITAssets_Master= nit.NonITAssets_Master_ID "
	query += " join users usr on usr.EmployeeId=emp.IdEmployees where usr.Role=2 and  nit.ThresholdQnty >= nit.AvailableQnty and nit.IDNonITAsset=? "
	res := cmnmdl.ThresholdAlert{}
	selDB := m.Conn.QueryRow(query, AssetID)
	err := selDB.Scan(&res.AssetName, &res.IdentificationNo, &res.FirstName, &res.Email, &res.AvailableQnty, &res.ThresholdQnty)

	return &res, err

}

func (m *mysqlRepo) CheckDuplicateNonITAssetEntry(ctx context.Context, MasterID int, LocID int) (*int, error) {
	query := "select NonITAssets_Master_ID from nonitassets where NonITAssets_Master_ID=? and LocationID=? and RecordStatus='Active' ;"
	selDB := m.Conn.QueryRowContext(ctx, query, &MasterID, &LocID)
	var NonITAssets_Master_ID *int
	err := selDB.Scan(&NonITAssets_Master_ID)
	if err != nil {
		if err == sql.ErrNoRows {
			return nil, nil
		} else {
			return nil, err
		}

	} else {
		return NonITAssets_Master_ID, nil
	}

}

func (m *mysqlRepo) Check_Unique_NonITAsset(ctx context.Context, name string) (*string, error) {
	query := "SELECT NonITAssets_Name FROM nonitassets_master where NonITAssets_Name= ?; "
	selDB := m.Conn.QueryRowContext(ctx, query, &name)
	var str *string
	err := selDB.Scan(&str)
	if err != nil {
		if err == sql.ErrNoRows {
			return nil, nil
		} else {
			return nil, err
		}

	} else {
		return str, nil
	}

}

func (m *mysqlRepo) NonITAssetemasterInsert(ctx context.Context, mdl *nonitassets_mdl.NonITAssets_Master) error {

	txn, _ := m.Conn.Begin()
	if *mdl.NonITAssets_GroupID == 0 {
		qryA := "insert into nonitassets_groups ( NonITAssets_GroupName) values(?)"
		stmtA, err := txn.Prepare(qryA)
		if err != nil {
			return err
		}
		res, err2 := stmtA.Exec(mdl.NonITAssets_GroupName)
		if err2 != nil {
			txn.Rollback()
			return err
		}
		id, _ := res.LastInsertId()
		*mdl.NonITAssets_GroupID = int(id)
	}
	qry := "insert into nonitassets_master ( NonITAssets_Name, NonITAssets_GroupID, Description, Created_On) values(?,?,?,now())"
	stmt, err := txn.Prepare(qry)
	if err != nil {
		return err
	}
	_, err1 := stmt.Exec(mdl.NonITAssets_Name, mdl.NonITAssets_GroupID, mdl.Description)
	if err1 != nil {
		txn.Rollback()
		return err
	}

	err = txn.Commit()

	return err
}

func (m *mysqlRepo) GetNonITAssetGroups(ctx context.Context) ([]*nonitassets_mdl.NonITAssets_Groups, error) {
	selDB, err := m.Conn.QueryContext(ctx, "SELECT idNonITAssets_Groups,NonITAssets_GroupName FROM nonitassets_groups;")
	if err != nil {
		panic(err.Error())
	}

	res := make([]*nonitassets_mdl.NonITAssets_Groups, 0)
	for selDB.Next() {
		emp := new(nonitassets_mdl.NonITAssets_Groups)
		err = selDB.Scan(&emp.IDNonITAssets_Groups, &emp.NonITAssets_GroupName)
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

func (m *mysqlRepo) GetNonITAssetOprtnListByID(ctx context.Context, IDNonITAsset int) ([]*nonitassets_mdl.NonITAssets, error) {
	selDB, err := m.Conn.QueryContext(ctx, "call sp_NonITAssetOprtnListByID(?)", IDNonITAsset)
	if err != nil {
		return nil, err
	}
	Listmdl := make([]*nonitassets_mdl.NonITAssets, 0)
	ConStatus := &cmnmdl.Status{}
	loc := &cmnmdl.Locations{}
	for selDB.Next() {
		mdl := nonitassets_mdl.NonITAssets{}
		item := new(nonitassets_mdl.NonITAssets_Oprtns)
		vdr := new(cmnmdl.Vendors)
		CopStatus := &cmnmdl.Status{}
		ConMst := &nonitassets_mdl.NonITAssets_Master{}
		err := selDB.Scan(&mdl.IDNonITAsset, &ConMst.IDNonITAssets_Master, &ConMst.NonITAssets_Name, &ConMst.NonITAssets_GroupID, &mdl.NonITAssets_Master_ID, &mdl.IdentificationNo, &mdl.ModelNo, &mdl.Description, &mdl.TotalQnty, &mdl.AvailableQnty,
			&mdl.InUseQnty, &mdl.ThresholdQnty,
			&mdl.ReOrderStockPrice, &mdl.ReOrderQuantity, &mdl.StatusID, &mdl.LocationID, &mdl.Created_On, &mdl.Modified_On, &mdl.Created_By, &mdl.Modified_By,
			&mdl.CustomFields1, &mdl.CustomFields1Value, &mdl.CustomFields1Type, &mdl.CustomFields2, &mdl.CustomFields2Value, &mdl.CustomFields2Type,
			&mdl.CustomFields3, &mdl.CustomFields3Value, &mdl.CustomFields3Type, &mdl.CustomFields4, &mdl.CustomFields4Value, &mdl.CustomFields4Type,
			&mdl.CustomFields5, &mdl.CustomFields5Value, &mdl.CustomFields5Type, &mdl.RecordStatus,
			&item.IDnonitassets_Oprtns, &item.NonITAsset_ID, &item.Quantity, &item.Warranty, &item.UnitPrice, &item.VendorID, &item.OrderedBy, &item.Comments, &item.Created_On, &item.Created_By, &item.StatusID,
			&vdr.Name, &vdr.Address, &vdr.Email, &vdr.Phone,
			&ConMst.NonITAssets_GroupName,
			&loc.Name, &loc.Address1, &loc.Address2, &loc.State, &loc.Zipcode, &ConStatus.StatusName, &CopStatus.StatusName, &item.CreatedByName)
		if err != nil {
			return nil, err
		}
		item.Vendor = vdr
		item.Status = *CopStatus
		mdl.Locations = loc
		mdl.Status = ConStatus
		mdl.NonITAssets_Oprtns = item
		mdl.NonITAssets_Master = ConMst
		Listmdl = append(Listmdl, &mdl)
	}

	return Listmdl, nil
}

func (m *mysqlRepo) CreateNonITAssetRequest(Listmdl []*nonitassets_mdl.NonITAssetRequest) (err error) {
	var ReqGroupID int
	err = m.Conn.QueryRow("SELECT ifnull(max(ReqGroupID),0)+1 FROM nonitassetrequest;").Scan(&ReqGroupID)
	query := " INSERT INTO nonitassetrequest(ReqGroupID,RequestedBy,AssetType,AssetID,Description,RequestedOn,Priority,ReqStatus) VALUES "
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

	Apprvlquery := " insert into nonitasset_req_approvals (nonitassetReqGroupID, RoleID, ApproverID, Grade, CreatedOn, Status) "
	Apprvlquery += "	values(?,?,?,?, now(),'Requested') "
	stmtApprvl, err4 := txn.Prepare(Apprvlquery)
	_, err5 := stmtApprvl.Exec(&ReqGroupID, &Listmdl[0].NonITAssetRequestApproval.RoleID, &Listmdl[0].NonITAssetRequestApproval.ApproverID,
		&Listmdl[0].NonITAssetRequestApproval.Grade)
	AprvrMail, AprvrName := m.GetMailByUserID(nil, Listmdl[0].NonITAssetRequestApproval.ApproverID)
	RcvrMail, RcvrName := m.GetMailByUserID(Listmdl[0].RequestedBy, nil)

	if err == nil {
		Subject := "NonITAsset(s) requested by - " + RcvrName + ""
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
func (m *mysqlRepo) CreateFailedEmails(mdl *cmnmdl.Email) (err error) {

	query := "INSERT INTO emails ( ToAddress,Subject,Body,TimePeriod,Status,Attempts,Reason) VALUES (?,?,?,?,?,?,?);"
	stmt, _ := m.Conn.Prepare(query)
	_, err = stmt.Exec(mdl.ToAddress, mdl.Subject, mdl.Body, mdl.TimePeriod, mdl.Status, mdl.Attempts, mdl.Reason)
	defer stmt.Close()

	return err
}

func (m *mysqlRepo) GetNonITAssetReqList(ctx context.Context, ApprvrID int) ([]*nonitassets_mdl.NonITAssetReqList, error) {
	selDB, err := m.Conn.QueryContext(ctx, "call sp_NonITAssetReqListByApprover(?);", ApprvrID)
	if err != nil {
		panic(err.Error())
	}

	res := make([]*nonitassets_mdl.NonITAssetReqList, 0)
	for selDB.Next() {
		mdl := new(nonitassets_mdl.NonITAssetReqList)
		ITAssetRequest := new(nonitassets_mdl.NonITAssetRequest)
		ira := new(nonitassets_mdl.NonITAssetRequestApproval)
		Requester := new(cmnmdl.Employees)
		err = selDB.Scan(&ITAssetRequest.AssetType, &ITAssetRequest.ReqGroupID, &ITAssetRequest.RequestedBy,
			&ITAssetRequest.ReqStatus, &ITAssetRequest.Priority, &ITAssetRequest.RequestedOn, &ITAssetRequest.AssetID, &ITAssetRequest.Description,
			&Requester.FirstName,
			&ira.RoleID, &ira.ApproverID, &ira.Grade, &ira.Status, &ira.Comments, &ira.CreatedOn, &ira.ActionedOn)

		ITAssetRequest.NonITAssetRequestApproval = ira
		mdl.Requester = Requester
		mdl.NonITAssetRequest = ITAssetRequest
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

func (m *mysqlRepo) NonITAssetReq_ApprovalStatusList(ctx context.Context, ReqGroupID int) ([]*nonitassets_mdl.NonITAssetRequestApproval, error) {
	query := "SELECT Aprvr.FirstName,ira.NonITAssetReqGroupID,ira.idnonitasset_Req_approvals,  ira.RoleID,ira.ApproverID,ira.Grade,ira.Status,ira.Comments,ira.CreatedOn,ira.ActionedOn "
	query += ",rl.RoleName	from nonitasset_req_approvals ira  "
	query += "left join employees Aprvr on ira.ApproverID=Aprvr.IdEmployees "
	query += "	left join roles rl on rl.idRoles=ira.RoleID "
	query += "where ira.nonitassetReqGroupID= ?; "
	selDB, err := m.Conn.QueryContext(ctx, query, ReqGroupID)
	if err != nil {

		return nil, err
	}
	res := make([]*nonitassets_mdl.NonITAssetRequestApproval, 0)
	for selDB.Next() {
		mdl := new(nonitassets_mdl.NonITAssetRequestApproval)
		apprvr := new(cmnmdl.Employees)

		err := selDB.Scan(&apprvr.FirstName, &mdl.NonITAssetReqGroupID, &mdl.IDNonitasset_Req_approvals, &mdl.RoleID, &mdl.ApproverID, &mdl.Grade, &mdl.Status, &mdl.Comments, &mdl.CreatedOn,
			&mdl.ActionedOn, &mdl.RoleName)
		mdl.Employee = apprvr
		if err != nil {

			return nil, err
		}

		res = append(res, mdl)
	}
	return res, nil
}

func (m *mysqlRepo) NonITAssetReqReject(ctx context.Context, Mdl *nonitassets_mdl.NonITAssetRequestApproval) (bool, error) {
	query := "update nonitassetrequest set ReqStatus='Rejected' where ReqGroupID =? ;"
	stmt, err := m.Conn.PrepareContext(ctx, query)
	_, err = stmt.ExecContext(ctx, &Mdl.NonITAssetReqGroupID)
	query = "update nonitasset_req_approvals set Status='Rejected',Comments=?,ActionedOn=now() where idnonitasset_Req_approvals = ? ;"
	stmt, err = m.Conn.PrepareContext(ctx, query)
	_, err = stmt.ExecContext(ctx, &Mdl.Comments, &Mdl.IDNonitasset_Req_approvals)
	defer stmt.Close()
	if err != nil {
		return false, err
	}

	return true, err
}

func (m *mysqlRepo) NonITAssetReqForward(ctx context.Context, mdl *nonitassets_mdl.NonITAssetRequestApproval) error {
	query := "update nonitasset_req_approvals set Status=? ,Comments=?,ActionedOn=now() where idnonitasset_Req_approvals= ? "
	txn, err := m.Conn.Begin()
	stmnt, _ := txn.PrepareContext(ctx, query)
	_, err2 := stmnt.Exec(&mdl.Status, &mdl.Comments, &mdl.IDNonitasset_Req_approvals)
	if err2 != nil {
		txn.Rollback()
		return err2
	}
	FinalGrade := 1
	if *mdl.Grade != FinalGrade && *mdl.Status != "Rejected" {
		Apprvlquery := " insert into nonitasset_req_approvals (nonitassetReqGroupID, RoleID, ApproverID, Grade, CreatedOn, Status) "
		Apprvlquery += "	values(?,?,?,?, now(),'Requested') "
		stmtApprvl, err3 := txn.Prepare(Apprvlquery)

		if err3 != nil {
			txn.Rollback()
			return err3
		}
		_, err4 := stmtApprvl.Exec(&mdl.NonITAssetReqGroupID, &mdl.NextRoleID, &mdl.NextApproverID, &mdl.NextGrade)

		if err4 != nil {
			txn.Rollback()
			return err4
		}

		AprvrMail, AprvrName := m.GetMailByUserID(nil, mdl.NextApproverID)
		Subject := "NonITAsset(s) Requested forwarded"
		Msg := "<p>Hai " + AprvrName + "</p><p>One New NonITAsset Request forwarded for you. Please check the NonITAsser Request list</p>"
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

func (m *mysqlRepo) NonITAssetReqListByReqGroup(ctx context.Context, ReqGroupID int, ApproverID int) ([]*nonitassets_mdl.NonITAssetReqList, error) {
	selDB, err := m.Conn.QueryContext(ctx, "call sp_NonITAssetReqListByReqGroup(?,?);", ReqGroupID, ApproverID)
	if err != nil {
		panic(err.Error())
	}
	res := make([]*nonitassets_mdl.NonITAssetReqList, 0)
	for selDB.Next() {
		mdl := new(nonitassets_mdl.NonITAssetReqList)
		ITAssetRequest := new(nonitassets_mdl.NonITAssetRequest)
		ira := new(nonitassets_mdl.NonITAssetRequestApproval)
		Requester := new(cmnmdl.Employees)
		err = selDB.Scan(&ITAssetRequest.IDNonITAssetrequest, &ITAssetRequest.AssetType, &ITAssetRequest.ReqGroupID, &ITAssetRequest.RequestedBy,
			&ITAssetRequest.ReqStatus, &ITAssetRequest.Priority, &ITAssetRequest.RequestedOn, &ITAssetRequest.AssetID, &ITAssetRequest.Description,
			&Requester.FirstName, &ira.IDNonitasset_Req_approvals,
			&ira.RoleID, &ira.ApproverID, &ira.Grade, &ira.Status, &ira.Comments, &ira.CreatedOn, &ira.ActionedOn)

		ITAssetRequest.NonITAssetRequestApproval = ira
		mdl.Requester = Requester
		mdl.NonITAssetRequest = ITAssetRequest
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

func (m *mysqlRepo) NonITAssetReqApprove(MdlList []*nonitassets_mdl.NonITAssetRequest) error {
	txn, err := m.Conn.Begin()
	queryReq := "update nonitasset_req_approvals set Status='Approved' ,Comments=?,ActionedOn=now() where idnonitasset_Req_approvals= ? "
	stmntA, _ := txn.Prepare(queryReq)
	_, err2 := stmntA.Exec(&MdlList[0].NonITAssetRequestApproval.Comments, &MdlList[0].NonITAssetRequestApproval.IDNonitasset_Req_approvals)
	if err2 != nil {
		txn.Rollback()
		return err2
	}

	//var ReqGroupID int
	for _, item := range MdlList {
		query := "call sp_NonITAssetReqApprove(?,?,?, ?,?) ;"
		stmntA, _ := txn.Prepare(query)
		_, err = stmntA.Exec(&item.AssetID, &item.AssignedQnty, &item.IDNonITAssetrequest,
			&item.NonITAssetRequestApproval.Comments, &item.CreatedBy)
		if err != nil {
			txn.Rollback()
			return err
		}

	}

	if err == nil {
		err = txn.Commit()
	}

	return err
}

func (m *mysqlRepo) GetNonITAssetCheckinDetails(ctx context.Context, LocID int) ([]*nonitassets_mdl.NonITAssets_checkout_checkin, error) {
	selDB, err := m.Conn.QueryContext(ctx, "call sp_NonITAssetCheckinDetails(?)", LocID)
	if err != nil {
		return nil, err
	}
	Listmdl := make([]*nonitassets_mdl.NonITAssets_checkout_checkin, 0)
	for selDB.Next() {
		nchk := nonitassets_mdl.NonITAssets_checkout_checkin{}
		nit := nonitassets_mdl.NonITAssets{}
		err := selDB.Scan(&nchk.IDNonITAssets_Checkout_Checkin, &nchk.NonITAsset_ID, &nchk.CheckedOutTo, &nchk.CheckedOutUserID, &nchk.CheckedOutPlace,
			&nchk.CheckedOutDate, &nchk.CheckOut_Qnty, &nchk.CheckOut_Comments,
			&nchk.Created_On, &nchk.Created_By, &nchk.CheckOut_By, &nchk.Record_Status,
			&nchk.AssetName, &nit.IDNonITAsset, &nit.IdentificationNo,
			&nchk.CheckOut_UserName, &nchk.CheckOut_ByName, &nchk.InUse)
		if err != nil {
			return nil, err
		}
		nchk.NonITAssets = &nit
		Listmdl = append(Listmdl, &nchk)
	}

	return Listmdl, nil
}

func (m *mysqlRepo) NonITAssetCheckin(ctx context.Context, Mdl *nonitassets_mdl.NonITAssets_checkin) error {
	query := "call sp_NonITAssetCheckin(?,?,?,?);"
	stmt, err := m.Conn.PrepareContext(ctx, query)
	_, err = stmt.ExecContext(ctx, &Mdl.CheckIn_Qnty, &Mdl.Checkin_Comments, &Mdl.CheckIN_By, &Mdl.NonITAssets_Checkout_CheckinID)
	defer stmt.Close()
	if err != nil {
		return err
	}

	return err
}

func (m *mysqlRepo) Getnonitassets_checkinByID(ctx context.Context, checkinID int) ([]*nonitassets_mdl.NonITAssets_checkin, error) {
	qry := "SELECT CheckinDate,CheckIN_Qnty,Checkin_Comments,CheckIN_By,emp.FirstName FROM nonitassets_checkin chkin " +
		"join employees emp on emp.IdEmployees=chkin.CheckIN_By where nonitassets_checkout_checkinID=?; "
	selDB, err := m.Conn.QueryContext(ctx, qry, checkinID)
	if err != nil {
		return nil, err
	}
	Listmdl := make([]*nonitassets_mdl.NonITAssets_checkin, 0)
	for selDB.Next() {
		nchk := nonitassets_mdl.NonITAssets_checkin{}

		err := selDB.Scan(&nchk.CheckinDate, &nchk.CheckIn_Qnty, &nchk.Checkin_Comments, &nchk.CheckIN_By, &nchk.CheckIN_ByName)
		if err != nil {
			return nil, err
		}
		Listmdl = append(Listmdl, &nchk)
	}

	return Listmdl, nil
}

func (m *mysqlRepo) GetNonITAssetCheckinDetailsByAsset(ctx context.Context, IDNonITAsset int) ([]*nonitassets_mdl.NonITAssets_checkout_checkin, error) {
	selDB, err := m.Conn.QueryContext(ctx, "call sp_NonITAssetCheckinDetailsByAsset(?)", IDNonITAsset)
	if err != nil {
		return nil, err
	}
	Listmdl := make([]*nonitassets_mdl.NonITAssets_checkout_checkin, 0)
	for selDB.Next() {
		nchk := nonitassets_mdl.NonITAssets_checkout_checkin{}
		nit := nonitassets_mdl.NonITAssets{}
		err := selDB.Scan(&nchk.IDNonITAssets_Checkout_Checkin, &nchk.NonITAsset_ID, &nchk.CheckedOutTo, &nchk.CheckedOutUserID, &nchk.CheckedOutPlace,
			&nchk.CheckedOutDate, &nchk.CheckOut_Qnty, &nchk.CheckOut_Comments,
			&nchk.Created_On, &nchk.Created_By, &nchk.CheckOut_By, &nchk.Record_Status,
			&nchk.AssetName, &nit.IDNonITAsset, &nit.IdentificationNo,
			&nchk.CheckOut_UserName, &nchk.CheckOut_ByName, &nchk.InUse)
		if err != nil {
			return nil, err
		}
		nchk.NonITAssets = &nit
		Listmdl = append(Listmdl, &nchk)
	}

	return Listmdl, nil
}

func (m *mysqlRepo) GetNonITAssetCheckinDetailsByEmp(ctx context.Context, EmpID int) ([]*nonitassets_mdl.NonITAssets_checkout_checkin, error) {
	selDB, err := m.Conn.QueryContext(ctx, "call sp_NonITAssetCheckinDetailsByEmp(?)", EmpID)
	if err != nil {
		return nil, err
	}
	Listmdl := make([]*nonitassets_mdl.NonITAssets_checkout_checkin, 0)
	for selDB.Next() {
		nchk := nonitassets_mdl.NonITAssets_checkout_checkin{}
		nit := nonitassets_mdl.NonITAssets{}
		err := selDB.Scan(&nchk.IDNonITAssets_Checkout_Checkin, &nchk.NonITAsset_ID, &nchk.CheckedOutTo, &nchk.CheckedOutUserID, &nchk.CheckedOutPlace,
			&nchk.CheckedOutDate, &nchk.CheckOut_Qnty, &nchk.CheckOut_Comments,
			&nchk.Created_On, &nchk.Created_By, &nchk.CheckOut_By, &nchk.Record_Status,
			&nchk.AssetName, &nit.IDNonITAsset, &nit.IdentificationNo,
			&nchk.CheckOut_UserName, &nchk.CheckOut_ByName, &nchk.InUse)
		if err != nil {
			return nil, err
		}
		nchk.NonITAssets = &nit
		Listmdl = append(Listmdl, &nchk)
	}

	return Listmdl, nil
}

func (m *mysqlRepo) GetNonITAssetReqListByEmp(ctx context.Context, EmpID int) ([]*nonitassets_mdl.NonITAssetReqList, error) {
	selDB, err := m.Conn.QueryContext(ctx, "call sp_NonITAssetReqListByEmp(?);", EmpID)
	if err != nil {
		panic(err.Error())
	}

	res := make([]*nonitassets_mdl.NonITAssetReqList, 0)
	for selDB.Next() {
		mdl := new(nonitassets_mdl.NonITAssetReqList)
		ITAssetRequest := new(nonitassets_mdl.NonITAssetRequest)
		ira := new(nonitassets_mdl.NonITAssetRequestApproval)
		Requester := new(cmnmdl.Employees)
		err = selDB.Scan(&ITAssetRequest.AssetType, &ITAssetRequest.ReqGroupID, &ITAssetRequest.RequestedBy,
			&ITAssetRequest.ReqStatus, &ITAssetRequest.Priority, &ITAssetRequest.RequestedOn, &ITAssetRequest.AssetID, &ITAssetRequest.Description,
			&Requester.FirstName,
			&ira.RoleID, &ira.ApproverID, &ira.Grade, &ira.Status, &ira.Comments, &ira.CreatedOn, &ira.ActionedOn)

		ITAssetRequest.NonITAssetRequestApproval = ira
		mdl.Requester = Requester
		mdl.NonITAssetRequest = ITAssetRequest
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

func (m *mysqlRepo) NonITAssetDelete(ctx context.Context, AssetID int) error {
	query := "call sp_NonITAssetDelete(?);"
	stmt, err := m.Conn.PrepareContext(ctx, query)
	_, err = stmt.ExecContext(ctx, AssetID)
	defer stmt.Close()
	return err
}
