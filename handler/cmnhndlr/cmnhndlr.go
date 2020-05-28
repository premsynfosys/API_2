package cmnhndlr

import (
	"encoding/json"
	"log"
	"net/http"
	"strconv"

	"github.com/gorilla/mux"
	"github.com/premsynfosys/AMS_API/DBdriver"
	"github.com/premsynfosys/AMS_API/models/cmnmdl"
	"github.com/premsynfosys/AMS_API/repository/cmnrepo"
	"github.com/premsynfosys/AMS_API/utils"
)

// CmnIrepo ..
type CmnIrepo struct {
	ICmnrepo cmnrepo.CmnIntrfc
}

//NewCommonHandler ..
func NewCommonHandler(db *DBdriver.DB) *CmnIrepo {
	return &CmnIrepo{
		ICmnrepo: cmnrepo.NewSQLRepo(db.SQLDB),
	}
}

// GetRoles ..
func (p *CmnIrepo) GetRoles(w http.ResponseWriter, r *http.Request) {
	s, err := p.ICmnrepo.GetRoles(r.Context())
	if err != nil {
		utils.RespondWithError(w, http.StatusNoContent, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, s)
	}
}

// GetDesignations ..
func (p *CmnIrepo) GetDesignations(w http.ResponseWriter, r *http.Request) {
	s, err := p.ICmnrepo.GetDesignations(r.Context())
	if err != nil {
		utils.RespondWithError(w, http.StatusNoContent, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, s)
	}
}

// GetEducations ..
func (p *CmnIrepo) GetEducations(w http.ResponseWriter, r *http.Request) {
	s, err := p.ICmnrepo.GetEducations(r.Context())
	if err != nil {
		utils.RespondWithError(w, http.StatusNoContent, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, s)
	}
}

//GetUsers ..
func (p *CmnIrepo) GetUsers(w http.ResponseWriter, r *http.Request) {
	LocID, _ := strconv.Atoi(r.URL.Query().Get("LocID"))
	s, _ := p.ICmnrepo.GetUsers(r.Context(), LocID)
	respondwithJSON(w, http.StatusOK, s)
}

//GetNotifications ..
func (p *CmnIrepo) GetNotifications(w http.ResponseWriter, r *http.Request) {
	s, _ := p.ICmnrepo.GetNotifications(r.Context())
	respondwithJSON(w, http.StatusOK, s)
}

// respondwithJSON write json response format
func respondwithJSON(w http.ResponseWriter, code int, payload interface{}) {
	response, _ := json.Marshal(payload)

	w.Header().Set("Content-Type", "application/json")
	w.WriteHeader(code)
	w.Write(response)
}

// respondwithError return error message
func respondWithError(w http.ResponseWriter, code int, msg string) {
	log.Printf(msg)
	respondwithJSON(w, code, map[string]string{"message": msg})
}

// Login a post by id
func (p *CmnIrepo) Login(w http.ResponseWriter, r *http.Request) {
	data := cmnmdl.User{}
	json.NewDecoder(r.Body).Decode(&data)
	payload, err := p.ICmnrepo.Login(r.Context(), &data)
	if err != nil {
		respondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		respondwithJSON(w, http.StatusOK, payload)
	}
}

// GetEmployees all post data
func (p *CmnIrepo) GetEmployees(w http.ResponseWriter, r *http.Request) {
	LocID, _ := strconv.Atoi(r.URL.Query().Get("LocID"))
	payload, _ := p.ICmnrepo.GetEmployees(r.Context(), LocID)

	utils.RespondwithJSON(w, http.StatusOK, payload)
}

//GetEmployeeByID  returns user details
func (p *CmnIrepo) GetEmployeeByID(w http.ResponseWriter, r *http.Request) {
	params := mux.Vars(r)
	ID := params["id"]
	id, _ := strconv.Atoi(ID)
	payload, err := p.ICmnrepo.GetEmployeeByID(r.Context(), id)
	if err != nil {
		utils.RespondWithError(w, http.StatusNoContent, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, payload)
	}
}

//CreateEmployee a new post
func (p *CmnIrepo) CreateEmployee(w http.ResponseWriter, r *http.Request) {
	usr := cmnmdl.Employees{}
	json.NewDecoder(r.Body).Decode(&usr)

	newID, err := p.ICmnrepo.CreateEmployee(r.Context(), &usr)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {

		utils.RespondwithJSON(w, http.StatusOK, map[string]int64{"id": newID})
	}
}

