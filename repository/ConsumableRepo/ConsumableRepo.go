package consumablerepo

import (
	"bytes"
	"context"
	"database/sql"
	"errors"
	"fmt"
	"html/template"
	"log"
	"net/smtp"
	"strconv"
	"strings"

	"github.com/premsynfosys/AMS_API/models/cmnmdl"
	"github.com/premsynfosys/AMS_API/models/cnsmblemdl"
)

//NewSQLRepo ..
func NewSQLRepo(con *sql.DB) ConsumableIntfc {
	return &mysqlRepo{
		Conn: con,
	}
}

type mysqlRepo struct {
	Conn *sql.DB
}

func (m *mysqlRepo) CreateConsumables(ctx context.Context, mdl *cnsmblemdl.Consumables) error {
	var query strings.Builder
	// const shortForm = "2006-01-02"
	// ss := mdl.Warranty
	// t, _ := time.Parse(shortForm, *ss)
	query.WriteString("INSERT INTO consumables(idconsumableMaster,IdentificationNo,Description,Img ")
	query.WriteString(",TotalQnty,ThresholdQnty, ReOrderStockPrice,ReOrderQuantity,StatusID,LocationID, ")
	query.WriteString("	CustomFields1,CustomFields1Value,CustomFields1Type,CustomFields2,CustomFields2Value,CustomFields2Type, ")
	query.WriteString("CustomFields3,CustomFields3Value,CustomFields3Type,CustomFields4,CustomFields4Value,CustomFields4Type, ")
	query.WriteString("CustomFields5,CustomFields5Value,CustomFields5Type,CreatedBy)VALUES (?,?,?,?,?, ?,?,?,?,?, ?,?,?,?,?,  ?,?,?,?,?, ?,?,?,?,? ,?) ")
	stmt, err := m.Conn.PrepareContext(ctx, query.String())
	if err != nil {
		return err
	}
	res, err := stmt.ExecContext(ctx, mdl.IDconsumableMaster, mdl.IdentificationNo, mdl.Description, mdl.Img,
		mdl.TotalQnty, mdl.ThresholdQnty, mdl.ReOrderStockPrice, mdl.ReOrderQuantity, mdl.StatusID, mdl.LocationID,
		mdl.CustomFields1, mdl.CustomFields1Value, mdl.CustomFields1Type, mdl.CustomFields2, mdl.CustomFields2Value, mdl.CustomFields2Type,
		mdl.CustomFields3, mdl.CustomFields3Value, mdl.CustomFields3Type, mdl.CustomFields4, mdl.CustomFields4Value, mdl.CustomFields4Type,
		mdl.CustomFields5, mdl.CustomFields5Value, mdl.CustomFields5Type, mdl.CreatedBy)

	defer stmt.Close()

	if err != nil {
		return err
	}
	ConsumableID, err := res.LastInsertId()
	ConsumableOprtns := mdl.ConsumableOprtns
	*ConsumableOprtns.ConsumableID = int(ConsumableID)
	err = m.PostConsumableOprtnsAddStock(ConsumableOprtns)
	return err

}
func (m *mysqlRepo) PostConsumableOprtnsAddStock(mdl *cnsmblemdl.ConsumableOprtns) (err error) {
	var oprtnsquery strings.Builder
	oprtnsquery.WriteString("INSERT INTO consumableoprtns (consumableID,Quantity,UnitPrice,VendorID,OrderedBy, ")
	oprtnsquery.WriteString("Comments,StatusID) VALUES (?,?,?,?, ?,?,? );")
	var Cnsmblquery strings.Builder
	Cnsmblquery.WriteString("update consumables set TotalQnty=TotalQnty + ?,ModifiedOn=now() where idconsumables= ? ;")

	var err1, err2, err3 error
	txn, err := m.Conn.Begin()
	stmt1, err := txn.Prepare(oprtnsquery.String())
	stmt2, err := txn.Prepare(Cnsmblquery.String())
	if err != nil {
		return
	}
	_, err1 = stmt1.Exec(mdl.ConsumableID, mdl.Quantity, mdl.UnitPrice, mdl.VendorID, mdl.OrderedBy, mdl.Comments, mdl.StatusID)
	_, err2 = stmt2.Exec(mdl.Quantity, mdl.ConsumableID)
	if err != nil || err1 != nil || err2 != nil || err3 != nil {
		txn.Rollback()
		return errors.New("failed")
	} else {
		err = txn.Commit()
	}
	return err
}
func (m *mysqlRepo) PostConsumableOprtnsRemovestock(mdl *cnsmblemdl.ConsumableOprtns) (err error) {
	var oprtnsquery strings.Builder
	oprtnsquery.WriteString("INSERT INTO consumableoprtns (consumableID,Quantity,UnitPrice,OrderedBy, ")
	oprtnsquery.WriteString("Comments,StatusID) VALUES (?,?,?,?,?,?);")
	var Cnsmblquery strings.Builder
	Cnsmblquery.WriteString("update consumables set TotalQnty=TotalQnty - ?,ModifiedOn=now() where idconsumables= ? ;")
	var err1, err2, err3 error
	txn, err := m.Conn.Begin()
	stmt1, err := txn.Prepare(oprtnsquery.String())
	stmt2, err := txn.Prepare(Cnsmblquery.String())
	if err != nil {
		return err
	}
	_, err1 = stmt1.Exec(mdl.ConsumableID, mdl.Quantity, mdl.UnitPrice, mdl.OrderedBy, mdl.Comments, mdl.StatusID)
	_, err2 = stmt2.Exec(mdl.Quantity, mdl.ConsumableID)

	if err != nil || err1 != nil || err2 != nil || err3 != nil {
		txn.Rollback()
		return err
	}
	err = txn.Commit()
	dt, errq := m.GetThresholdReachedStockConsumablesByID(*mdl.ConsumableID)
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
		go m.SendEmail(&emailAprvr, false)
	}
	return err

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

