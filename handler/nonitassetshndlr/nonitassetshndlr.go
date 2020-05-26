package nonitassetshndlr

import (
	"encoding/json"
	"fmt"
	"net/http"
	"strconv"

	"github.com/gorilla/mux"
	"github.com/premsynfosys/AMS_API/DBdriver"
	"github.com/premsynfosys/AMS_API/models/nonitassets_mdl"
	"github.com/premsynfosys/AMS_API/repository/NonITAssetRepo"
	"github.com/premsynfosys/AMS_API/utils"
)

//______________________________________________________________________________________________
// INonITAsset have ITAssetRepo interface methods ...
type INonITAsset struct {
	INonTAssetRepo NonITAssetRepo.NonITAssetIntfc
}

//NewNonITAssetHandler returns   ...
func NewNonITAssetHandler(db *DBdriver.DB) *INonITAsset {
	return &INonITAsset{
		INonTAssetRepo: NonITAssetRepo.NewSQLRepo(db.SQLDB),
	}
}

//GetNonITAssetMasterLists ..
func (p *INonITAsset) GetNonITAssetMasterLists(w http.ResponseWriter, r *http.Request) {

	payload, err := p.INonTAssetRepo.GetNonITAssetMasterLists(r.Context())

	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, payload)
	}
}

//CreateNonITAsset ..
func (p *INonITAsset) CreateNonITAsset(w http.ResponseWriter, r *http.Request) {

	mdl := nonitassets_mdl.NonITAssets{}
	json.NewDecoder(r.Body).Decode(&mdl)
	err := p.INonTAssetRepo.CreateNonITAsset(r.Context(), &mdl)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, nil)
	}
}

//GetNonITAssetLists ..
func (p *INonITAsset) GetNonITAssetLists(w http.ResponseWriter, r *http.Request) {
	params := mux.Vars(r)
	LocID := params["LocID"]
	id, _ := strconv.Atoi(LocID)
	data, err := p.INonTAssetRepo.GetNonITAssetLists(r.Context(), id)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, data)
	}
}

//GetNonITAssetList_BY_AssetID ..
func (p *INonITAsset) GetNonITAssetList_BY_AssetID(w http.ResponseWriter, r *http.Request) {
	params := mux.Vars(r)
	ID := params["AssetID"]
	id, _ := strconv.Atoi(ID)
	data, err := p.INonTAssetRepo.GetNonITAssetList_BY_AssetID(r.Context(), id)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, data)
	}
}

//NonITAsset_Edit ..
func (p *INonITAsset) NonITAsset_Edit(w http.ResponseWriter, r *http.Request) {
	mdl := nonitassets_mdl.NonITAssets{}
	json.NewDecoder(r.Body).Decode(&mdl)
	err := p.INonTAssetRepo.NonITAsset_Edit(r.Context(), &mdl)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, nil)
	}
}

//PostNonIITAssets_oprtns_AddStock ..
func (p *INonITAsset) PostNonITAssets_oprtns_AddStock(w http.ResponseWriter, r *http.Request) {
	mdl := nonitassets_mdl.NonITAssets_Oprtns{}
	json.NewDecoder(r.Body).Decode(&mdl)
	err := p.INonTAssetRepo.PostNonITAssets_oprtns_AddStock(&mdl)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, nil)
	}
}

//PostNonIITAssets_oprtns_Removestock ..
func (p *INonITAsset) PostNonITAssets_oprtns_Removestock(w http.ResponseWriter, r *http.Request) {
	mdl := nonitassets_mdl.NonITAssets_Oprtns{}
	json.NewDecoder(r.Body).Decode(&mdl)
	err := p.INonTAssetRepo.PostNonITAssets_oprtns_Removestock(&mdl)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, nil)
	}
}

//PostNonITAssets_CheckOut ..
func (p *INonITAsset) PostNonITAssets_CheckOut(w http.ResponseWriter, r *http.Request) {
	mdl := nonitassets_mdl.NonITAssets_checkout_checkin{}
	json.NewDecoder(r.Body).Decode(&mdl)
	err := p.INonTAssetRepo.PostNonITAssets_CheckOut(&mdl)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, nil)
	}
}
func (p *INonITAsset) CheckDuplicateNonITAssetEntry(w http.ResponseWriter, r *http.Request) {
	params := mux.Vars(r)
	LocID := params["LocID"]
	locID, _ := strconv.Atoi(LocID)
	MasterID := params["MasterID"]
	MstrID, _ := strconv.Atoi(MasterID)
	data, err := p.INonTAssetRepo.CheckDuplicateNonITAssetEntry(r.Context(), MstrID, locID)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, data)
	}
}

func (p *INonITAsset) Check_Unique_NonITAsset(w http.ResponseWriter, r *http.Request) {
	params := mux.Vars(r)
	ConsumableName := params["NonITAssetName"]
	data, err := p.INonTAssetRepo.Check_Unique_NonITAsset(r.Context(), ConsumableName)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, data)
	}
}

func (p *INonITAsset) NonITAssetemasterInsert(w http.ResponseWriter, r *http.Request) {
	mdl := nonitassets_mdl.NonITAssets_Master{}
	json.NewDecoder(r.Body).Decode(&mdl)
	err := p.INonTAssetRepo.NonITAssetemasterInsert(r.Context(), &mdl)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, nil)
	}
}
func (p *INonITAsset) GetNonITAssetGroups(w http.ResponseWriter, r *http.Request) {

	data, err := p.INonTAssetRepo.GetNonITAssetGroups(r.Context())
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, data)
	}
}