//CreateUser a new post
func (p *CmnIrepo) CreateUser(w http.ResponseWriter, r *http.Request) {
	usr := cmnmdl.User{}
	json.NewDecoder(r.Body).Decode(&usr)
	newID, err := p.ICmnrepo.CreateUser(r.Context(), &usr)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {

		utils.RespondwithJSON(w, http.StatusOK, map[string]int64{"id": newID})
	}
}

// UpdateUser a post by id
func (p *CmnIrepo) UpdateUser(w http.ResponseWriter, r *http.Request) {
	data := cmnmdl.User{}
	json.NewDecoder(r.Body).Decode(&data)
	err := p.ICmnrepo.UpdateUser(&data)

	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, nil)
	}
}

// UpdateEmployee a post by id
func (p *CmnIrepo) UpdateEmployee(w http.ResponseWriter, r *http.Request) {
	data := cmnmdl.Employees{}
	json.NewDecoder(r.Body).Decode(&data)
	payload, err := p.ICmnrepo.UpdateEmployee(r.Context(), &data)

	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {

		utils.RespondwithJSON(w, http.StatusOK, payload)
	}
}

// DeleteEmployee a post
func (p *CmnIrepo) DeleteEmployee(w http.ResponseWriter, r *http.Request) {
	params := mux.Vars(r)
	ID := params["id"]
	id, _ := strconv.Atoi(ID)
	err := p.ICmnrepo.DeleteEmployee(r.Context(), &id)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, "Server Error")
	} else {

		utils.RespondwithJSON(w, http.StatusOK, nil)
	}
}

//______________________________________________________________________________________________
// GetVendors all post data
func (p *CmnIrepo) GetVendors(w http.ResponseWriter, r *http.Request) {
	payload, _ := p.ICmnrepo.GetVendors(r.Context())

	utils.RespondwithJSON(w, http.StatusOK, payload)
}

//GetCountries ..
func (p *CmnIrepo) GetCountries(w http.ResponseWriter, r *http.Request) {
	payload, err := p.ICmnrepo.GetCountries(r.Context())
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, payload)
	}
}

//GetStatesByCountry ..
func (p *CmnIrepo) GetStatesByCountry(w http.ResponseWriter, r *http.Request) {
	params := mux.Vars(r)
	ID := params["id"]
	id, _ := strconv.Atoi(ID)
	payload, err := p.ICmnrepo.GetStatesByCountry(r.Context(), id)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, payload)
	}
}

//GetLocations ..
func (p *CmnIrepo) GetLocations(w http.ResponseWriter, r *http.Request) {
	payload, err := p.ICmnrepo.GetLocations(r.Context())
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, payload)
	}
}

//CreateLocations a new post
func (p *CmnIrepo) CreateLocations(w http.ResponseWriter, r *http.Request) {
	usr := cmnmdl.Locations{}
	json.NewDecoder(r.Body).Decode(&usr)

	newID, err := p.ICmnrepo.CreateLocations(r.Context(), &usr)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {

		utils.RespondwithJSON(w, http.StatusOK, map[string]int64{"id": newID})
	}
}

//UpdateLocations a new post
func (p *CmnIrepo) UpdateLocations(w http.ResponseWriter, r *http.Request) {
	usr := cmnmdl.Locations{}
	json.NewDecoder(r.Body).Decode(&usr)

	err := p.ICmnrepo.UpdateLocations(r.Context(), &usr)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {

		utils.RespondwithJSON(w, http.StatusOK, nil)
	}
}

//CreateVendor a new post
func (p *CmnIrepo) CreateVendor(w http.ResponseWriter, r *http.Request) {
	usr := cmnmdl.Vendors{}
	json.NewDecoder(r.Body).Decode(&usr)

	newID, err := p.ICmnrepo.CreateVendors(r.Context(), &usr)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {

		utils.RespondwithJSON(w, http.StatusOK, map[string]int64{"id": newID})
	}
}

//UpdateVendors a new post
func (p *CmnIrepo) UpdateVendors(w http.ResponseWriter, r *http.Request) {
	usr := cmnmdl.Vendors{}
	json.NewDecoder(r.Body).Decode(&usr)

	err := p.ICmnrepo.UpdateVendors(r.Context(), &usr)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {

		utils.RespondwithJSON(w, http.StatusOK, nil)
	}
}

