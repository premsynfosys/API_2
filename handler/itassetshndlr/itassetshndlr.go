package itassetshndlr

import (
	"encoding/json"
	"net/http"
	"strconv"

	"github.com/gorilla/mux"
	"github.com/premsynfosys/AMS_API/DBdriver"
	"github.com/premsynfosys/AMS_API/models/itassetmdl"
	"github.com/premsynfosys/AMS_API/repository/itassetrepo"
	"github.com/premsynfosys/AMS_API/utils"
)

//______________________________________________________________________________________________
// IITAsset have ITAssetRepo interface methods ...
type IITAsset struct {
	ITAssetRepo itassetrepo.ITAsserIntfc
}

//NewITAssetHandler returns ITAssetRepo interface with sql conn  ...
func NewITAssetHandler(db *DBdriver.DB) *IITAsset {
	return &IITAsset{
		ITAssetRepo: itassetrepo.NewSQLRepo(db.SQLDB),
	}
}

//______________________________________________________________________________________________

// GetEmployeeITAssetsByID all post data
func (p *IITAsset) GetEmployeeITAssetsByID(w http.ResponseWriter, r *http.Request) {
	isCheckin, _ := strconv.Atoi(r.URL.Query().Get("isCheckin"))
	EmpID, _ := strconv.Atoi(r.URL.Query().Get("EmpID"))
	payload, _ := p.ITAssetRepo.GetEmployeeITAssetsByID(r.Context(), EmpID, isCheckin)
	utils.RespondwithJSON(w, http.StatusOK, payload)
}

//______________________________________________________________________________________________
//CreateITAsset a new post
func (p *IITAsset) CreateITAsset(w http.ResponseWriter, r *http.Request) {
	mdl := itassetmdl.ITAssetModel{}
	json.NewDecoder(r.Body).Decode(&mdl)
	newID, err := p.ITAssetRepo.CreateITAsset(r.Context(), &mdl)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, map[string]int64{"id": newID})
	}
}

//CreateITAssetRequest ..
func (p *IITAsset) CreateITAssetRequest(w http.ResponseWriter, r *http.Request) {
	mdl := []*itassetmdl.ITAssetRequest{}
	json.NewDecoder(r.Body).Decode(&mdl)
	err := p.ITAssetRepo.CreateITAssetRequest(mdl)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, nil)
	}
}

//ITAssetRetire a new post
func (p *IITAsset) ITAssetRetire(w http.ResponseWriter, r *http.Request) {
	mdl := itassetmdl.Retire{}
	json.NewDecoder(r.Body).Decode(&mdl)
	err := p.ITAssetRepo.ITAssetRetire(r.Context(), &mdl)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, nil)
	}
}

//BulkCreateITAsset a new post
func (p *IITAsset) BulkCreateITAsset(w http.ResponseWriter, r *http.Request) {
	mdl := []*itassetmdl.ITAssetModel{}
	json.NewDecoder(r.Body).Decode(&mdl)
	err := p.ITAssetRepo.BulkCreateITAsset(r.Context(), mdl)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, nil)
	}
}

//UpdateITAsset a new post
func (p *IITAsset) UpdateITAsset(w http.ResponseWriter, r *http.Request) {
	mdl := itassetmdl.ITAssetModel{}
	json.NewDecoder(r.Body).Decode(&mdl)
	err := p.ITAssetRepo.UpdateITAsset(r.Context(), &mdl)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, nil)
	}
}

// GetITAssetReqList all post data
func (p *IITAsset) GetITAssetReqList(w http.ResponseWriter, r *http.Request) {
	params := mux.Vars(r)
	ID := params["Apprvrid"]
	Apprvrid, _ := strconv.Atoi(ID)
	payload, _ := p.ITAssetRepo.GetITAssetReqList(r.Context(), Apprvrid)

	utils.RespondwithJSON(w, http.StatusOK, payload)
}

// ITAssetReqListByReqGroup all post data
func (p *IITAsset) ITAssetReqListByReqGroup(w http.ResponseWriter, r *http.Request) {
	params := mux.Vars(r)
	ID := params["ReqGroupID"]
	ReqGroupID, _ := strconv.Atoi(ID)
	ApproverID := params["ApproverID"]
	approverID, _ := strconv.Atoi(ApproverID)
	
	payload, _ := p.ITAssetRepo.ITAssetReqListByReqGroup(r.Context(), ReqGroupID,approverID)
	utils.RespondwithJSON(w, http.StatusOK, payload)
}

//ITAssetReqReject a new post
func (p *IITAsset) ITAssetReqReject(w http.ResponseWriter, r *http.Request) {
	mdl := itassetmdl.ITAssetRequestApproval{}
	json.NewDecoder(r.Body).Decode(&mdl)
	bol, err := p.ITAssetRepo.ITAssetReqReject(r.Context(), &mdl)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, bol)
	}
}