func (m *mysqlRepo) GetThresholdReachedStockConsumablesByID(AssetID int) (*cmnmdl.ThresholdAlert, error) {
	query := "select  cnm.consumableName,con.IdentificationNo,emp.FirstName,emp.Email,con.TotalQnty,con.ThresholdQnty from consumables con "
	query += " join employees emp on emp.Location=con.LocationID "
	query += " join consumablemaster cnm on cnm.idconsumableMaster= con.idconsumableMaster "
	query += " join users usr on usr.EmployeeId=emp.IdEmployees where usr.Role=2 and  con.ThresholdQnty >= con.TotalQnty and con.idconsumables=? "
	res := cmnmdl.ThresholdAlert{}
	selDB:= m.Conn.QueryRow(query, AssetID)
	err := selDB.Scan(&res.AssetName, &res.IdentificationNo, &res.FirstName, &res.Email, &res.AvailableQnty, &res.ThresholdQnty)
	if err != nil {
		fmt.Println(err.Error())
		return nil, err
	}

	return &res, nil
}

func (m *mysqlRepo) GetConsumableGroups(ctx context.Context) ([]*cnsmblemdl.ConsumableGroup, error) {
	selDB, err := m.Conn.QueryContext(ctx, "SELECT idconsumablegroups,ConsumableGroupName FROM consumablegroups;")
	if err != nil {
		panic(err.Error())
	}

	res := make([]*cnsmblemdl.ConsumableGroup, 0)
	for selDB.Next() {
		emp := new(cnsmblemdl.ConsumableGroup)
		err = selDB.Scan(&emp.IDconsumablegroups, &emp.ConsumableGroupName)
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

func (m *mysqlRepo) GetConsumableList(ctx context.Context, LocID int) ([]*cnsmblemdl.Consumables, error) {
	selDB, err := m.Conn.QueryContext(ctx, "call sp_consumablelList(?)", LocID)
	if err != nil {
		panic(err.Error())
	}

	res := make([]*cnsmblemdl.Consumables, 0)
	for selDB.Next() {
		mdl := new(cnsmblemdl.Consumables)
		Status := cmnmdl.Status{}
		loc := &cmnmdl.Locations{}
		ConMst := &cnsmblemdl.Consumablemaster{}
		err = selDB.Scan(&mdl.IDConsumables, &ConMst.IDconsumableMaster, &ConMst.ConsumableName, &ConMst.GroupID, &ConMst.SubGroupID, &mdl.IdentificationNo, &mdl.Description, &mdl.TotalQnty, &mdl.ThresholdQnty,
			&mdl.ReOrderStockPrice, &mdl.ReOrderQuantity, &mdl.Warranty, &mdl.StatusID, &mdl.Img, &mdl.LocationID,
			&mdl.CustomFields1, &mdl.CustomFields1Value, &mdl.CustomFields1Type, &mdl.CustomFields2, &mdl.CustomFields2Value, &mdl.CustomFields2Type,
			&mdl.CustomFields3, &mdl.CustomFields3Value, &mdl.CustomFields3Type, &mdl.CustomFields4, &mdl.CustomFields4Value, &mdl.CustomFields4Type,
			&mdl.CustomFields5, &mdl.CustomFields5Value, &mdl.CustomFields5Type, &ConMst.GroupName, &loc.Name, &loc.Address1, &loc.Address2, &loc.State, &loc.Zipcode, &Status.StatusName)
		mdl.Location = loc
		mdl.Status = &Status
		mdl.Consumablemaster = ConMst

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

func (m *mysqlRepo) GetConsumableMasterList(ctx context.Context) ([]*cnsmblemdl.Consumablemaster, error) {
	selDB, err := m.Conn.QueryContext(ctx, "SELECT idconsumableMaster,consumableName,GroupID,cng.ConsumableGroupName ,SubGroupID,Description FROM consumablemaster cnm join `consumablegroups` cng on cnm.GroupID=cng.idconsumablegroups order by consumableName  ;")
	if err != nil {
		panic(err.Error())
	}

	res := make([]*cnsmblemdl.Consumablemaster, 0)
	for selDB.Next() {
		mdl := new(cnsmblemdl.Consumablemaster)
		err = selDB.Scan(&mdl.IDconsumableMaster, &mdl.ConsumableName, &mdl.GroupID, &mdl.GroupName, &mdl.SubGroupID,
			&mdl.Description)

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

func (m *mysqlRepo) GetConsumableListByID(ctx context.Context, IDConsumable int) (*cnsmblemdl.Consumables, error) {
	selDB := m.Conn.QueryRowContext(ctx, "call sp_consumablelListByID(?)", IDConsumable)

	mdl := cnsmblemdl.Consumables{}
	ConStatus := &cmnmdl.Status{}
	loc := &cmnmdl.Locations{}
	ConMst := &cnsmblemdl.Consumablemaster{}
	err := selDB.Scan(&mdl.IDConsumables, &ConMst.IDconsumableMaster, &ConMst.ConsumableName, &ConMst.GroupID, &ConMst.SubGroupID, &mdl.IdentificationNo, &mdl.Description, &mdl.TotalQnty, &mdl.ThresholdQnty,
		&mdl.ReOrderStockPrice, &mdl.ReOrderQuantity, &mdl.Warranty, &mdl.StatusID, &mdl.Img, &mdl.LocationID,
		&mdl.CustomFields1, &mdl.CustomFields1Value, &mdl.CustomFields1Type, &mdl.CustomFields2, &mdl.CustomFields2Value, &mdl.CustomFields2Type,
		&mdl.CustomFields3, &mdl.CustomFields3Value, &mdl.CustomFields3Type, &mdl.CustomFields4, &mdl.CustomFields4Value, &mdl.CustomFields4Type,
		&mdl.CustomFields5, &mdl.CustomFields5Value, &mdl.CustomFields5Type,
		&ConMst.GroupName,
		&loc.Name, &loc.Address1, &loc.Address2, &loc.State, &loc.Zipcode, &ConStatus.StatusName)
	if err != nil {
		return nil, err
	}
	mdl.Location = loc
	mdl.Status = ConStatus
	mdl.Consumablemaster = ConMst
	return &mdl, nil
}

func (m *mysqlRepo) GetConsumableOprtnList(ctx context.Context) ([]*cnsmblemdl.Consumables, error) {
	selDB, err := m.Conn.QueryContext(ctx, "call sp_consumableOprtnList()")
	if err != nil {
		return nil, err
	}
	Listmdl := make([]*cnsmblemdl.Consumables, 0)
	ConStatus := &cmnmdl.Status{}
	loc := &cmnmdl.Locations{}
	for selDB.Next() {
		mdl := cnsmblemdl.Consumables{}
		item := new(cnsmblemdl.ConsumableOprtns)
		vdr := new(cmnmdl.Vendors)
		CopStatus := &cmnmdl.Status{}
		ConMst := &cnsmblemdl.Consumablemaster{}
		err := selDB.Scan(&mdl.IDConsumables, &ConMst.IDconsumableMaster, &ConMst.ConsumableName, &ConMst.GroupID, &ConMst.SubGroupID, &mdl.IdentificationNo, &mdl.Description, &mdl.TotalQnty, &mdl.ThresholdQnty,
			&mdl.ReOrderStockPrice, &mdl.ReOrderQuantity, &mdl.Warranty, &mdl.StatusID, &mdl.Img, &mdl.LocationID,
			&mdl.CustomFields1, &mdl.CustomFields1Value, &mdl.CustomFields1Type, &mdl.CustomFields2, &mdl.CustomFields2Value, &mdl.CustomFields2Type,
			&mdl.CustomFields3, &mdl.CustomFields3Value, &mdl.CustomFields3Type, &mdl.CustomFields4, &mdl.CustomFields4Value, &mdl.CustomFields4Type,
			&mdl.CustomFields5, &mdl.CustomFields5Value, &mdl.CustomFields5Type,
			&item.IDconsumableOprtns, &item.Quantity, &item.UnitPrice, &item.VendorID, &item.OrderedBy, &item.Comments, &item.CreataedOn, &item.StatusID,
			&vdr.Name, &vdr.Address, &vdr.Email, &vdr.Phone,
			&ConMst.GroupName,
			&loc.Name, &loc.Address1, &loc.Address2, &loc.State, &loc.Zipcode, &ConStatus.StatusName, &CopStatus.StatusName, &item.CreatedByName)
		if err != nil {
			return nil, err
		}
		item.Vendor = vdr
		item.Status = *CopStatus
		mdl.Location = loc
		mdl.Status = ConStatus
		mdl.ConsumableOprtns = item
		mdl.Consumablemaster = ConMst
		Listmdl = append(Listmdl, &mdl)
	}

	return Listmdl, nil
}

func (m *mysqlRepo) GetConsumableOprtnListByID(ctx context.Context, IDConsumable int) ([]*cnsmblemdl.Consumables, error) {
	selDB, err := m.Conn.QueryContext(ctx, "call sp_consumableOprtnListByID(?)", IDConsumable)
	if err != nil {
		return nil, err
	}
	Listmdl := make([]*cnsmblemdl.Consumables, 0)
	ConStatus := &cmnmdl.Status{}
	loc := &cmnmdl.Locations{}
	for selDB.Next() {
		mdl := cnsmblemdl.Consumables{}
		item := new(cnsmblemdl.ConsumableOprtns)
		vdr := new(cmnmdl.Vendors)
		CopStatus := &cmnmdl.Status{}
		ConMst := &cnsmblemdl.Consumablemaster{}
		err := selDB.Scan(&mdl.IDConsumables, &ConMst.IDconsumableMaster, &ConMst.ConsumableName, &ConMst.GroupID, &ConMst.SubGroupID, &mdl.IdentificationNo, &mdl.Description, &mdl.TotalQnty, &mdl.ThresholdQnty,
			&mdl.ReOrderStockPrice, &mdl.ReOrderQuantity, &mdl.Warranty, &mdl.StatusID, &mdl.Img, &mdl.LocationID,
			&mdl.CustomFields1, &mdl.CustomFields1Value, &mdl.CustomFields1Type, &mdl.CustomFields2, &mdl.CustomFields2Value, &mdl.CustomFields2Type,
			&mdl.CustomFields3, &mdl.CustomFields3Value, &mdl.CustomFields3Type, &mdl.CustomFields4, &mdl.CustomFields4Value, &mdl.CustomFields4Type,
			&mdl.CustomFields5, &mdl.CustomFields5Value, &mdl.CustomFields5Type,
			&item.IDconsumableOprtns, &item.Quantity, &item.UnitPrice, &item.VendorID, &item.OrderedBy, &item.Comments, &item.CreataedOn, &item.StatusID,
			&vdr.Name, &vdr.Address, &vdr.Email, &vdr.Phone,
			&ConMst.GroupName,
			&loc.Name, &loc.Address1, &loc.Address2, &loc.State, &loc.Zipcode, &ConStatus.StatusName, &CopStatus.StatusName, &item.CreatedByName)
		if err != nil {
			return nil, err
		}
		item.Vendor = vdr
		item.Status = *CopStatus
		mdl.Location = loc
		mdl.Status = ConStatus
		mdl.ConsumableOprtns = item
		mdl.Consumablemaster = ConMst
		Listmdl = append(Listmdl, &mdl)
	}

	return Listmdl, nil
}

//UpdateConsumable ..
func (m *mysqlRepo) UpdateConsumable(ctx context.Context, mdl *cnsmblemdl.Consumables) (err error) {
	var query strings.Builder
	query.WriteString("UPDATE consumables SET idconsumableMaster = ?,Description =?,ThresholdQnty = ?,")
	query.WriteString("ReOrderStockPrice =? ,ReOrderQuantity = ?,Img =? ,LocationID =?,ModifiedOn = Now(),ModifiedBy=? WHERE idconsumables =? ;")
	stmt, err := m.Conn.PrepareContext(ctx, query.String())
	if err != nil {
		return err
	}
	_, err = stmt.ExecContext(ctx, mdl.IDconsumableMaster, mdl.Description, mdl.ThresholdQnty,
		mdl.ReOrderStockPrice, mdl.ReOrderQuantity, mdl.Img, mdl.LocationID, mdl.ModifiedBy, mdl.IDConsumables)
	defer stmt.Close()

	return err
}

func (m *mysqlRepo) ConsumableBulkEdit(ctx context.Context, usr *cnsmblemdl.Consumables, ids []string) error {
	var query strings.Builder
	query.WriteString("UPDATE consumables SET GroupID =? ,SubGroupID =?,Description = ?,ThresholdQnty = ?,")
	query.WriteString("ReOrderStockPrice =? ,ReOrderQuantity =? ,LocationID =?,ModifiedBy=? WHERE idconsumables in ( ")

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
	_, err = stmt.ExecContext(ctx, usr.Consumablemaster.GroupID, usr.Consumablemaster.SubGroupID, usr.Description, usr.ThresholdQnty, usr.ReOrderStockPrice, usr.ReOrderQuantity, usr.LocationID, usr.ModifiedBy)
	defer stmt.Close()

	if err != nil {
		return err
	}
	return err
}
func (m *mysqlRepo) CnsmblBulkRetire(ctx context.Context, mdl []*cmnmdl.InWardOutWardAsset) error {
	qry := "INSERT INTO consumableoprtns (consumableID,Quantity, Comments,StatusID) VALUES (?,?,?,?);"
	txn, _ := m.Conn.Begin()
	stmt, err := txn.Prepare(qry)
	if err != nil {
		return err
	}
	for _, itm := range mdl {
		_, err := stmt.Exec(itm.AssetID, itm.Quantity, itm.Description, itm.Status.IDStatus)
		if err != nil {
			txn.Rollback()
		}
	}
	err = txn.Commit()

	return err
}

func (m *mysqlRepo) CheckDuplicateAssetEntry(ctx context.Context, MasterID int, LocID int) (*int, error) {
	query := "select idconsumableMaster from consumables where idconsumableMaster=? and LocationID=? and RecordStatus='Active' ;"
	selDB := m.Conn.QueryRowContext(ctx, query, &MasterID, &LocID)
	var idconsumableMaster *int
	err := selDB.Scan(&idconsumableMaster)
	if err != nil {
		if err == sql.ErrNoRows {
			return nil, nil
		} else {
			return nil, err
		}

	} else {
		return idconsumableMaster, nil
	}

}

func (m *mysqlRepo) ConsumablemasterInsert(ctx context.Context, mdl *cnsmblemdl.Consumablemaster) error {

	txn, _ := m.Conn.Begin()
	if *mdl.GroupID == 0 {
		qryA := "insert into consumablegroups ( ConsumableGroupName) values(?)"
		stmtA, err := txn.Prepare(qryA)
		if err != nil {
			return err
		}
		res, err2 := stmtA.Exec(mdl.GroupName)
		if err2 != nil {
			txn.Rollback()
			return err
		}
		id, _ := res.LastInsertId()
		*mdl.GroupID = int(id)
	}
	qry := "insert into consumablemaster ( consumableName, GroupID, Description, CreatedOn) values(?,?,?,now())"
	stmt, err := txn.Prepare(qry)
	if err != nil {
		return err
	}
	_, err1 := stmt.Exec(mdl.ConsumableName, mdl.GroupID, mdl.Description)
	if err1 != nil {
		txn.Rollback()
		return err
	}

	err = txn.Commit()

	return err
}

func (m *mysqlRepo) Check_Unique_Consumable(ctx context.Context, name string) (*string, error) {
	query := "SELECT consumableName FROM consumablemaster where consumableName= ?; "
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

func (m *mysqlRepo) GetVendorsByConsumable(ctx context.Context, ConsumableID int) ([]*cmnmdl.VendorsAssetDetails, error) {
	selDB, err := m.Conn.QueryContext(ctx, "call sp_getVendorsByConsumable(?);", ConsumableID)
	if err != nil {
		panic(err.Error())
	}
	res := make([]*cmnmdl.VendorsAssetDetails, 0)
	for selDB.Next() {
		mdl := new(cmnmdl.VendorsAssetDetails)
		vend := new(cmnmdl.Vendors)
		vcm := new(cmnmdl.Vendors_consumablemaster_map)
		cm := new(cnsmblemdl.Consumablemaster)
		err = selDB.Scan(&vend.Idvendors, &vend.Name, &vend.Description, &vend.Websites, &vend.Address, &vend.Email, &vend.ContactPersonName,
			&vend.Phone, &vend.Status, &vend.CreatedOn, &vend.ModifiedOn, &vend.CreatedBy, &vend.ModifiedBy,
			&vcm.IDVendors_ConsumableMaster_Map, &vcm.ConsumableMasterID, &vcm.VendorsID, &vcm.PriceperUnit, &vcm.ItemType,
			&vcm.CreatedBy, &vcm.CreatedOn, &vcm.VendorRfrdAssetName,
			&cm.IDconsumableMaster, &cm.ConsumableName, &cm.GroupID, &cm.SubGroupID, &cm.Description, &cm.CreatedOn, &cm.ModifiedOn)
		if err != nil {
			panic(err.Error())
		}
		mdl.Vendors = vend
		mdl.Consumablemaster = cm
		mdl.Vendors_consumablemaster_map = vcm
		res = append(res, mdl)
	}
	if err != nil {
		return nil, err

	}
	defer selDB.Close()
	return res, nil
}

func (m *mysqlRepo) ConsumableBulkDelete(ctx context.Context, ids []string) error {

	query := "update consumables set StatusID=23 ,RecordStatus='InActive',ModifiedOn=now(),ModifiedBy=? where idconsumables in (0, "
	for i := 1; i < len(ids); i++ {
		query += ids[i] + ","

	}
	// for _, dt := range ids {
	// 	query += dt + ","

	// }
	query = query[0 : len(query)-1]
	query += " )"
	fmt.Println(query)
	stmt, err := m.Conn.PrepareContext(ctx, query)
	if err != nil {
		return err
	}
	_, err = stmt.ExecContext(ctx, ids[0])
	defer stmt.Close()

	if err != nil {
		return err
	}
	return err
}


func (m *mysqlRepo) ConsumableDelete(ctx context.Context, AssetID int) error {
	query := "call sp_ConsumableDelete(?);"
	stmt, err := m.Conn.PrepareContext(ctx, query)
	_, err = stmt.ExecContext(ctx, AssetID)
	defer stmt.Close()
	return err
}

func (m *mysqlRepo) GetConsumableMastersByVendors(ctx context.Context, VendorID int) ([]*cmnmdl.VendorsAssetDetails, error) {
	selDB, err := m.Conn.QueryContext(ctx, "call sp_ConsumablesByVendor(?);", VendorID)
	if err != nil {
		panic(err.Error())
	}
	res := make([]*cmnmdl.VendorsAssetDetails, 0)
	for selDB.Next() {
		mdl := new(cmnmdl.VendorsAssetDetails)
		vend := new(cmnmdl.Vendors)
		vcm := new(cmnmdl.Vendors_consumablemaster_map)
		cm := new(cnsmblemdl.Consumablemaster)
		err = selDB.Scan(&vend.Idvendors, &vend.Name, &vend.Description, &vend.Websites, &vend.Address, &vend.Email, &vend.ContactPersonName,
			&vend.Phone, &vend.Status, &vend.CreatedOn, &vend.ModifiedOn, &vend.CreatedBy, &vend.ModifiedBy,
			&vcm.IDVendors_ConsumableMaster_Map, &vcm.ConsumableMasterID, &vcm.VendorsID, &vcm.PriceperUnit, &vcm.ItemType,
			&vcm.CreatedBy, &vcm.CreatedOn, &vcm.VendorRfrdAssetName,
			&cm.IDconsumableMaster, &cm.ConsumableName, &cm.GroupID, &cm.SubGroupID, &cm.Description, &cm.CreatedOn, &cm.ModifiedOn)
		if err != nil {
			panic(err.Error())
		}
		mdl.Vendors = vend
		mdl.Consumablemaster = cm
		mdl.Vendors_consumablemaster_map = vcm
		res = append(res, mdl)
	}
	if err != nil {
		return nil, err

	}
	defer selDB.Close()
	return res, nil
}