//RetryFailedmails a new post
func (p *CmnIrepo) RetryFailedmails() {
	p.ICmnrepo.RetryFailedmails()
}

//GetOutWardCart ..
func (p *CmnIrepo) GetOutWardCart(w http.ResponseWriter, r *http.Request) {
	params := mux.Vars(r)
	SenderEmp := params["SenderEmpid"]
	SenderEmpid, _ := strconv.Atoi(SenderEmp)
	payload, err := p.ICmnrepo.GetOutWardCart(r.Context(), SenderEmpid)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, payload)
	}
}

//DeleteOutWardCart ..
func (p *CmnIrepo) DeleteOutWardCart(w http.ResponseWriter, r *http.Request) {
	data := struct {
		ListInWardOutWardAsset []*cmnmdl.InWardOutWardAsset
		EmpID                  int
	}{}
	json.NewDecoder(r.Body).Decode(&data)
	var ITAssetIds []int
	for _, i := range data.ListInWardOutWardAsset {
		if *i.AssetType == "itasset" {
			ITAssetIds = append(ITAssetIds, *i.AssetID)
		}
		if *i.AssetType == "nonitasset" {
			//ITAssetIds = append(ITAssetIds, *i.AssetID)
		}
	}
	err := p.ICmnrepo.DeleteOutWardCart(ITAssetIds, data.EmpID, "itasset")
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, nil)
	}
}

//OutWardDetailsByEmp ..
func (p *CmnIrepo) OutWardDetailsByEmp(w http.ResponseWriter, r *http.Request) {
	params := mux.Vars(r)
	SenderEmp := params["SenderEmpid"]
	SenderEmpid, _ := strconv.Atoi(SenderEmp)
	payload, err := p.ICmnrepo.OutWardDetailsByEmp(r.Context(), SenderEmpid)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, payload)
	}
}

//InWardDetailsByEmp ..
func (p *CmnIrepo) InWardDetailsByEmp(w http.ResponseWriter, r *http.Request) {
	params := mux.Vars(r)
	RcvrEmp := params["RcvrEmpID"]
	RcvrEmpID, _ := strconv.Atoi(RcvrEmp)
	payload, err := p.ICmnrepo.InWardDetailsByEmp(r.Context(), RcvrEmpID)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, payload)
	}
}

//OutWardAssetDetailsByIwOwID ..
func (p *CmnIrepo) OutWardAssetDetailsByIwOwID(w http.ResponseWriter, r *http.Request) {
	params := mux.Vars(r)
	id := params["IwOwID"]
	IwOwID, _ := strconv.Atoi(id)
	payload, err := p.ICmnrepo.OutWardAssetDetailsByIwOwID(r.Context(), IwOwID)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, payload)
	}
}

//GetAssetdIDsNotEligbleForTransfer ..
func (p *CmnIrepo) GetAssetdIDsNotEligbleForTransfer(w http.ResponseWriter, r *http.Request) {
	res := []*cmnmdl.Transfer{}
	json.NewDecoder(r.Body).Decode(&res)
	payload, err := p.ICmnrepo.GetAssetdIDsNotEligbleForTransfer(r.Context(), res)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, payload)
	}
}

//IWOWDetailsByAprvr ..
func (p *CmnIrepo) IWOWDetailsByAprvr(w http.ResponseWriter, r *http.Request) {
	params := mux.Vars(r)
	AprvrEmp := params["AprvrEmpID"]
	AprvrEmpID, _ := strconv.Atoi(AprvrEmp)
	payload, err := p.ICmnrepo.IWOWDetailsByAprvr(r.Context(), AprvrEmpID)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, payload)
	}
}

//TransferApprovReject ..
func (p *CmnIrepo) TransferApprovReject(w http.ResponseWriter, r *http.Request) {
	params := mux.Vars(r)
	idInWardOutWard := params["idInWardOutWard"]
	status := params["status"]
	comments := r.URL.Query().Get("comments")
	IDInWardOutWard, _ := strconv.Atoi(idInWardOutWard)
	err := p.ICmnrepo.TransferApprovReject(IDInWardOutWard, status, comments)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, nil)
	}
}