//ITAssetReqApprove a new post
func (p *IITAsset) ITAssetReqApprove(w http.ResponseWriter, r *http.Request) {
	mdl := []*itassetmdl.ITAssetRequest{}
	json.NewDecoder(r.Body).Decode(&mdl)
	bol, err := p.ITAssetRepo.ITAssetReqApprove(r.Context(), mdl)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, bol)
	}
}

// GetITAssetGroups all post data
func (p *IITAsset) GetITAssetGroups(w http.ResponseWriter, r *http.Request) {
	payload, err := p.ITAssetRepo.GetITAssetGroups(r.Context())
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, payload)
	}
}

// ITAssetGroups_Create all post data
func (p *IITAsset) ITAssetGroups_Create(w http.ResponseWriter, r *http.Request) {
	mdl := itassetmdl.ITAssetGroup{}
	json.NewDecoder(r.Body).Decode(&mdl)
	err := p.ITAssetRepo.ITAssetGroups_Create(r.Context(), &mdl)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, nil)
	}
}

//GetITAsset ..
func (p *IITAsset) GetITAsset(w http.ResponseWriter, r *http.Request) {
	LocID, err := strconv.Atoi(r.URL.Query().Get("LocID"))
	payload, err := p.ITAssetRepo.GetITAsset(r.Context(), LocID)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, payload)
	}
}

//GetITassetsFilesByID ..
func (p *IITAsset) GetITassetsFilesByID(w http.ResponseWriter, r *http.Request) {
	params := mux.Vars(r)
	ID := params["id"]
	id, _ := strconv.Atoi(ID)
	payload, err := p.ITAssetRepo.GetITassetsFilesByID(r.Context(), id)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, payload)
	}
}

//CreateITAssetFiles a new post
func (p *IITAsset) CreateITAssetFiles(w http.ResponseWriter, r *http.Request) {
	mdl := itassetmdl.ITassetsFiles{}
	json.NewDecoder(r.Body).Decode(&mdl)
	err := p.ITAssetRepo.CreateITassetsFiles(r.Context(), &mdl)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, nil)
	}
}

//GetCustomFields a  post
func (p *IITAsset) GetCustomFields(w http.ResponseWriter, r *http.Request) {

	data, err := p.ITAssetRepo.GetCustomFields(r.Context())
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {

		utils.RespondwithJSON(w, http.StatusOK, data)
	}
}

//CreateITAssetsCheckoutT ..
func (p *IITAsset) CreateITAssetsCheckoutT(w http.ResponseWriter, r *http.Request) {
	usr := itassetmdl.ITassetCheckout{}
	json.NewDecoder(r.Body).Decode(&usr)

	err := p.ITAssetRepo.CreateITAssetsCheckoutT(r.Context(), &usr)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {

		utils.RespondwithJSON(w, http.StatusOK, nil)
	}
}

//CreateITAssetsCheckIn ..
func (p *IITAsset) CreateITAssetsCheckIn(w http.ResponseWriter, r *http.Request) {
	usr := itassetmdl.ITassetCheckout{}
	json.NewDecoder(r.Body).Decode(&usr)

	err := p.ITAssetRepo.CreateITAssetsCheckIn(r.Context(), &usr)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {

		utils.RespondwithJSON(w, http.StatusOK, nil)
	}
}

type iTAssetsBulkEdit struct {
	ITAssetModel itassetmdl.ITAssetModel
	Ids          *[]string
}

//ITAssetsBulkEdit ..
func (p *IITAsset) ITAssetsBulkEdit(w http.ResponseWriter, r *http.Request) {

	mdlStruct := &iTAssetsBulkEdit{}
	json.NewDecoder(r.Body).Decode(mdlStruct)

	err := p.ITAssetRepo.ITAssetsBulkEdit(r.Context(), &mdlStruct.ITAssetModel, *mdlStruct.Ids)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {

		utils.RespondwithJSON(w, http.StatusOK, nil)
	}
}

//RetryFailedmails a new post
func (p *IITAsset) RetryFailedmails() {
	p.ITAssetRepo.RetryFailedmails()
}

//ITasset_services_Insert a new post
func (p *IITAsset) ITasset_services_Insert(w http.ResponseWriter, r *http.Request) {
	mdl := &itassetmdl.ITasset_services{}
	json.NewDecoder(r.Body).Decode(&mdl)
	err := p.ITAssetRepo.ITasset_services_Insert(r.Context(), mdl)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, nil)
	}
}

//ITasset_services_start_Update a new post
func (p *IITAsset) ITasset_services_start_Update(w http.ResponseWriter, r *http.Request) {
	mdl := &itassetmdl.ITasset_services{}
	json.NewDecoder(r.Body).Decode(&mdl)
	err := p.ITAssetRepo.ITasset_services_start_Update(r.Context(), mdl)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, nil)
	}
}

//ITasset_services_Extend_Update a new post
func (p *IITAsset) ITasset_services_Extend_Update(w http.ResponseWriter, r *http.Request) {
	mdl := &itassetmdl.ITasset_services{}
	json.NewDecoder(r.Body).Decode(&mdl)
	err := p.ITAssetRepo.ITasset_services_Extend_Update(r.Context(), mdl)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, nil)
	}
}

