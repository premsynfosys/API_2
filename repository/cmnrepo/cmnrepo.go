package cmnrepo

import (
	"bytes"
	"context"
	"database/sql"
	"fmt"
	"html/template"
	"log"
	"net/smtp"
	"net/url"
	"strconv"
	"strings"
	"time"

	"github.com/premsynfosys/AMS_API/models/cmnmdl"
	"github.com/premsynfosys/AMS_API/models/cnsmblemdl"
	"github.com/premsynfosys/AMS_API/models/itassetmdl"
	"github.com/premsynfosys/AMS_API/models/nonitassets_mdl"
)

//NewSQLRepo ..
func NewSQLRepo(con *sql.DB) CmnIntrfc {
	return &mysqlRepo{
		Conn: con,
	}
}

type mysqlRepo struct {
	Conn *sql.DB
}

func (m *mysqlRepo) GetRoles(ctx context.Context) ([]*cmnmdl.Role, error) {
	selDB, err := m.Conn.QueryContext(ctx, "SELECT idRoles,RoleName FROM roles")
	if err != nil {
		panic(err.Error())
	}

	res := make([]*cmnmdl.Role, 0)
	for selDB.Next() {
		emp := new(cmnmdl.Role)
		err = selDB.Scan(&emp.IDRoles, &emp.RoleName)
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
func (m *mysqlRepo) GetDesignations(ctx context.Context) ([]*cmnmdl.Designation, error) {
	selDB, err := m.Conn.QueryContext(ctx, "SELECT idDesignation,DesignationName FROM designation where Record_Status='Active'")
	if err != nil {
		panic(err.Error())
	}

	res := make([]*cmnmdl.Designation, 0)
	for selDB.Next() {
		emp := new(cmnmdl.Designation)
		err = selDB.Scan(&emp.IDDesignation, &emp.DesignationName)
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
func (m *mysqlRepo) GetEducations(ctx context.Context) ([]*cmnmdl.Educations, error) {
	selDB, err := m.Conn.QueryContext(ctx, "SELECT idEducations,Name FROM educations where Record_Status='Active'")
	if err != nil {
		panic(err.Error())
	}

	res := make([]*cmnmdl.Educations, 0)
	for selDB.Next() {
		emp := new(cmnmdl.Educations)
		err = selDB.Scan(&emp.IDEducations, &emp.Name)
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

func (m *mysqlRepo) Login(ctx context.Context, usr *cmnmdl.User) (*cmnmdl.User, error) {

	mdl := cmnmdl.User{}
	query := "SELECT idUsers,EmployeeId,emp.IdEmployees,usr.UserName,Password,emp.FirstName,emp.LastName,emp.Email,emp.Designation,emp.Image,usr.Role,emp.Location,rl.idRoles,rl.RoleName FROM users usr join employees emp "
	query += "on usr.EmployeeId=emp.IdEmployees left join roles rl on rl.idRoles=usr.Role where usr.Status='Active' && emp.Status='Active' && UserName = ?"
	emp := &cmnmdl.Employees{}
	rl := &cmnmdl.Role{}
	err := m.Conn.QueryRowContext(ctx, query, &usr.UserName).Scan(&mdl.IDUsers, &mdl.EmployeeID, &emp.IDEmployees, &mdl.UserName, &mdl.Password, &emp.FirstName, &emp.LastName, &emp.Email, &emp.Designation, &emp.Image, &mdl.RoleID, &emp.Location, &rl.IDRoles, &rl.RoleName)
	if err != nil && err != sql.ErrNoRows {
		log.Printf("no user with UserName %d\n", &usr.UserName)
	}
	if err != nil {
		return nil, err
	}
	mdl.Employee = emp
	mdl.Role = rl
	selDB, err := m.Conn.Query("call sp_AuthorizationListByRole(?)", rl.IDRoles)
	if err != nil {
		return nil, err
	}
	res := make([]*cmnmdl.Authorization, 0)
	for selDB.Next() {
		auth := new(cmnmdl.Authorization)
		ftr := new(cmnmdl.Features_List)
		rl := new(cmnmdl.Role)
		err = selDB.Scan(&auth.IDAuthorization, &auth.RoleID, &auth.Features_List_ID, &auth.CreatedOn, &auth.CreatedBy,
			&ftr.IDFeatures_list, &ftr.Feature_Name, &ftr.Module, &ftr.CreatedOn,
			&rl.IDRoles, &rl.RoleName)
		if err != nil {
			return nil, err
		}
		auth.Role = rl
		auth.Features_List = ftr
		auth.Role = rl
		res = append(res, auth)
	}
	mdl.ListAuthorization = res
	if err != nil {
		return nil, err
	}

	return &mdl, err

}

// func (m *mysqlRepo) GetUniqueID(ctx context.Context, modulename string) (int, error) {
// 	var selDB *sql.Row
// 	var query string
// 	var MaxID int
// 	if modulename == "itassets" {
// 		query = "select ifnull(max(idITAssets), 0)  from itassets "
// 	} else if modulename == "consumable" {
// 		query = "select  ifnull(max(idconsumables), 0) from consumables "
// 	} else if modulename == "nonitassets" {
// 		query = "select  ifnull(max(IDNonITAsset), 0) from nonitassets "
// 	}
// 	selDB = m.Conn.QueryRowContext(ctx, query)
// 	err := selDB.Scan(&MaxID)

// 	if err != nil {
// 		return 0, err

// 	}
// 	return MaxID, nil
// }

func (m *mysqlRepo) GetUsers(ctx context.Context, LocID int) ([]*cmnmdl.User, error) {
	selDB, err := m.Conn.QueryContext(ctx, "call sp_Users(?)", LocID)
	if err != nil {
		panic(err.Error())
	}

	res := make([]*cmnmdl.User, 0)
	for selDB.Next() {
		usr := new(cmnmdl.User)
		emp := new(cmnmdl.Employees)
		des := new(cmnmdl.Designation)
		rl := new(cmnmdl.Role)
		ed := new(cmnmdl.Educations)
		err = selDB.Scan(&usr.IDUsers, &usr.EmployeeID, &usr.UserName, &usr.Status, &usr.RoleID, &usr.LinkGeneratedOn,
			&emp.IDEmployees, &emp.FirstName, &emp.LastName, &emp.DOB, &emp.Email, &emp.Mobile, &emp.PrmntAddress,
			&emp.Address, &emp.Image, &emp.Education, &emp.ExperienceMonth, &emp.ExperienceYear,
			&emp.Designation, &emp.DOJ, &emp.EmpCode, &emp.Location, &emp.Gender, &emp.Status,
			&ed.IDEducations, &ed.Name, &des.IDDesignation, &des.DesignationName, &rl.IDRoles, &rl.RoleName)
		usr.Employee = emp
		usr.Designation = des
		usr.Role = rl
		usr.Educations = ed

		if err != nil {
			panic(err.Error())
		}
		res = append(res, usr)
	}
	if err != nil {
		return nil, err

	}
	defer selDB.Close()
	return res, nil
}

func (m *mysqlRepo) GetNotifications(ctx context.Context) ([]*cmnmdl.Notifications, error) {
	selDB, err := m.Conn.QueryContext(ctx, "SELECT idNotifications,Message,MessageType,EmpID,Role,CreatedOn,Name FROM notifications  order by idNotifications desc limit 10;")
	if err != nil {
		panic(err.Error())
	}

	res := make([]*cmnmdl.Notifications, 0)
	for selDB.Next() {
		notf := new(cmnmdl.Notifications)
		err = selDB.Scan(&notf.IDNotifications, &notf.Message, &notf.MessageType, &notf.EmpID, &notf.RoleID, &notf.CreatedOn, &notf.Name)

		if err != nil {
			panic(err.Error())
		}
		res = append(res, notf)
	}
	if err != nil {
		return nil, err

	}
	defer selDB.Close()
	return res, nil
}

func (m *mysqlRepo) GetEmployees(ctx context.Context, LocID int) ([]*cmnmdl.Employees, error) {
	selDB, err := m.Conn.QueryContext(ctx, "call sp_GetEmployees(?)", LocID)

	if err != nil {
		return nil, err
	}
	res := make([]*cmnmdl.Employees, 0)
	for selDB.Next() {
		emp := new(cmnmdl.Employees)
		usr := new(cmnmdl.User)
		ed := new(cmnmdl.Educations)
		des := new(cmnmdl.Designation)
		err := selDB.Scan(&emp.IDEmployees, &emp.FirstName, &emp.LastName, &emp.DOB, &emp.Email, &emp.Mobile, &emp.Address, &emp.PrmntAddress, &emp.Image, &emp.Education, &emp.ExperienceYear,
			&emp.ExperienceMonth, &emp.Designation, &emp.DOJ, &emp.EmpCode, &emp.Location, &emp.Gender, &emp.Status,
			&usr.IDUsers, &usr.UserName, &usr.RoleID, &usr.Status, &usr.LinkGeneratedOn,
			&des.IDDesignation, &des.DesignationName, &ed.IDEducations, &ed.Name)
		emp.User = usr
		emp.EducationData = ed
		emp.DesignationData = des
		if err != nil {
			fmt.Println(err.Error())
			return nil, err

		}
		res = append(res, emp)
	}

	return res, nil
}

func (m *mysqlRepo) GetEmployeeByID(ctx context.Context, id int) (*cmnmdl.Employees, error) {
	query := "call sp_GetEmployeeByID(?)"
	selDB := m.Conn.QueryRowContext(ctx, query, id)

	emp := new(cmnmdl.Employees)
	usr := new(cmnmdl.User)
	ed := new(cmnmdl.Educations)
	des := new(cmnmdl.Designation)
	err := selDB.Scan(&emp.IDEmployees, &emp.FirstName, &emp.LastName, &emp.DOB, &emp.Email, &emp.Mobile, &emp.Address, &emp.PrmntAddress, &emp.Image, &emp.Education, &emp.ExperienceYear,
		&emp.ExperienceMonth, &emp.Designation, &emp.DOJ, &emp.EmpCode, &emp.Location, &emp.Gender, &emp.Status,
		&usr.IDUsers, &usr.UserName, &usr.RoleID, &usr.Status, &usr.LinkGeneratedOn,
		&des.IDDesignation, &des.DesignationName, &ed.IDEducations, &ed.Name)
	emp.User = usr
	emp.EducationData = ed
	emp.DesignationData = des
	if err != nil {
		return nil, err
	}
	return emp, nil
}
func (m *mysqlRepo) CreateEmployee(ctx context.Context, emp *cmnmdl.Employees) (int64, error) {
	query := "insert into Employees ( FirstName,LastName,DOB, Email ,Mobile,Address,PrmntAddress,Image,Education,ExperienceYear,ExperienceMonth,Designation,DOJ,EmpCode,Location,Gender,CreatedBy) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

	stmt, err := m.Conn.PrepareContext(ctx, query)
	if err != nil {
		return -1, err
	}
	const shortForm = "2006-01-02"
	ss := emp.DOB
	_DOJ := emp.DOJ
	DOB, _ := time.Parse(shortForm, *ss)
	DOJ, _ := time.Parse(shortForm, *_DOJ)

	res, err := stmt.ExecContext(ctx, &emp.FirstName, &emp.LastName, &DOB, &emp.Email, &emp.Mobile, &emp.Address, &emp.PrmntAddress, &emp.Image, &emp.Education, &emp.ExperienceYear, &emp.ExperienceMonth, &emp.Designation, &DOJ, &emp.EmpCode, &emp.Location, &emp.Gender, &emp.CreatedBy)
	defer stmt.Close()

	if err != nil {
		fmt.Println(err.Error())
		return -1, err
	}

	return res.LastInsertId()
}

func (m *mysqlRepo) CreateUser(ctx context.Context, usr *cmnmdl.User) (int64, error) {
	query := "INSERT INTO users(EmployeeId,Status,Role,CreatedOn,LinkGeneratedOn,CreatedBy) VALUES (?,?,?,now(),now(),?)"
	stmt, err := m.Conn.PrepareContext(ctx, query)
	if err != nil {
		return -1, err
	}
	res, err := stmt.ExecContext(ctx, &usr.EmployeeID, &usr.Status, &usr.RoleID, &usr.CreatedBy)
	defer stmt.Close()
	if err != nil {
		return -1, err
	}
	userid, err := res.LastInsertId()

	baseURL, err := url.Parse("http://localhost:9001")
	if err != nil {
		fmt.Println("Malformed URL: ", err.Error())
		return 0, err
	}
	// Add a Path Segment (Path segment is automatically escaped)
	baseURL.Path += "/UserCreate"
	params := url.Values{}
	params.Add("empid", strconv.Itoa(*usr.EmployeeID))
	baseURL.RawQuery = params.Encode()
	Mail, Name := m.GetMailByUserID(nil, usr.EmployeeID)
	emailRcvr := cmnmdl.Email{}
	emailRcvr.ToAddress = Mail
	emailRcvr.Subject = "AMS Activation Link"
	emailRcvr.Body = "Hi " + Name + "<br/>" + "<p>Please click below link and fill up details to activate your account</p> <br/><a href='" + baseURL.String() + "'>" + baseURL.String() + "</a>"
	go m.SendEmail(&emailRcvr, false)

	return userid, err
}
func (m *mysqlRepo) UpdateUser(mdl *cmnmdl.User) (err error) {
	vals := []interface{}{}
	query := "UPDATE users SET  "
	if *mdl.UserName != "" {
		query += "UserName = ?,"
		vals = append(vals, &mdl.UserName)
	}
	if *mdl.Status != "" {
		query += "Status =? ,"
		vals = append(vals, &mdl.Status)
	} else {
		query += "Status ='Active' ,"

	}
	if *mdl.RoleID != 0 {
		query += "Role =? ,"
		vals = append(vals, &mdl.RoleID)
	}
	if mdl.Password != nil {
		query += "Password =? ,"
		vals = append(vals, &mdl.Password)
	}
	if *mdl.UserName != "" {
		query += " LinkGeneratedOn=null,"

	}
	query += " ModifiedBy=? "
	vals = append(vals, &mdl.ModifiedBy)
	vals = append(vals, &mdl.IDUsers)
	//query = query[0 : len(query)-1]
	query += " WHERE idUsers = ? ;"
	stmt, err := m.Conn.Prepare(query)
	_, err = stmt.Exec(vals...)

	defer stmt.Close()

	return err
}

func (m *mysqlRepo) UpdateEmployee(ctx context.Context, emp *cmnmdl.Employees) (*cmnmdl.Employees, error) {
	query := "UPDATE Employees SET FirstName=?, LastName=?,DOB=?, Email=?,Mobile=?,Address=?,PrmntAddress=?, Image=?, Education=?,ExperienceYear=?,ExperienceMonth=?, Designation=?,DOJ=?,EmpCode=?,Location=?,Gender=?,ModifiedBy=? WHERE IdEmployees=? "

	stmt, err := m.Conn.PrepareContext(ctx, query)
	if err != nil {
		return nil, err
	}
	const shortForm = "2006-01-02"
	ss := emp.DOB
	_DOJ := emp.DOJ
	DOB, _ := time.Parse(shortForm, *ss)
	DOJ, _ := time.Parse(shortForm, *_DOJ)

	_, err = stmt.ExecContext(ctx, &emp.FirstName, &emp.LastName, &DOB, &emp.Email, &emp.Mobile, &emp.Address, &emp.PrmntAddress, &emp.Image, &emp.Education, &emp.ExperienceYear, &emp.ExperienceMonth, &emp.Designation, &DOJ, &emp.EmpCode, &emp.Location, &emp.Gender, &emp.ModifiedBy, &emp.IDEmployees)
	if err != nil {
		return nil, err
	}
	defer stmt.Close()

	return emp, nil
}
func (m *mysqlRepo) DeleteEmployee(ctx context.Context, id *int) error {
	empQry := "delete from Employees  WHERE IdEmployees=?"
	usrQry := "delete from users where EmployeeId=?"

	txn, err := m.Conn.Begin()
	Empstmt, err1 := txn.PrepareContext(ctx, empQry)
	Usrstmt, err2 := txn.PrepareContext(ctx, usrQry)
	if err != nil {
		return err
	}
	_, err3 := Empstmt.ExecContext(ctx, &id)
	_, err4 := Usrstmt.ExecContext(ctx, &id)

	if err != nil || err1 != nil || err2 != nil || err3 != nil || err4 != nil {
		txn.Rollback()
		return err
	}
	err = txn.Commit()

	return err
}

func (m *mysqlRepo) CreateOutWardCart(ctx context.Context, List []*cmnmdl.OutWardCart) error {
	query := "INSERT INTO outwardcart (AssetID,AssetType,AssetName,SenderEmpID,CreatedOn) VALUES "

	vals := []interface{}{}

	for _, row := range List {
		query += " (?,?,?,?,NOW()),"
		vals = append(vals, row.AssetID, row.AssetType, row.AssetName, row.SenderEmpID)
		qry := "delete from outwardcart where AssetID=? and AssetType=?"
		_, _ = m.Conn.Exec(qry, row.AssetID, row.AssetType)
	}
	query = query[0 : len(query)-1]
	stmt, _ := m.Conn.Prepare(query)
	_, err := stmt.Exec(vals...)
	defer stmt.Close()
	if err != nil {
		return err
	}

	return err
}

//______________________________________________________________________________________________
func (m *mysqlRepo) GetVendors(ctx context.Context) ([]*cmnmdl.Vendors, error) {
	selDB, err := m.Conn.QueryContext(ctx, "SELECT idvendors,name,description,websites,address,Email,ContactPersonName,Phone,Status FROM  vendors order by idvendors desc ;")
	if err != nil {
		panic(err.Error())
	}

	res := make([]*cmnmdl.Vendors, 0)
	for selDB.Next() {
		item := new(cmnmdl.Vendors)
		err = selDB.Scan(&item.Idvendors, &item.Name, &item.Description, &item.Websites, &item.Address, &item.Email, &item.ContactPersonName, &item.Phone, &item.Status)
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
func (m *mysqlRepo) GetCountries(ctx context.Context) ([]*cmnmdl.Countries, error) {
	selDB, err := m.Conn.QueryContext(ctx, "SELECT id,sortname,name FROM countries;")
	if err != nil {
		panic(err.Error())
	}

	res := make([]*cmnmdl.Countries, 0)
	for selDB.Next() {
		item := new(cmnmdl.Countries)
		err = selDB.Scan(&item.ID, &item.Sortname, &item.Name)
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
func (m *mysqlRepo) GetStatesByCountry(ctx context.Context, id int) ([]*cmnmdl.States, error) {
	selDB, err := m.Conn.QueryContext(ctx, "SELECT id,name,country_id FROM states where country_id=?", id)
	if err != nil {
		panic(err.Error())
	}

	res := make([]*cmnmdl.States, 0)
	for selDB.Next() {
		item := new(cmnmdl.States)
		err = selDB.Scan(&item.ID, &item.Name, &item.Countryid)
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
func (m *mysqlRepo) GetLocations(ctx context.Context) ([]*cmnmdl.Locations, error) {
	selDB, err := m.Conn.QueryContext(ctx, "call sp_locations()")
	if err != nil {
		panic(err.Error())
	}

	res := make([]*cmnmdl.Locations, 0)
	for selDB.Next() {
		item := new(cmnmdl.Locations)
		err = selDB.Scan(&item.IDLocations, &item.Name, &item.Code, &item.Address1, &item.Address2, &item.Country,
			&item.State, &item.City, &item.Zipcode, &item.Description, &item.CreatedBy, &item.CreatedOn,
			&item.ModifiedBy, &item.ModifiedOn, &item.Countryname, &item.Statename)
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
func (m *mysqlRepo) CreateLocations(ctx context.Context, usr *cmnmdl.Locations) (int64, error) {
	query := "INSERT INTO locations(Name,Address1,Address2,Country,state,city,zipcode,Description,CreatedBy,ModifiedBy,Status)VALUES(?,?,?,?,?,?,?,?,?,?,'Active');"

	stmt, err := m.Conn.PrepareContext(ctx, query)
	if err != nil {
		return -1, err
	}
	res, err := stmt.ExecContext(ctx, usr.Name, usr.Address1, usr.Address2, usr.Country, usr.State, usr.City, usr.Zipcode, usr.Description, 1, 1)
	defer stmt.Close()

	if err != nil {
		return -1, err
	}
	return res.LastInsertId()
}
func (m *mysqlRepo) UpdateLocations(ctx context.Context, usr *cmnmdl.Locations) error {
	query := "update locations set  Name=?, Address1=?, Address2=?, Country=?, state=?, city=?, zipcode=?, Description=?, "
	query += " CreatedBy=?, ModifiedBy=?, Status=? where idLocations=? ; "

	stmt, err := m.Conn.PrepareContext(ctx, query)
	if err != nil {
		return err
	}
	_, err = stmt.ExecContext(ctx, usr.Name, usr.Address1, usr.Address2, usr.Country, usr.State, usr.City, usr.Zipcode, usr.Description, 1, 1, "Active", usr.IDLocations)
	defer stmt.Close()

	if err != nil {
		return err
	}
	return err
}
func (m *mysqlRepo) CreateVendors(ctx context.Context, usr *cmnmdl.Vendors) (int64, error) {
	query := "INSERT INTO vendors(name,description,websites,address,Email,ContactPersonName,Phone,Status,CreatedBy,ModifiedBy)VALUES(?,?,?,?,?,?,?,'Active',1,1);"

	stmt, err := m.Conn.PrepareContext(ctx, query)
	if err != nil {
		return -1, err
	}
	res, err := stmt.ExecContext(ctx, usr.Name, usr.Description, usr.Websites, usr.Address, usr.Email, usr.ContactPersonName, usr.Phone)
	defer stmt.Close()

	if err != nil {
		return -1, err
	}
	return res.LastInsertId()
}
func (m *mysqlRepo) UpdateVendors(ctx context.Context, usr *cmnmdl.Vendors) error {
	query := " update vendors set name=?, description=?, websites=?, address=?, Email=?, ContactPersonName=?, Phone=? where idvendors=? ;"

	stmt, err := m.Conn.PrepareContext(ctx, query)
	if err != nil {
		return err
	}
	_, err = stmt.ExecContext(ctx, usr.Name, usr.Description, usr.Websites, usr.Address, usr.Email, usr.ContactPersonName, usr.Phone, usr.Idvendors)
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

func (m *mysqlRepo) GetOutWardCart(ctx context.Context, SenderEmpID int) ([]*cmnmdl.OutWardCart, error) {
	selDB, err := m.Conn.QueryContext(ctx, "SELECT idOutWardCart,AssetID,AssetType,AssetName,SenderEmpID,CreatedOn FROM outwardcart where SenderEmpID=? ;", SenderEmpID)
	if err != nil {
		panic(err.Error())
	}

	res := make([]*cmnmdl.OutWardCart, 0)
	for selDB.Next() {
		item := new(cmnmdl.OutWardCart)
		err = selDB.Scan(&item.IDOutWardCart, &item.AssetID, &item.AssetType, &item.AssetName, &item.SenderEmpID, &item.CreatedOn)
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

//OutWardAssetDetailsByIwOwID ..
func (m *mysqlRepo) OutWardAssetDetailsByIwOwID(ctx context.Context, IwOwID int) ([]*cmnmdl.InWardOutWardAsset, error) {
	selDB, err := m.Conn.QueryContext(ctx, "call sp_OutWardAssetDetails(?);", IwOwID)
	if err != nil {
		panic(err.Error())
	}
	res := make([]*cmnmdl.InWardOutWardAsset, 0)
	for selDB.Next() {
		item := cmnmdl.InWardOutWardAsset{}
		ITAsset := itassetmdl.ITAssetModel{}
		Consumable := cnsmblemdl.Consumables{}
		ConMst := &cnsmblemdl.Consumablemaster{}
		NonITMst := &nonitassets_mdl.NonITAssets_Master{}
		NonIT := &nonitassets_mdl.NonITAssets{}
		status := cmnmdl.Status{}
		err = selDB.Scan(&item.IDinwardoutwardAssets, &item.Inwardoutwardid, &item.AssetID, &item.AssetType, &item.Quantity,
			&item.ReceivedQuantity, &item.Description, &item.TransferStatus, &item.UpdatedOn,
			&ITAsset.ITAssetName, &ITAsset.ITAssetModel, &ITAsset.ITAssetSerialNo,
			&ITAsset.ITAssetIdentificationNo, &ITAsset.ITAssetPrice, &ITAsset.ITAssetWarranty, &ITAsset.ITAssetStatus,
			&ConMst.ConsumableName, &Consumable.IdentificationNo, &Consumable.ReOrderStockPrice, &Consumable.StatusID,
			&NonITMst.NonITAssets_Name,&NonIT.IdentificationNo,&NonIT.ReOrderStockPrice,&NonIT.AvailableQnty,&NonIT.StatusID,
			&status.StatusName)
		if err != nil {
			panic(err.Error())
		}
		Consumable.Consumablemaster = ConMst
		NonIT.NonITAssets_Master=NonITMst
		item.NonITAsset=NonIT
		item.Status = &status
		item.ITAsset = ITAsset
		item.Consumable = Consumable

		res = append(res, &item)
	}
	if err != nil {
		return nil, err

	}
	defer selDB.Close()
	return res, nil
}

func (m *mysqlRepo) InWardDetailsByEmp(ctx context.Context, RcvrEmpID int) ([]*cmnmdl.InWardOutWard, error) {
	selDB, err := m.Conn.QueryContext(ctx, "call sp_InWardDetails(?);", RcvrEmpID)
	if err != nil {
		panic(err.Error())
	}
	res := make([]*cmnmdl.InWardOutWard, 0)
	for selDB.Next() {
		item := new(cmnmdl.InWardOutWard)
		EmpSndr := new(cmnmdl.Employees)
		EmpRcvr := new(cmnmdl.Employees)
		//EmpAprvr := new(cmnmdl.Employees)
		FrmLoc := new(cmnmdl.Locations)
		ToLoc := new(cmnmdl.Locations)
		status := new(cmnmdl.Status)
		err = selDB.Scan(&item.TotalItems, &item.IDInWardOutWard, &item.TransactionID, &item.ToLocationID, &item.FromLocationID,
			&item.SenderEmpID, &item.ReceiverEmpID, &item.Description, &item.TransferStatus, &item.CreatedOn, &item.StatusUpdatedOn,
			&EmpSndr.IDEmployees, &EmpSndr.Location, &EmpSndr.FirstName, &EmpSndr.LastName, &EmpSndr.Email,
			&EmpRcvr.IDEmployees, &EmpRcvr.Location, &EmpRcvr.FirstName, &EmpRcvr.LastName, &EmpRcvr.Email,
			//&EmpAprvr.IDEmployees, &EmpAprvr.Location, &EmpAprvr.FirstName, &EmpAprvr.LastName, &EmpAprvr.Email,
			&FrmLoc.IDLocations, &FrmLoc.Name, &FrmLoc.Code, &FrmLoc.Address1, &FrmLoc.Address2, &FrmLoc.Country, &FrmLoc.Zipcode,
			&ToLoc.IDLocations, &ToLoc.Name, &ToLoc.Code, &ToLoc.Address1, &ToLoc.Address2, &ToLoc.Country, &ToLoc.Zipcode, &status.StatusName)

		if err != nil {
			panic(err.Error())
		}
		item.SenderEmployee = EmpSndr
		item.ReceiverEmployee = EmpRcvr
	//	item.ApproverEmployee = EmpAprvr
		item.FromLocation = FrmLoc
		item.ToLocation = ToLoc
		item.Status = status
		res = append(res, item)
	}
	if err != nil {
		return nil, err

	}
	defer selDB.Close()
	return res, nil
}

func (m *mysqlRepo) GetAssetdIDsNotEligbleForTransfer(ctx context.Context, trnsfr []*cmnmdl.Transfer) ([]*cmnmdl.Transfer, error) {
	ListOutputRes := []*cmnmdl.Transfer{}
	ITAssetquery := "SELECT idITAssets FROM itassets where ITAssetStatus not in (1)  and idITAssets in (0,"
	for _, val := range trnsfr {
		if *val.AssetType == "itasset" {
			ITAssetquery += strconv.Itoa(*val.AssetID) + ","
		}
	}
	ITAssetquery = ITAssetquery[0 : len(ITAssetquery)-1]
	ITAssetquery += " ) ;"
	ITAssetDB, err := m.Conn.QueryContext(ctx, ITAssetquery)
	if err != nil {
		return nil, err
	}

	for ITAssetDB.Next() {
		var ITAsset int
		Qnty := 1
		Type := "itasset"
		err = ITAssetDB.Scan(&ITAsset)
		ListOutputRes = append(ListOutputRes,
			&cmnmdl.Transfer{AssetID: &ITAsset, AssetType: &Type, Quantity: &Qnty})
		if err != nil {
			return nil, err
		}
	}
	//TotalQnty<=0 or
	Cnsmblquery := "SELECT idconsumables,TotalQnty FROM consumables  where ( StatusID not in (17) ) and idconsumables in (0,"
	for _, val := range trnsfr {
		if *val.AssetType == "consumable" {
			Cnsmblquery += strconv.Itoa(*val.AssetID) + ","
		}
	}
	Cnsmblquery = Cnsmblquery[0 : len(Cnsmblquery)-1]
	Cnsmblquery += " ) ;"
	CnsmblDB, err := m.Conn.QueryContext(ctx, Cnsmblquery)
	if err != nil {
		return nil, err
	}

	for CnsmblDB.Next() {
		trnsfr := cmnmdl.Transfer{}
		Type := "consumable"
		err = CnsmblDB.Scan(&trnsfr.AssetID, &trnsfr.Quantity)
		trnsfr.AssetType = &Type
		ListOutputRes = append(ListOutputRes, &trnsfr)
		if err != nil {
			return nil, err
		}
	}
	//AvailableQnty<=0  and
	NonIT := "SELECT IDNonITAsset,AvailableQnty FROM nonitassets  where  IDNonITAsset in (0,"
	for _, val := range trnsfr {
		if *val.AssetType == "nonitasset" {
			NonIT += strconv.Itoa(*val.AssetID) + ","
		}
	}
	NonIT = NonIT[0 : len(NonIT)-1]
	NonIT += " ) ;"
	NonITDB, err := m.Conn.QueryContext(ctx, NonIT)
	if err != nil {
		return nil, err
	}

	for NonITDB.Next() {
		trnsfr := cmnmdl.Transfer{}
		Type := "nonitasset"
		err = NonITDB.Scan(&trnsfr.AssetID, &trnsfr.Quantity)
		trnsfr.AssetType = &Type
		ListOutputRes = append(ListOutputRes, &trnsfr)
		if err != nil {
			return nil, err
		}
	}
	defer ITAssetDB.Close()
	defer CnsmblDB.Close()
	defer NonITDB.Close()
	return ListOutputRes, err
}

func (m *mysqlRepo) IWOWDetailsByAprvr(ctx context.Context, AprvrEmpID int) ([]*cmnmdl.InWardOutWard, error) {
	selDB, err := m.Conn.QueryContext(ctx, "call sp_OutWardDetailsbyApprvr(?);", AprvrEmpID)
	if err != nil {
		panic(err.Error())
	}
	res := make([]*cmnmdl.InWardOutWard, 0)
	for selDB.Next() {
		item := new(cmnmdl.InWardOutWard)
		EmpSndr := new(cmnmdl.Employees)
		EmpRcvr := new(cmnmdl.Employees)
		EmpAprvr := new(cmnmdl.Employees)
		FrmLoc := new(cmnmdl.Locations)
		ToLoc := new(cmnmdl.Locations)
		status := new(cmnmdl.Status)
		iwowa := new(cmnmdl.InWardOutWardApproval)
		err = selDB.Scan(&item.TotalItems, &item.IDInWardOutWard, &item.TransactionID, &item.ToLocationID, &item.FromLocationID,
			&item.SenderEmpID, &item.ReceiverEmpID, &item.Description, &item.TransferStatus, &item.CreatedOn, &item.StatusUpdatedOn,
			&EmpSndr.IDEmployees, &EmpSndr.Location, &EmpSndr.FirstName, &EmpSndr.LastName, &EmpSndr.Email,
			&EmpRcvr.IDEmployees, &EmpRcvr.Location, &EmpRcvr.FirstName, &EmpRcvr.LastName, &EmpRcvr.Email,
			&EmpAprvr.IDEmployees, &EmpAprvr.Location, &EmpAprvr.FirstName, &EmpAprvr.LastName, &EmpAprvr.Email,
			&FrmLoc.IDLocations, &FrmLoc.Name, &FrmLoc.Code, &FrmLoc.Address1, &FrmLoc.Address2, &FrmLoc.Country, &FrmLoc.Zipcode,
			&ToLoc.IDLocations, &ToLoc.Name, &ToLoc.Code, &ToLoc.Address1, &ToLoc.Address2, &ToLoc.Country, &ToLoc.Zipcode, &status.StatusName,
			&iwowa.IDInwardoutward_Approval, &iwowa.IDinwardoutward, &iwowa.RoleID, &iwowa.ApproverID, &iwowa.Grade, &iwowa.Comments,
			&iwowa.Status, &iwowa.CreatedOn, &iwowa.ActionedOn)

		if err != nil {
			panic(err.Error())
		}
		item.SenderEmployee = EmpSndr
		item.ReceiverEmployee = EmpRcvr
		item.ApproverEmployee = EmpAprvr
		item.FromLocation = FrmLoc
		item.ToLocation = ToLoc
		item.Status = status
		item.InWardOutWardApproval = iwowa
		res = append(res, item)
	}
	if err != nil {
		return nil, err

	}
	defer selDB.Close()
	return res, nil
}

func (m *mysqlRepo) TransferApprovReject(idInWardOutWard int, status string, Commets string) error {

	query := "call sp_TransferApprovReject(?,?,?);"
	stmt, err := m.Conn.Prepare(query)
	stmt.Exec()
	if err != nil {
		return err
	}
	_, err = stmt.Exec(idInWardOutWard, status, Commets)
	defer stmt.Close()
	return err
}

func (m *mysqlRepo) ReceiveIWAssets(obj *cmnmdl.InWardOutWard) error {

	const Statusrcvd = 12
	const StatusPrtllyrcvd = 13
	const StatusNotsrcvd = 15
	const StatusAvailable = 1

	AllRcvd := true
	var err1, err2, err3 error
	txn, err := m.Conn.Begin()
	if err != nil {
		return err
	}

	queryinwardoutward := "update inwardoutwardassets set ReceivedQuantity=?,Description=?,TransferStatus=?,UpdatedOn=now() where idinwardoutwardAssets = ?;"
	queryitassets := "update itassets set Location= ? ,ITAssetStatus=? where idITAssets = ?; "
	queryCnsmbl := "call sp_CnsmblRcvdStck(?,?,?,?)"
	queryNonIT := "call sp_NonITAssetRcvStock(?,?,?,?)"

	for _, dt := range obj.ListInWardOutWardAsset {
		queryitassetsvls := []interface{}{}
		queryCnsmblVals := []interface{}{}
		queryNonITVals := []interface{}{}
		queryinwardoutwardvls := []interface{}{}

		queryinwardoutwardvls = append(queryinwardoutwardvls, dt.ReceivedQuantity, dt.Description, dt.TransferStatus, dt.IDinwardoutwardAssets)

		switch *dt.AssetType {
		case "itasset":
			if *dt.TransferStatus == Statusrcvd {
				queryitassetsvls = append(queryitassetsvls, obj.ToLocationID, StatusAvailable, dt.AssetID)
			} else {
				AllRcvd = false
				queryitassetsvls = append(queryitassetsvls, obj.FromLocationID, StatusNotsrcvd, dt.AssetID)
			}
			_, err1 = txn.Exec(queryitassets, queryitassetsvls...)

		case "consumable":
			if *dt.TransferStatus == Statusrcvd {

				queryCnsmblVals = append(queryCnsmblVals, dt.IDinwardoutwardAssets, obj.FromLocationID, obj.ToLocationID, dt.ReceivedQuantity)
				_, err1 = txn.Exec(queryCnsmbl, queryCnsmblVals...)
			} else if *dt.TransferStatus == StatusPrtllyrcvd {
				AllRcvd = false
				queryCnsmblVals = append(queryCnsmblVals, dt.IDinwardoutwardAssets, obj.FromLocationID, obj.ToLocationID, dt.ReceivedQuantity)
				_, err1 = txn.Exec(queryCnsmbl, queryCnsmblVals...)
			} else {
				AllRcvd = false
				//test
			}
		case "nonitasset":
			if *dt.TransferStatus == Statusrcvd {

				queryNonITVals = append(queryNonITVals, dt.IDinwardoutwardAssets, obj.FromLocationID, obj.ToLocationID, dt.ReceivedQuantity)
				_, err1 = txn.Exec(queryNonIT, queryNonITVals...)
			} else if *dt.TransferStatus == StatusPrtllyrcvd {
				AllRcvd = false
				queryNonITVals = append(queryNonITVals, dt.IDinwardoutwardAssets, obj.FromLocationID, obj.ToLocationID, dt.ReceivedQuantity)
				_, err1 = txn.Exec(queryNonIT, queryNonITVals...)
			} else {
				AllRcvd = false
				//test
			}

		}

		_, err2 = txn.Exec(queryinwardoutward, queryinwardoutwardvls...)

	}
	queryinwardoutwardassetsvals := []interface{}{}
	queryinwardoutwardassets := "update inwardoutward set TransferStatus=?, StatusUpdatedOn=now() where idInWardOutWard = ? ;"
	if AllRcvd { //in transit
		queryinwardoutwardassetsvals = append(queryinwardoutwardassetsvals, Statusrcvd, obj.IDInWardOutWard)
	} else {
		queryinwardoutwardassetsvals = append(queryinwardoutwardassetsvals, StatusPrtllyrcvd, obj.IDInWardOutWard)
		baseURL, _ := url.Parse("http://localhost:9001")
		baseURL.Path += "/InWardDetails"
		// params := url.Values{}
		// params.Add("empid", strconv.Itoa(*obj.ApproverEmpID))
		// baseURL.RawQuery = params.Encode()
		Mail, Name := m.GetMailByUserID(nil, obj.SenderEmpID)
		emailRcvr := cmnmdl.Email{}
		emailRcvr.ToAddress = Mail
		emailRcvr.Subject = "Alert: Missing of Stocks"
		emailRcvr.Body = "Hi " + Name + "<br/>" + "<p>Please click below link to check missing stocks of " + *obj.TransactionID + "</p> <br/><a href='" + baseURL.String() + "'>" + baseURL.String() + "</a>"
		go m.SendEmail(&emailRcvr, false)

		Mail, Name = m.GetMailByUserID(nil, obj.SenderEmpID)
		emailRcvr.ToAddress = Mail
		emailRcvr.Subject = "Alert: Missing of Stocks"
		emailRcvr.Body = "Hi " + Name + "<br/>" + "<p>Please click below link to check missing stocks of " + *obj.TransactionID + "</p> <br/><a href='" + baseURL.String() + "'>" + baseURL.String() + "</a>"
		go m.SendEmail(&emailRcvr, false)
	}
	_, err3 = txn.Exec(queryinwardoutwardassets, queryinwardoutwardassetsvals...)

	// catch all, commit/rollback
	defer func() {
		if err != nil || err1 != nil || err2 != nil || err3 != nil {
			txn.Rollback()
			return
		}
		err = txn.Commit()
	}()

	return err
}

func (m *mysqlRepo) OwStatusChange(OWid int, Status int) error {
	query := "update inwardoutward set TransferStatus = ? where idInWardOutWard = ? ;"
	queryA := "update inwardoutwardassets set TransferStatus = ? where inwardoutwardid = ? ;"
	txn, err := m.Conn.Begin()
	_, err = txn.Exec(query, Status, OWid)
	_, err = txn.Exec(queryA, Status, OWid)
	if err != nil {
		return err
	}
	defer func() {
		if err != nil {
			txn.Rollback()
			return
		}
		err = txn.Commit()
	}()

	return err
}

func (m *mysqlRepo) OutWardDetailsByEmp(ctx context.Context, SenderEmpID int) ([]*cmnmdl.InWardOutWard, error) {
	selDB, err := m.Conn.QueryContext(ctx, "call sp_OutWardDetails(?);", SenderEmpID)
	if err != nil {
		panic(err.Error())
	}
	res := make([]*cmnmdl.InWardOutWard, 0)
	for selDB.Next() {
		item := new(cmnmdl.InWardOutWard)
		EmpSndr := new(cmnmdl.Employees)
		EmpRcvr := new(cmnmdl.Employees)
		//	EmpAprvr := new(cmnmdl.Employees)
		FrmLoc := new(cmnmdl.Locations)
		ToLoc := new(cmnmdl.Locations)
		status := new(cmnmdl.Status)
		err = selDB.Scan(&item.TotalItems, &item.IDInWardOutWard, &item.TransactionID, &item.ToLocationID, &item.FromLocationID,
			&item.SenderEmpID, &item.ReceiverEmpID, &item.Description, &item.TransferStatus, &item.CreatedOn, &item.StatusUpdatedOn,
			&EmpSndr.IDEmployees, &EmpSndr.Location, &EmpSndr.FirstName, &EmpSndr.LastName, &EmpSndr.Email,
			&EmpRcvr.IDEmployees, &EmpRcvr.Location, &EmpRcvr.FirstName, &EmpRcvr.LastName, &EmpRcvr.Email,
			//	&EmpAprvr.IDEmployees, &EmpAprvr.Location, &EmpAprvr.FirstName, &EmpAprvr.LastName, &EmpAprvr.Email,
			&FrmLoc.IDLocations, &FrmLoc.Name, &FrmLoc.Code, &FrmLoc.Address1, &FrmLoc.Address2, &FrmLoc.Country, &FrmLoc.Zipcode,
			&ToLoc.IDLocations, &ToLoc.Name, &ToLoc.Code, &ToLoc.Address1, &ToLoc.Address2, &ToLoc.Country, &ToLoc.Zipcode, &status.StatusName, &item.IsMsngStcksRslvdMain)

		if err != nil {
			panic(err.Error())
		}
		item.SenderEmployee = EmpSndr
		item.ReceiverEmployee = EmpRcvr
		//	item.ApproverEmployee = EmpAprvr
		item.FromLocation = FrmLoc
		item.ToLocation = ToLoc
		item.Status = status
		res = append(res, item)
	}
	if err != nil {
		return nil, err

	}
	defer selDB.Close()
	return res, nil
}
func (m *mysqlRepo) GetStatus(ctx context.Context, typeName string) ([]*cmnmdl.Status, error) {
	selDB, err := m.Conn.QueryContext(ctx, "SELECT  idStatus,StatusName,type FROM status where type = ?", typeName)
	if err != nil {
		panic(err.Error())
	}

	res := make([]*cmnmdl.Status, 0)
	for selDB.Next() {
		mdl := new(cmnmdl.Status)
		err = selDB.Scan(&mdl.IDStatus, &mdl.StatusName, &mdl.Type)
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

//CreateInWardOutWard
func (m *mysqlRepo) CreateInWardOutWard(ctx context.Context, usr *cmnmdl.InWardOutWard) error {
	txn, _ := m.Conn.Begin()

	query := "INSERT INTO inwardoutward (TransactionID,ToLocationID,FromLocationID,SenderEmpID,ReceiverEmpID,Description,TransferStatus,CreatedOn) " +
		" VALUES ( ?,?,?,?,?,?,?,NOW());"

	stmt, err := txn.PrepareContext(ctx, query)
	if err != nil {
		return err
	}
	res, err := stmt.ExecContext(ctx, usr.TransactionID, usr.ToLocationID, usr.FromLocationID, usr.SenderEmpID, usr.ReceiverEmpID,
		usr.Description, usr.TransferStatus)
	if err != nil {
		txn.Rollback()
		return err
	}

	Inwardoutwardid, _ := res.LastInsertId()
	var ITassetIDs []int
	var CnsmblIDs []int
	Cnsmbls := make(map[int]int)
	var NonITIDs []int
	NonIT := make(map[int]int)
	for _, l := range usr.ListInWardOutWardAsset {
		Qry := "INSERT INTO inwardoutwardassets (inwardoutwardid,AssetID,AssetType,Quantity,TransferStatus,UpdatedOn) " +
			"VALUES(?,?,?,?,?,NOW());"
		stmt1, err := txn.PrepareContext(ctx, Qry)
		if err != nil {
			txn.Rollback()
			break
		}
		res, err = stmt1.ExecContext(ctx, Inwardoutwardid, l.AssetID, l.AssetType, l.Quantity, l.TransferStatus)
		if err != nil {
			txn.Rollback()
			break
		}
		if *l.AssetType == "itasset" {
			ITassetIDs = append(ITassetIDs, *l.AssetID)
		} else if *l.AssetType == "consumable" {
			Cnsmbls[*l.AssetID] = *l.Quantity
			CnsmblIDs = append(CnsmblIDs, *l.AssetID)
		}else if *l.AssetType == "nonitasset" {
			NonIT[*l.AssetID] = *l.Quantity
			NonITIDs = append(NonITIDs, *l.AssetID)
		}
	}
	if err != nil {
		txn.Rollback()
		return err
	}

	queryAprvr := " insert into inwardoutward_approval (IDinwardoutward, RoleID, ApproverID, Grade, Status, CreatedOn) values(?,?,?, ?,?,now()); "

	stmtAprvr, err := txn.PrepareContext(ctx, queryAprvr)
	if err != nil {
		txn.Rollback()
		return err
	}
	_, err = stmtAprvr.ExecContext(ctx, Inwardoutwardid, &usr.InWardOutWardApproval.RoleID,
		&usr.InWardOutWardApproval.ApproverID, &usr.InWardOutWardApproval.Grade,
		&usr.InWardOutWardApproval.Status)
	if err != nil {
		txn.Rollback()
		return err
	}

	err = txn.Commit()
	go m.DeleteOutWardCart(ITassetIDs, *usr.SenderEmpID, "itasset")
	go m.DeleteOutWardCart(CnsmblIDs, *usr.SenderEmpID, "consumable")
	go m.DeleteOutWardCart(NonITIDs, *usr.SenderEmpID, "nonitasset")
	const outwardRequest = 9
	go m.ITAssetsStatusChange(ITassetIDs, outwardRequest)
	go m.CosumableQuantityChange(Cnsmbls, CnsmblIDs)
	go m.NonITAssetQuantityChange(NonIT, NonITIDs)

	defer stmt.Close()

	Mail, Name := m.GetMailByUserID(nil, usr.InWardOutWardApproval.ApproverID)
	emailRcvr := cmnmdl.Email{}
	emailRcvr.ToAddress = Mail
	emailRcvr.Subject = "OutWard Request"
	emailRcvr.Body = "Hi " + Name + "<br/>" + "<p>You got new outward approve request.</p>"
	go m.SendEmail(&emailRcvr, false)
	return err
}
func (m *mysqlRepo) DeleteOutWardCart(AssetIds []int, Empid int, AssetType string) error {
	query := "DELETE FROM  outwardcart WHERE SenderEmpID = ? and AssetType= ? and   AssetID in (0,"
	vals := []interface{}{}
	vals = append(vals, Empid)
	vals = append(vals, AssetType)
	for _, row := range AssetIds {
		query += " ?,"
		vals = append(vals, row)
	}
	query = query[0 : len(query)-1]
	query += " ) ;"
	stmt, _ := m.Conn.Prepare(query)
	_, err := stmt.Exec(vals...)
	defer stmt.Close()
	return err
}

func (m *mysqlRepo) ITAssetsStatusChange(AssetIds []int, Status int) error {
	var query strings.Builder
	query.WriteString("update itassets set ITAssetStatus = ? where idITAssets IN ( ")
	ids := []interface{}{}
	ids = append(ids, Status)
	for _, dt := range AssetIds {
		query.WriteString("?,")
		ids = append(ids, dt)
	}
	sqlStr := query.String()
	sqlStr = sqlStr[0 : len(sqlStr)-1]
	sqlStr += " )"

	stmt, err := m.Conn.Prepare(sqlStr)
	if err != nil {
		return err
	}

	_, err = stmt.Exec(ids...)
	defer stmt.Close()
	return err
}
func (m *mysqlRepo) CosumableQuantityChange(cnsmbles map[int]int, ids []int) error {
	var query string
	var err error
	txn, err := m.Conn.Begin()
	for i := range ids {
		query = "update consumables set TotalQnty=TotalQnty-? where idconsumables=?"
		if err != nil {
			return err
		}
		_, err = txn.Exec(query, cnsmbles[ids[i]], ids[i])
		if err != nil {
			txn.Rollback()
			return err
		}
	}

	if err != nil {
		txn.Rollback()
		return err
	}
	err = txn.Commit()
	return err
}
func (m *mysqlRepo) NonITAssetQuantityChange(cnsmbles map[int]int, ids []int) error {
	var query string
	var err error
	txn, err := m.Conn.Begin()
	for i := range ids {
		query = "update nonitassets set TotalQnty=TotalQnty-?, AvailableQnty=AvailableQnty-? where IDNonITAsset=?"
		if err != nil {
			return err
		}
		_, err = txn.Exec(query, cnsmbles[ids[i]],cnsmbles[ids[i]], ids[i])
		if err != nil {
			txn.Rollback()
			return err
		}
	}

	if err != nil {
		txn.Rollback()
		return err
	}
	err = txn.Commit()
	return err
}

func (m *mysqlRepo) UpdateIsMsngStcksRslvdMain(ctx context.Context, IDInWardOutWard int) error {

	query := "update inwardoutward set IsMsngStcksRslvdMain=1 where idInWardOutWard=?"
	stmt, err := m.Conn.Prepare(query)
	if err != nil {
		return err
	}
	_, err = stmt.Exec(IDInWardOutWard)
	defer stmt.Close()

	return err
}

func (m *mysqlRepo) Employees_Bulk_Insert(ctx context.Context, Listmdl []*cmnmdl.Employees) error {
	var query strings.Builder
	query.WriteString("insert into employees (FirstName,LastName,DOB,Email,Mobile,PrmntAddress,Address,DOJ,EmpCode,CreatedBy) values ")

	vals := []interface{}{}
	const shortForm = "2006-01-02"
	for _, row := range Listmdl {
		query.WriteString(" (?,?,?,?,  ?,?,?,?,?,? ),")

		_DOB := row.DOB
		_DOJ := row.DOJ
		DOB, _ := time.Parse(shortForm, *_DOB)
		DOJ, _ := time.Parse(shortForm, *_DOJ)
		vals = append(vals, &row.FirstName, &row.LastName, &DOB, &row.Email, &row.Mobile, &row.PrmntAddress, &row.Address, &DOJ, &row.EmpCode, &row.CreatedBy)
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

func (m *mysqlRepo) Resend_Activation_Link(ctx context.Context, EmpID int) error {
	query := "update users set LinkGeneratedOn=now() where Status='Active' and EmployeeId=?"

	stmt, err := m.Conn.PrepareContext(ctx, query)
	if err != nil {
		return err
	}
	_, err = stmt.ExecContext(ctx, EmpID)
	defer stmt.Close()

	if err != nil {
		return err
	}

	baseURL, err := url.Parse("http://localhost:9001")
	// Add a Path Segment (Path segment is automatically escaped)
	baseURL.Path += "/UserCreate"
	params := url.Values{}
	params.Add("empid", strconv.Itoa(EmpID))
	baseURL.RawQuery = params.Encode()
	Mail, Name := m.GetMailByUserID(nil, &EmpID)
	emailRcvr := cmnmdl.Email{}
	emailRcvr.ToAddress = Mail
	emailRcvr.Subject = "AMS Activation Link"
	emailRcvr.Body = "Hi " + Name + "<br/>" + "<p>Please click below link and fill up details to activate your account</p> <br/><a href='" + baseURL.String() + "'>" + baseURL.String() + "</a>"
	go m.SendEmail(&emailRcvr, false)
	return err
}

func (m *mysqlRepo) GetAuthorizationList_ByRole(RoleID int) ([]*cmnmdl.Authorization, error) {
	selDB, err := m.Conn.Query("call sp_AuthorizationListByRole(?)", RoleID)
	if err != nil {
		panic(err.Error())
	}
	res := make([]*cmnmdl.Authorization, 0)
	for selDB.Next() {
		auth := new(cmnmdl.Authorization)
		ftr := new(cmnmdl.Features_List)
		rl := new(cmnmdl.Role)
		err = selDB.Scan(&auth.IDAuthorization, &auth.RoleID, &auth.Features_List_ID, &auth.CreatedOn, &auth.CreatedBy,
			&ftr.IDFeatures_list, &ftr.Feature_Name, &ftr.Module, &ftr.CreatedOn,
			&rl.IDRoles, &rl.RoleName)
		if err != nil {
			panic(err.Error())
		}
		auth.Role = rl
		auth.Features_List = ftr
		auth.Role = rl
		res = append(res, auth)
	}
	if err != nil {
		return nil, err

	}
	defer selDB.Close()
	return res, nil
}

func (m *mysqlRepo) GetFeatures_List() ([]*cmnmdl.Features_List, error) {
	selDB, err := m.Conn.Query("SELECT idFeatures_list, Feature_Name, Module, CreatedOn FROM features_list;")
	if err != nil {
		panic(err.Error())
	}

	res := make([]*cmnmdl.Features_List, 0)
	for selDB.Next() {
		mdl := new(cmnmdl.Features_List)
		err = selDB.Scan(&mdl.IDFeatures_list, &mdl.Feature_Name, &mdl.Module, &mdl.CreatedOn)
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

func (m *mysqlRepo) Send_ResetPasswordLink(ctx context.Context, EmpID int) error {

	baseURL, err := url.Parse("http://localhost:9001")
	// Add a Path Segment (Path segment is automatically escaped)
	baseURL.Path += "/ResetPassword"
	params := url.Values{}
	params.Add("empid", strconv.Itoa(EmpID))
	baseURL.RawQuery = params.Encode()
	Mail, Name := m.GetMailByUserID(nil, &EmpID)
	emailRcvr := cmnmdl.Email{}
	emailRcvr.ToAddress = Mail
	emailRcvr.Subject = "AMS Reset Password Link"
	emailRcvr.Body = "Hi " + Name + "<br/>" + "<p>Please click below link and Reset Password</p> <br/><a href='" + baseURL.String() + "'>" + baseURL.String() + "</a>"
	go m.SendEmail(&emailRcvr, false)
	return err
}
func (m *mysqlRepo) User_Inactive(UserID int) error {
	query := "update users set Status='InActive' where idUsers=?  ;"

	txn, err := m.Conn.Begin()

	_, err = txn.Exec(query, UserID)
	if err != nil {
		return err
	}
	defer func() {
		if err != nil {
			txn.Rollback()
			return
		}
		err = txn.Commit()
	}()

	return err
}

func (m *mysqlRepo) Authorization_Create(ctx context.Context, data *cmnmdl.Authorization_Create) error {
	queryA := "delete from authorization where RoleID=?;"
	queryB := "insert into authorization (RoleID,Features_List_ID,CreatedBy) values "

	res := []interface{}{}
	//roleid:=1 //super admin
	//AccesstoalllocationsID:=16
	//res = append(res, roleid, AccesstoalllocationsID, data.CreatedBy)

	for _, i := range data.Features_List_ID {
		queryB += " (?,?,?),"
		res = append(res, data.RoleID, i, data.CreatedBy)
	}
	queryB = queryB[0 : len(queryB)-1]
	txn, err := m.Conn.Begin()

	_, err3 := txn.ExecContext(ctx, queryA, data.RoleID)
	_, err4 := txn.ExecContext(ctx, queryB, res...)
	if err != nil {
		return err
	}
	defer func() {
		if err != nil || err3 != nil || err4 != nil {
			txn.Rollback()
			return
		}
		err = txn.Commit()
	}()

	return err
}

func (m *mysqlRepo) User_Active(UserID int) error {
	query := "update users set Status='Active' where idUsers=?  ;"

	txn, err := m.Conn.Begin()

	_, err = txn.Exec(query, UserID)
	if err != nil {
		return err
	}
	defer func() {
		if err != nil {
			txn.Rollback()
			return
		}
		err = txn.Commit()
	}()

	return err
}
func (m *mysqlRepo) Check_Unique_Email_Mobile(ctx context.Context, emp *cmnmdl.Employees) (*cmnmdl.Employees, error) {
	query := "select email,Mobile from employees where (email = ? or mobile =?) and IdEmployees!=? ;"
	selDB := m.Conn.QueryRowContext(ctx, query, &emp.Email, &emp.Mobile, &emp.IDEmployees)
	usr := cmnmdl.Employees{}
	err := selDB.Scan(&usr.Email, &usr.Mobile)
	if err != nil {
		if err == sql.ErrNoRows {
			return nil, nil
		} else {
			return nil, err
		}

	} else {
		return &usr, nil
	}
}

func (m *mysqlRepo) Check_Unique_UserName(ctx context.Context, UsrNme string) (*string, error) {
	query := "SELECT UserName FROM users where UserName=?;"
	selDB := m.Conn.QueryRowContext(ctx, query, &UsrNme)
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

//pass 0 to get all records
func (m *mysqlRepo) GetEmployee_History_ByEmpID(ctx context.Context, EmpID int) ([]*cmnmdl.Employees, error) {
	query := "call sp_GetEmployee_History_ByEmpID(?)"
	selDB, _ := m.Conn.QueryContext(ctx, query, EmpID)
	res := make([]*cmnmdl.Employees, 0)
	for selDB.Next() {
		emp := new(cmnmdl.Employees)
		ed := new(cmnmdl.Educations)
		des := new(cmnmdl.Designation)
		CrtdBy := new(cmnmdl.Employees)
		err := selDB.Scan(&emp.IDEmployees, &emp.FirstName, &emp.LastName, &emp.EmpCode, &emp.DOB, &emp.Email, &emp.Mobile, &emp.Address, &emp.PrmntAddress, &emp.Image, &emp.Education, &emp.ExperienceYear,
			&emp.ExperienceMonth, &emp.Designation, &emp.DOJ, &emp.Location, &emp.Gender, &emp.Status, &emp.CreatedOn, &emp.CreatedBy, &emp.ActionPerformed,
			&des.IDDesignation, &des.DesignationName, &ed.IDEducations, &ed.Name,
			&CrtdBy.IDEmployees, &CrtdBy.FirstName, &CrtdBy.LastName)
		emp.EducationData = ed
		emp.DesignationData = des
		emp.CreatedByData = CrtdBy
		if err != nil {
			fmt.Println(err.Error())
			return nil, err

		}
		res = append(res, emp)
	}
	return res, nil
}

func (m *mysqlRepo) Get_UsersHistory_ByEmpID(ctx context.Context, EmpID int) ([]*cmnmdl.Employees, error) {
	query := "call sp_UsersHistory_ByEmpID(?)"
	selDB, _ := m.Conn.QueryContext(ctx, query, EmpID)
	res := make([]*cmnmdl.Employees, 0)
	for selDB.Next() {
		usr := new(cmnmdl.User)
		emp := new(cmnmdl.Employees)
		des := new(cmnmdl.Designation)
		ed := new(cmnmdl.Educations)
		rl := new(cmnmdl.Role)
		CrtdBy := new(cmnmdl.Employees)
		err := selDB.Scan(&usr.IDUsers, &usr.EmployeeID, &usr.UserName, &usr.Status, &usr.RoleID, &usr.LinkGeneratedOn, &usr.CreatedOn, &usr.CreatedBy,
			&emp.IDEmployees, &emp.FirstName, &emp.LastName, &emp.Email, &emp.Mobile, &emp.EmpCode, &emp.Location, &emp.ActionPerformed,
			&ed.IDEducations, &ed.Name,
			&des.IDDesignation, &des.DesignationName, &rl.IDRoles, &rl.RoleName, &CrtdBy.FirstName, &CrtdBy.LastName)
		usr.Role = rl
		emp.User = usr
		emp.EducationData = ed
		emp.DesignationData = des
		emp.CreatedByData = CrtdBy
		if err != nil {
			fmt.Println(err.Error())
			return nil, err

		}
		res = append(res, emp)
	}
	return res, nil
}

func (m *mysqlRepo) Activivty_Log_List(ctx context.Context, EmpID int, FromDate string, ToDate string) ([]*cmnmdl.ActivityLog, error) {
	query := "select IDHistory, IDMaintable, CreatedOn, ActionPerformed, CreatedBy, Module, Name, ActionedByFirstName, "
	query += " ActionedByLastName from view_activitylog where createdby=? and CreatedOn BETWEEN  ? AND ? order by  CreatedOn desc; "
	stmnt, err := m.Conn.PrepareContext(ctx, query)
	if err != nil {
		return nil, err
	}

	selDB, err := stmnt.QueryContext(ctx, &EmpID, &FromDate, &ToDate)
	if err != nil {
		return nil, err
	}
	res := make([]*cmnmdl.ActivityLog, 0)
	for selDB.Next() {
		mdl := cmnmdl.ActivityLog{}
		err := selDB.Scan(&mdl.IDHistory, &mdl.IDMaintable, &mdl.CreatedOn, &mdl.ActionPerformed, &mdl.CreatedBy, &mdl.Module, &mdl.Name, &mdl.ActionedByFirstName,
			&mdl.ActionedByLastName)

		if err != nil {
			fmt.Println(err.Error())
			return nil, err

		}
		res = append(res, &mdl)
	}
	return res, nil
}

func (m *mysqlRepo) MultiLevelApproval(ctx context.Context) ([]*cmnmdl.MultiLevelApproval_Main, error) {
	query := "SELECT mn.IDMultiLevelApproval_Main, mn.FeatureName,mn.Module, mn.Levels, mn.CreatedBy, mn.CreatedOn"
	query += " FROM multilevelapproval_main mn "
	selDB, err := m.Conn.QueryContext(ctx, query)
	if err != nil {
		return nil, err
	}
	res := make([]*cmnmdl.MultiLevelApproval_Main, 0)
	for selDB.Next() {
		mdl := cmnmdl.MultiLevelApproval_Main{}
		err := selDB.Scan(&mdl.IDMultiLevelApproval_Main, &mdl.FeatureName, &mdl.Module, &mdl.Levels,
			&mdl.CreatedBy, &mdl.CreatedOn)
		if err != nil {
			return nil, err
		}
		res = append(res, &mdl)
	}
	return res, nil
}
func (m *mysqlRepo) MultiLevelApproval_Map(ctx context.Context) ([]*cmnmdl.MultiLevelApproval_Main, error) {
	query := "select mn.IDMultiLevelApproval_Main, mn.FeatureName, mn.Module, mn.Levels, mn.CreatedBy, mn.CreatedOn, "
	query += " mp.IDMultiLevelApproval_Map,mp.MultiLevelApproval_Main_ID,mp.RoleID,mp.CreatedOn,mp.CreatedBy ,mp.Grade, "
	query += " rl.idRoles,rl.RoleName FROM  multilevelapproval_main mn join "
	query += "  multilevelapproval_map mp  on mn.IDMultiLevelApproval_Main=mp.MultiLevelApproval_Main_ID "
	query += "  join roles rl on rl.idRoles=mp.RoleID order by mp.IDMultiLevelApproval_Map ; "
	selDB, err := m.Conn.QueryContext(ctx, query)
	if err != nil {
		return nil, err
	}
	mapList := make([]*cmnmdl.MultiLevelApproval_Main, 0)
	for selDB.Next() {
		mn := cmnmdl.MultiLevelApproval_Main{}
		mp := cmnmdl.MultiLevelApproval_Map{}
		rl := cmnmdl.Role{}
		err := selDB.Scan(&mn.IDMultiLevelApproval_Main, &mn.FeatureName, &mn.Module, &mn.Levels, &mn.CreatedBy, &mn.CreatedOn,
			&mp.IDMultiLevelApproval_Map, &mp.MultiLevelApproval_Main_ID,
			&mp.RoleID, &mp.CreatedOn, &mp.CreatedBy, &mp.Grade, &rl.IDRoles, &rl.RoleName)
		if err != nil {
			return nil, err
		}
		mp.Role = &rl
		mn.MultiLevelApproval_Map = &mp
		mapList = append(mapList, &mn)

	}
	return mapList, nil
}

func (m *mysqlRepo) MultiLevelApproval_config(ctx context.Context, mdl []*cmnmdl.MultiLevelApproval_Main) error {
	txn, err := m.Conn.Begin()
	MapDltquery := "delete from   multilevelapproval_map   ;"
	_, err = txn.ExecContext(ctx, MapDltquery)
	if err != nil {
		txn.Rollback()
		return err
	}
	for _, itm := range mdl {
		mainquery := "update multilevelapproval_main set Levels=?,CreatedBy=? where IDMultiLevelApproval_Main=?;"
		_, err1 := txn.ExecContext(ctx, mainquery, &itm.Levels, &itm.CreatedBy, &itm.IDMultiLevelApproval_Main)
		//	_, err2 := mainstmt.ExecContext(ctx,)

		Mapquery := "insert into  multilevelapproval_map ( MultiLevelApproval_Main_ID, RoleID, CreatedBy,Grade) values "

		vals := []interface{}{}
		for i := 0; i < len(itm.MultiLevelApproval_Map_List); i++ {
			row := itm.MultiLevelApproval_Map_List[i]
			Mapquery += " (?,?,?,?),"
			vals = append(vals, &itm.IDMultiLevelApproval_Main, &row.RoleID, &row.CreatedBy, len(itm.MultiLevelApproval_Map_List)-i)
		}
		// for _, row := range itm.MultiLevelApproval_Map_List {
		// 	Mapquery += " (?,?,?),"
		// 	vals = append(vals, &itm.IDMultiLevelApproval_Main, &row.RoleID, &row.CreatedBy)
		// }
		Mapquery = Mapquery[0 : len(Mapquery)-1]
		_, err3 := txn.ExecContext(ctx, Mapquery, vals...)
		//_, err4 := stmt.Exec()

		if err1 != nil || err3 != nil {
			txn.Rollback()
			return err
		}

	}

	err = txn.Commit()

	return err
}

func (m *mysqlRepo) GetApprovers(ctx context.Context, LocID int, ROleID int) ([]*cmnmdl.User, error) {
	selDB, err := m.Conn.QueryContext(ctx, "call sp_GetApprovers(?,?)", LocID, ROleID)
	if err != nil {
		panic(err.Error())
	}
	res := make([]*cmnmdl.User, 0)
	for selDB.Next() {
		usr := new(cmnmdl.User)
		emp := new(cmnmdl.Employees)
		rl := new(cmnmdl.Role)
		err = selDB.Scan(&usr.IDUsers, &usr.EmployeeID, &usr.UserName, &usr.Status, &usr.RoleID,
			&emp.IDEmployees, &emp.FirstName, &emp.LastName, &emp.DOB, &emp.Email, &emp.Mobile,
			&emp.Image, &emp.EmpCode, &emp.Location, &emp.Status, &rl.IDRoles, &rl.RoleName)
		usr.Employee = emp
		usr.Role = rl
		if err != nil {
			panic(err.Error())
		}
		res = append(res, usr)
	}
	if err != nil {
		return nil, err

	}
	defer selDB.Close()
	return res, nil
}

func (m *mysqlRepo) VendorsAssetDetails(ctx context.Context, VendorID int) ([]*cmnmdl.VendorsAssetDetails, error) {
	query := "call sp_vendorsAssetDetailes(?)"
	selDB, _ := m.Conn.QueryContext(ctx, query, VendorID)
	res := make([]*cmnmdl.VendorsAssetDetails, 0)
	for selDB.Next() {
		obj := new(cmnmdl.VendorsAssetDetails)
		vcm := new(cmnmdl.Vendors_consumablemaster_map)
		cm := new(cnsmblemdl.Consumablemaster)
		vend := new(cmnmdl.Vendors)
		cg := new(cnsmblemdl.ConsumableGroup)

		err := selDB.Scan(&vcm.IDVendors_ConsumableMaster_Map, &vcm.ConsumableMasterID, &vcm.VendorsID, &vcm.PriceperUnit, &vcm.ItemType, &vcm.CreatedBy,
			&vcm.CreatedOn, &vcm.VendorRfrdAssetName, &cm.IDconsumableMaster, &cm.ConsumableName, &cm.Description,
			&cg.IDconsumablegroups, &cg.ConsumableGroupName, &obj.CreatedBy, &vend.Idvendors, &vend.Name, &vend.Description, &vend.Websites, &vend.Address, &vend.Email,
			&vend.ContactPersonName, &vend.Phone)
		obj.Consumablegroups = cg
		obj.Vendors_consumablemaster_map = vcm
		obj.Consumablemaster = cm
		obj.Vendors = vend
		if err != nil {
			fmt.Println(err.Error())
			return nil, err

		}
		res = append(res, obj)
	}
	return res, nil
}

func (m *mysqlRepo) VednorsAssetMapInsert(ctx context.Context, mdl *cmnmdl.Vendors_consumablemaster_map) error {
	query := "insert into vendors_consumablemaster_map ( ConsumableMasterID, VendorsID, "
	query += " PriceperUnit, ItemType, CreatedBy, CreatedOn, VendorRfrdAssetName) values(?,?, ?,?, ?,now(),?) "

	stmt, err := m.Conn.PrepareContext(ctx, query)
	if err != nil {
		return err
	}
	_, err = stmt.ExecContext(ctx, &mdl.ConsumableMasterID, &mdl.VendorsID, &mdl.PriceperUnit, &mdl.ItemType,
		&mdl.CreatedBy, &mdl.VendorRfrdAssetName)
	defer stmt.Close()

	if err != nil {
		fmt.Println(err.Error())
		return err
	}

	return err
}

func (m *mysqlRepo) VednorsAssetMapUpdate(ctx context.Context, mdl *cmnmdl.Vendors_consumablemaster_map) error {
	query := "update vendors_consumablemaster_map set ConsumableMasterID=?, VendorsID=?, "
	query += " PriceperUnit=?, ItemType=?, CreatedBy=?, CreatedOn=now(), VendorRfrdAssetName=?   where ConsumableMasterID =? and VendorsID=?; "

	stmt, err := m.Conn.PrepareContext(ctx, query)
	if err != nil {
		return err
	}
	_, err = stmt.ExecContext(ctx, &mdl.ConsumableMasterID, &mdl.VendorsID, &mdl.PriceperUnit, &mdl.ItemType,
		&mdl.CreatedBy, &mdl.VendorRfrdAssetName, &mdl.ConsumableMasterID, &mdl.VendorsID)
	defer stmt.Close()

	if err != nil {
		fmt.Println(err.Error())
		return err
	}

	return err
}

func (m *mysqlRepo) IWOW_ApprovalStatusList(ctx context.Context, IDinwardoutward int) ([]*cmnmdl.InWardOutWardApproval, error) {
	query := "select iwa.IDInwardoutward_Approval, iwa.IDinwardoutward, iwa.RoleID, iwa.ApproverID, iwa.Grade, iwa.Comments,"
	query += "	iwa.Status, iwa.CreatedOn, iwa.ActionedOn,rl.RoleName, Aprvr.FirstName,st.StatusName"
	query += " from inwardoutward_approval iwa "
	query += " join employees Aprvr on aprvr.IdEmployees=iwa.ApproverID"
	query += " join roles rl on rl.idRoles=iwa.RoleID"
	query += "	join status st on st.idStatus=iwa.Status"
	query += " where iwa.IDinwardoutward=? ;"

	selDB, err := m.Conn.QueryContext(ctx, query, IDinwardoutward)
	if err != nil {
		fmt.Println(err.Error())
		return nil, err
	}
	res := make([]*cmnmdl.InWardOutWardApproval, 0)
	for selDB.Next() {
		iwa := new(cmnmdl.InWardOutWardApproval)
		err := selDB.Scan(&iwa.IDInwardoutward_Approval, &iwa.IDinwardoutward, &iwa.RoleID, &iwa.ApproverID, &iwa.Grade, &iwa.Comments,
			&iwa.Status, &iwa.CreatedOn, &iwa.ActionedOn, &iwa.RoleName, &iwa.ApproverName, &iwa.StatusName)

		if err != nil {
			fmt.Println(err.Error())
			return nil, err
		}

		res = append(res, iwa)
	}
	return res, nil
}

func (m *mysqlRepo) InwardOutwardReqForward(ctx context.Context, mdl *cmnmdl.InWardOutWardApproval) error {
	query := "update inwardoutward_approval set Status=10 , Comments=?,ActionedOn=now() where IDInwardoutward_Approval=?; "
	txn, err := m.Conn.Begin()
	stmnt, _ := txn.PrepareContext(ctx, query)
	_, err2 := stmnt.Exec(&mdl.Comments, &mdl.IDInwardoutward_Approval)
	if err2 != nil {
		txn.Rollback()
		return err2
	}

	Apprvlquery := " insert into inwardoutward_approval (IDinwardoutward, RoleID, ApproverID, Grade, Status) "
	Apprvlquery += "	values(?,?,? ,?,9) "
	stmtApprvl, err3 := txn.Prepare(Apprvlquery)

	if err3 != nil {
		txn.Rollback()
		return err3
	}
	_, err4 := stmtApprvl.Exec(&mdl.IDinwardoutward, &mdl.NextRoleID, &mdl.NextApproverID, &mdl.NextGrade)

	if err4 != nil {
		txn.Rollback()
		return err4
	}

	AprvrMail, AprvrName := m.GetMailByUserID(nil, mdl.NextApproverID)
	Subject := "Outward Request Approval"
	Msg := "<p>Hai " + AprvrName + "</p><p>One New Outward Request forwarded to you. Please check the Outward Approval list</p>"
	emailAprvr := cmnmdl.Email{
		ToAddress: AprvrMail,
		Subject:   Subject,
		Body:      Msg,
	}
	go m.SendEmail(&emailAprvr, false)
	err = txn.Commit()
	return err
}


func (m *mysqlRepo) GetAdminDashBoard(ctx context.Context, mdl *cmnmdl.AdminDashBoard) (*cmnmdl.AdminDashBoard, error) {
	query := "call sp_AdminDashBoard(?,?) ;"
	selDB:= m.Conn.QueryRowContext(ctx, query, mdl.EmpID,mdl.LocID)
	res:= cmnmdl.AdminDashBoard{}
		err := selDB.Scan(&res.ActivationPendingUsers, &res.InActiveUsers, &res.ITAssetWarrentyExpired,  &res.ITAssetApprovals, &res.NonITAssetApprovals,  &res.ITAssetsAvailable, 
			&res.ITAssetsAssigned,&res.NonITAssetThreshold,&res.ConsumableThreshold,&res.OutwardApproval,&res.ReadyToShip,&res.InWardAssets, &res.ITAssetServiceRequests)
		if err != nil {
			fmt.Println(err.Error())
			return nil, err
		}
	
	return &res, nil
}

func (m *mysqlRepo) GetEmployeeDashboard(ctx context.Context, mdl *cmnmdl.EmployeeDashboard) (*cmnmdl.EmployeeDashboard, error) {
	query := "call sp_EmployeeDashboard(?,?) ;"
	selDB:= m.Conn.QueryRowContext(ctx, query, mdl.EmpID,mdl.LocID)
	res:= cmnmdl.EmployeeDashboard{}
		err := selDB.Scan(&res.ITAssetsAssigned, &res.NonITAssetsAssigned, &res.NonITAssetRequests, &res.ITAssetRequests, &res.ITAssetServiceRequests)
		if err != nil {
			fmt.Println(err.Error())
			return nil, err
		}
	
	return &res, nil
}