//ReceiveIWAssets ..
func (p *CmnIrepo) ReceiveIWAssets(w http.ResponseWriter, r *http.Request) {
	res := cmnmdl.InWardOutWard{}
	json.NewDecoder(r.Body).Decode(&res)
	err := p.ICmnrepo.ReceiveIWAssets(&res)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, nil)
	}
}

//OwStatusChange ..
func (p *CmnIrepo) OwStatusChange(w http.ResponseWriter, r *http.Request) {
	params := mux.Vars(r)
	OWid := params["OWid"]
	Status := params["Status"]
	Owid, _ := strconv.Atoi(OWid)
	status, _ := strconv.Atoi(Status)
	err := p.ICmnrepo.OwStatusChange(Owid, status)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, nil)
	}
}

//CreateInWardOutWard ..
func (p *CmnIrepo) CreateInWardOutWard(w http.ResponseWriter, r *http.Request) {
	usr := cmnmdl.InWardOutWard{}
	json.NewDecoder(r.Body).Decode(&usr)

	err := p.ICmnrepo.CreateInWardOutWard(r.Context(), &usr)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {

		utils.RespondwithJSON(w, http.StatusOK, nil)
	}
}

//CreateOutWardCart ..
func (p *CmnIrepo) CreateOutWardCart(w http.ResponseWriter, r *http.Request) {
	usr := []*cmnmdl.OutWardCart{}
	json.NewDecoder(r.Body).Decode(&usr)
	err := p.ICmnrepo.CreateOutWardCart(r.Context(), usr)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {

		utils.RespondwithJSON(w, http.StatusOK, nil)
	}
}

// GetStatus all post data
func (p *CmnIrepo) GetStatus(w http.ResponseWriter, r *http.Request) {
	params := mux.Vars(r)
	typeName := params["typeName"]
	payload, _ := p.ICmnrepo.GetStatus(r.Context(), typeName)

	utils.RespondwithJSON(w, http.StatusOK, payload)
}

// // GetUniqueID a post
// func (p *CmnIrepo) GetUniqueID(w http.ResponseWriter, r *http.Request) {
// 	params := mux.Vars(r)
// 	modulename := params["modulename"]
// 	Maxid, err := p.ICmnrepo.GetUniqueID(r.Context(), modulename)

// 	if err != nil {
// 		utils.RespondWithError(w, http.StatusInternalServerError, "Server Error")
// 	} else {

// 		utils.RespondwithJSON(w, http.StatusOK, map[string]int64{"id": int64(Maxid)})
// 	}
// }

// UpdateIsMsngStcksRslvdMain a post
func (p *CmnIrepo) UpdateIsMsngStcksRslvdMain(w http.ResponseWriter, r *http.Request) {
	params := mux.Vars(r)
	IDInWardOutWard := params["IDInWardOutWard"]
	id, err := strconv.Atoi(IDInWardOutWard)
	err = p.ICmnrepo.UpdateIsMsngStcksRslvdMain(r.Context(), id)

	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, "Server Error")
	} else {

		utils.RespondwithJSON(w, http.StatusOK, nil)
	}
}

//Employees_Bulk_Insert a new post
func (p *CmnIrepo) Employees_Bulk_Insert(w http.ResponseWriter, r *http.Request) {
	mdl := []*cmnmdl.Employees{}
	json.NewDecoder(r.Body).Decode(&mdl)
	err := p.ICmnrepo.Employees_Bulk_Insert(r.Context(), mdl)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, nil)
	}
}

//Resend_Activation_Link a new post
func (p *CmnIrepo) Resend_Activation_Link(w http.ResponseWriter, r *http.Request) {
	params := mux.Vars(r)
	EmpID := params["EmpID"]
	empid, _ := strconv.Atoi(EmpID)
	err := p.ICmnrepo.Resend_Activation_Link(r.Context(), empid)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, nil)
	}
}

//GetAuthorizationList_ByRole ..
func (p *CmnIrepo) GetAuthorizationList_ByRole(w http.ResponseWriter, r *http.Request) {
	params := mux.Vars(r)
	RoleID := params["RoleID"]
	roleid, _ := strconv.Atoi(RoleID)
	payload, err := p.ICmnrepo.GetAuthorizationList_ByRole(roleid)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, payload)
	}
}

//GetAuthorizationList_ByRole ..
func (p *CmnIrepo) GetFeatures_List(w http.ResponseWriter, r *http.Request) {
	payload, err := p.ICmnrepo.GetFeatures_List()
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, payload)
	}
}