//ITasset_services_Complete_Update a new post
func (p *IITAsset) ITasset_services_Complete_Update(w http.ResponseWriter, r *http.Request) {
	mdl := &itassetmdl.ITasset_services{}
	json.NewDecoder(r.Body).Decode(&mdl)
	err := p.ITAssetRepo.ITasset_services_Complete_Update(r.Context(), mdl)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, nil)
	}
}

//GetITAssetservices_List ..
func (p *IITAsset) GetITAssetservices_List(w http.ResponseWriter, r *http.Request) {
	params := mux.Vars(r)
	ITAssetID := params["ITAssetID"]
	itAssetID, _ := strconv.Atoi(ITAssetID)
	payload, err := p.ITAssetRepo.GetITAssetservices_List(r.Context(), itAssetID)

	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, payload)
	}
}

//ITAsset_Service_Request a new post
func (p *IITAsset) ITAsset_Service_Request(w http.ResponseWriter, r *http.Request) {
	mdl := &itassetmdl.ITAsset_service_request{}
	json.NewDecoder(r.Body).Decode(&mdl)
	err := p.ITAssetRepo.ITAsset_Service_Request(r.Context(), mdl)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, nil)
	}
}

func (p *IITAsset) ITAsset_Service_Request_Resolve(w http.ResponseWriter, r *http.Request) {
	mdl := &itassetmdl.ITAsset_service_request{}
	json.NewDecoder(r.Body).Decode(&mdl)
	err := p.ITAssetRepo.ITAsset_Service_Request_Resolve(r.Context(), mdl)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, nil)
	}
}
//GetITAsset_service_request_List ..
func (p *IITAsset) GetITAsset_service_request_List(w http.ResponseWriter, r *http.Request) {
	params := mux.Vars(r)
	EmpID := params["EmpID"]
	empID, _ := strconv.Atoi(EmpID)
	payload, err := p.ITAssetRepo.GetITAsset_service_request_List(r.Context(), empID)

	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, payload)
	}
}

//GetITAsset ..
func (p *IITAsset) GetITAsset_Retired(w http.ResponseWriter, r *http.Request) {
	LocID, _ := strconv.Atoi(r.URL.Query().Get("LocID"))
	EmpID, _ := strconv.Atoi(r.URL.Query().Get("EmpID"))
	payload, err := p.ITAssetRepo.GetITAsset_Retired(r.Context(), LocID, EmpID)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, payload)
	}
}

func (p *IITAsset) Get_ITAssetsHistory_ByAsset(w http.ResponseWriter, r *http.Request) {
	params := mux.Vars(r)
	AssetID := params["AssetID"]
	id, _ := strconv.Atoi(AssetID)

	data, err := p.ITAssetRepo.Get_ITAssetsHistory_ByAsset(r.Context(), id)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {

		utils.RespondwithJSON(w, http.StatusOK, data)
	}
}

func (p *IITAsset) ITAssetReq_ApprovalStatusList(w http.ResponseWriter, r *http.Request) {
	params := mux.Vars(r)
	ReqGroupID := params["ReqGroupID"]
	id, _ := strconv.Atoi(ReqGroupID)
	data, err := p.ITAssetRepo.ITAssetReq_ApprovalStatusList(r.Context(), id)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {

		utils.RespondwithJSON(w, http.StatusOK, data)
	}
}



func (p *IITAsset) ITAssetReqForward(w http.ResponseWriter, r *http.Request) {
	mdl := &itassetmdl.ITAssetRequestApproval{}
	json.NewDecoder(r.Body).Decode(&mdl)
	err := p.ITAssetRepo.ITAssetReqForward(r.Context(), mdl)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, nil)
	}
}

func (p *IITAsset) GetITAssetReqListByEmp(w http.ResponseWriter, r *http.Request) {
	params := mux.Vars(r)
	ID := params["EmpID"]
	EmpID, _ := strconv.Atoi(ID)
	payload, _ := p.ITAssetRepo.GetITAssetReqListByEmp(r.Context(), EmpID)

	utils.RespondwithJSON(w, http.StatusOK, payload)
}

func (p *IITAsset) ITAssetDelete(w http.ResponseWriter, r *http.Request) {
	params := mux.Vars(r)
	AssetID := params["AssetID"]
	id, _ := strconv.Atoi(AssetID)
	 err := p.ITAssetRepo.ITAssetDelete(r.Context(), id)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, nil)
	}
}

func (p *IITAsset) GetITAssetToCheckoutToITasset(w http.ResponseWriter, r *http.Request) {
	params := mux.Vars(r)
	LocID := params["LocID"]
	LocIDs, _ := strconv.Atoi(LocID)
	AssetID := params["AssetID"]
	AssetIDs, _ := strconv.Atoi(AssetID)
	payload, err := p.ITAssetRepo.GetITAssetToCheckoutToITasset(r.Context(),LocIDs, AssetIDs)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, payload)
	}
}