func (p *INonITAsset) GetNonITAssetOprtnListByID(w http.ResponseWriter, r *http.Request) {
	params := mux.Vars(r)
	IDNonITAsset := params["IDNonITAsset"]
	id, _ := strconv.Atoi(IDNonITAsset)
	data, err := p.INonTAssetRepo.GetNonITAssetOprtnListByID(r.Context(), id)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, data)
	}
}
func (p *INonITAsset) CreateNonITAssetRequest(w http.ResponseWriter, r *http.Request) {
	mdl := []*nonitassets_mdl.NonITAssetRequest{}
	json.NewDecoder(r.Body).Decode(&mdl)
	err := p.INonTAssetRepo.CreateNonITAssetRequest(mdl)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, nil)
	}
}

func (p *INonITAsset) GetNonITAssetReqList(w http.ResponseWriter, r *http.Request) {
	params := mux.Vars(r)
	ID := params["Apprvrid"]
	Apprvrid, _ := strconv.Atoi(ID)
	data, err := p.INonTAssetRepo.GetNonITAssetReqList(r.Context(), Apprvrid)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, data)
	}
}

func (p *INonITAsset) NonITAssetReq_ApprovalStatusList(w http.ResponseWriter, r *http.Request) {
	params := mux.Vars(r)
	ID := params["ReqGroupID"]
	ReqGroupID, _ := strconv.Atoi(ID)
	data, err := p.INonTAssetRepo.NonITAssetReq_ApprovalStatusList(r.Context(), ReqGroupID)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, data)
	}
}
func (p *INonITAsset) NonITAssetReqReject(w http.ResponseWriter, r *http.Request) {
	mdl := nonitassets_mdl.NonITAssetRequestApproval{}
	json.NewDecoder(r.Body).Decode(&mdl)
	bol, err := p.INonTAssetRepo.NonITAssetReqReject(r.Context(), &mdl)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, bol)
	}
}

//NonITAssetReqForward ..
func (p *INonITAsset) NonITAssetReqForward(w http.ResponseWriter, r *http.Request) {
	mdl := &nonitassets_mdl.NonITAssetRequestApproval{}
	json.NewDecoder(r.Body).Decode(&mdl)
	err := p.INonTAssetRepo.NonITAssetReqForward(r.Context(), mdl)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, nil)
	}
}

func (p *INonITAsset) NonITAssetReqListByReqGroup(w http.ResponseWriter, r *http.Request) {
	params := mux.Vars(r)
	ID := params["ReqGroupID"]
	ReqGroupID, _ := strconv.Atoi(ID)
	ApproverID := params["ApproverID"]
	approverID, _ := strconv.Atoi(ApproverID)

	payload, _ := p.INonTAssetRepo.NonITAssetReqListByReqGroup(r.Context(), ReqGroupID, approverID)
	utils.RespondwithJSON(w, http.StatusOK, payload)
}

func (p *INonITAsset) NonITAssetReqApprove(w http.ResponseWriter, r *http.Request) {
	mdl := []*nonitassets_mdl.NonITAssetRequest{}
	json.NewDecoder(r.Body).Decode(&mdl)
	err := p.INonTAssetRepo.NonITAssetReqApprove(mdl)
	if err != nil {
		fmt.Println(err.Error())
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, nil)
	}
}

func (p *INonITAsset) GetNonITAssetCheckinDetails(w http.ResponseWriter, r *http.Request) {
	params := mux.Vars(r)
	LocID := params["LocID"]
	LocIDs, _ := strconv.Atoi(LocID)
	data, err := p.INonTAssetRepo.GetNonITAssetCheckinDetails(r.Context(), LocIDs)
	if err != nil {
		fmt.Println(err.Error())
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, data)
	}
}

func (p *INonITAsset) GetNonITAssetCheckinDetailsByAsset(w http.ResponseWriter, r *http.Request) {
	params := mux.Vars(r)
	IDNonITAsset := params["IDNonITAsset"]
	IDNonITAssets, _ := strconv.Atoi(IDNonITAsset)
	data, err := p.INonTAssetRepo.GetNonITAssetCheckinDetailsByAsset(r.Context(), IDNonITAssets)
	if err != nil {
		fmt.Println(err.Error())
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, data)
	}
}
func (p *INonITAsset) GetNonITAssetCheckinDetailsByEmp(w http.ResponseWriter, r *http.Request) {
	params := mux.Vars(r)
	EmpID := params["EmpID"]
	EmpIDs, _ := strconv.Atoi(EmpID)
	data, err := p.INonTAssetRepo.GetNonITAssetCheckinDetailsByEmp(r.Context(), EmpIDs)
	if err != nil {
		fmt.Println(err.Error())
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, data)
	}
}

func (p *INonITAsset) NonITAssetCheckin(w http.ResponseWriter, r *http.Request) {
	mdl := nonitassets_mdl.NonITAssets_checkin{}
	json.NewDecoder(r.Body).Decode(&mdl)
	err := p.INonTAssetRepo.NonITAssetCheckin(r.Context(),&mdl)
	if err != nil {
		fmt.Println(err.Error())
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, nil)
	}
}
func (p *INonITAsset) Getnonitassets_checkinByID(w http.ResponseWriter, r *http.Request) {
	params := mux.Vars(r)
	checkinID := params["CheckinID"]
	checkinIDs, _ := strconv.Atoi(checkinID)
	data, err := p.INonTAssetRepo.Getnonitassets_checkinByID(r.Context(), checkinIDs)
	if err != nil {
		fmt.Println(err.Error())
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, data)
	}
}