//GetLocations ..
func (p *CmnIrepo) Send_ResetPasswordLink(w http.ResponseWriter, r *http.Request) {
	params := mux.Vars(r)
	empid := params["empid"]
	Empid, _ := strconv.Atoi(empid)
	err := p.ICmnrepo.Send_ResetPasswordLink(r.Context(), Empid)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, nil)
	}
}

//GetLocations ..
func (p *CmnIrepo) User_Inactive(w http.ResponseWriter, r *http.Request) {
	params := mux.Vars(r)
	UserID := params["UserID"]
	usrid, _ := strconv.Atoi(UserID)
	err := p.ICmnrepo.User_Inactive(usrid)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, nil)
	}
}

func (p *CmnIrepo) Authorization_Create(w http.ResponseWriter, r *http.Request) {
	data := cmnmdl.Authorization_Create{}
	json.NewDecoder(r.Body).Decode(&data)
	err := p.ICmnrepo.Authorization_Create(r.Context(), &data)
	if err != nil {
		respondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		respondwithJSON(w, http.StatusOK, nil)
	}
}

func (p *CmnIrepo) User_Active(w http.ResponseWriter, r *http.Request) {
	params := mux.Vars(r)
	UserID := params["UserID"]
	usrid, _ := strconv.Atoi(UserID)
	err := p.ICmnrepo.User_Active(usrid)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, nil)
	}
}

func (p *CmnIrepo) Check_Unique_Email_Mobile(w http.ResponseWriter, r *http.Request) {
	data := cmnmdl.Employees{}
	json.NewDecoder(r.Body).Decode(&data)
	payload, err := p.ICmnrepo.Check_Unique_Email_Mobile(r.Context(), &data)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, payload)
	}
}

func (p *CmnIrepo) Check_Unique_UserName(w http.ResponseWriter, r *http.Request) {
	params := mux.Vars(r)
	UserName := params["UserName"]
	UsrName, err := p.ICmnrepo.Check_Unique_UserName(r.Context(), UserName)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, UsrName)
	}
}

//GetEmployee_History_ByEmpID  pass ) to get all records
func (p *CmnIrepo) GetEmployee_History_ByEmpID(w http.ResponseWriter, r *http.Request) {
	params := mux.Vars(r)
	ID := params["id"]
	id, _ := strconv.Atoi(ID)
	payload, err := p.ICmnrepo.GetEmployee_History_ByEmpID(r.Context(), id)
	if err != nil {
		utils.RespondWithError(w, http.StatusNoContent, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, payload)
	}
}

func (p *CmnIrepo) Get_UsersHistory_ByEmpID(w http.ResponseWriter, r *http.Request) {
	params := mux.Vars(r)
	ID := params["id"]
	id, _ := strconv.Atoi(ID)
	payload, err := p.ICmnrepo.Get_UsersHistory_ByEmpID(r.Context(), id)
	if err != nil {
		utils.RespondWithError(w, http.StatusNoContent, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, payload)
	}
}

type Activity struct {
	FromDate string `json:"FromDate"`
	ToDate   string `json:"ToDate"`
}

func (p *CmnIrepo) Activivty_Log_List(w http.ResponseWriter, r *http.Request) {
	params := mux.Vars(r)
	ID := params["EmpID"]
	id, _ := strconv.Atoi(ID)
	data := Activity{}
	json.NewDecoder(r.Body).Decode(&data)

	payload, err := p.ICmnrepo.Activivty_Log_List(r.Context(), id, data.FromDate, data.ToDate)
	if err != nil {
		utils.RespondWithError(w, http.StatusNoContent, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, payload)
	}
}
func (p *CmnIrepo) MultiLevelApproval(w http.ResponseWriter, r *http.Request) {
	payload, err := p.ICmnrepo.MultiLevelApproval(r.Context())
	if err != nil {
		utils.RespondWithError(w, http.StatusNoContent, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, payload)
	}
}
func (p *CmnIrepo) MultiLevelApproval_Map(w http.ResponseWriter, r *http.Request) {
	payload, err := p.ICmnrepo.MultiLevelApproval_Map(r.Context())
	if err != nil {
		utils.RespondWithError(w, http.StatusNoContent, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, payload)
	}
}

func (p *CmnIrepo) MultiLevelApproval_config(w http.ResponseWriter, r *http.Request) {

	dataList := []*cmnmdl.MultiLevelApproval_Main{}
	json.NewDecoder(r.Body).Decode(&dataList)
	err := p.ICmnrepo.MultiLevelApproval_config(r.Context(), dataList)
	if err != nil {
		utils.RespondWithError(w, http.StatusNoContent, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, nil)
	}
}

func (p *CmnIrepo) GetApprovers(w http.ResponseWriter, r *http.Request) {
	params := mux.Vars(r)
	LocID := params["LocID"]
	locid, _ := strconv.Atoi(LocID)
	RoleID := params["RoleID"]
	roleid, _ := strconv.Atoi(RoleID)
	payload, err := p.ICmnrepo.GetApprovers(r.Context(), locid, roleid)
	if err != nil {
		utils.RespondWithError(w, http.StatusNoContent, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, payload)
	}
}

func (p *CmnIrepo) VendorsAssetDetails(w http.ResponseWriter, r *http.Request) {
	params := mux.Vars(r)
	VendorID := params["VendorID"]
	vendorID, _ := strconv.Atoi(VendorID)
	payload, err := p.ICmnrepo.VendorsAssetDetails(r.Context(), vendorID)
	if err != nil {
		utils.RespondWithError(w, http.StatusNoContent, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, payload)
	}
}

func (p *CmnIrepo) VednorsAssetMapInsert(w http.ResponseWriter, r *http.Request) {

	dataList := cmnmdl.Vendors_consumablemaster_map{}
	json.NewDecoder(r.Body).Decode(&dataList)
	err := p.ICmnrepo.VednorsAssetMapInsert(r.Context(), &dataList)
	if err != nil {
		utils.RespondWithError(w, http.StatusNoContent, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, nil)
	}
}
func (p *CmnIrepo) VednorsAssetMapUpdate(w http.ResponseWriter, r *http.Request) {

	dataList := cmnmdl.Vendors_consumablemaster_map{}
	json.NewDecoder(r.Body).Decode(&dataList)
	err := p.ICmnrepo.VednorsAssetMapUpdate(r.Context(), &dataList)
	if err != nil {
		utils.RespondWithError(w, http.StatusNoContent, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, nil)
	}
}
func (p *CmnIrepo) IWOW_ApprovalStatusList(w http.ResponseWriter, r *http.Request) {
	params := mux.Vars(r)
	IDinwardoutward := params["IDinwardoutward"]
	IDinwardoutwards, _ := strconv.Atoi(IDinwardoutward)
	dt, err := p.ICmnrepo.IWOW_ApprovalStatusList(r.Context(), IDinwardoutwards)
	if err != nil {
		utils.RespondWithError(w, http.StatusNoContent, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, dt)
	}
}

func (p *CmnIrepo) InwardOutwardReqForward(w http.ResponseWriter, r *http.Request) {

	dataList := cmnmdl.InWardOutWardApproval{}
	json.NewDecoder(r.Body).Decode(&dataList)
	err := p.ICmnrepo.InwardOutwardReqForward(r.Context(), &dataList)
	if err != nil {
		utils.RespondWithError(w, http.StatusNoContent, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, nil)
	}
}

func (p *CmnIrepo) GetAdminDashBoard(w http.ResponseWriter, r *http.Request) {
	data := cmnmdl.AdminDashBoard{}
	json.NewDecoder(r.Body).Decode(&data)
	payload, err := p.ICmnrepo.GetAdminDashBoard(r.Context(), &data)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, payload)
	}
}
func (p *CmnIrepo) GetEmployeeDashboard(w http.ResponseWriter, r *http.Request) {
	data := cmnmdl.EmployeeDashboard{}
	json.NewDecoder(r.Body).Decode(&data)
	payload, err := p.ICmnrepo.GetEmployeeDashboard(r.Context(), &data)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, payload)
	}
}



// func (p *CmnIrepo) GetThresholdReachedStocks(w http.ResponseWriter, r *http.Request) {
// 	params := mux.Vars(r)
// 	LocID := params["LocID"]
// 	id, _ := strconv.Atoi(LocID)
// 	payload, err := p.ICmnrepo.GetThresholdReachedStocks(r.Context(), id)
// 	if err != nil {
// 		utils.RespondWithError(w, http.StatusNoContent, err.Error())
// 	} else {
// 		utils.RespondwithJSON(w, http.StatusOK, payload)
// 	}
// }