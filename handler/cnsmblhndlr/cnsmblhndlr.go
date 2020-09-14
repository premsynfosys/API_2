package cnsmblhndlr

import (
	"encoding/json"
	"net/http"
	"strconv"

	"github.com/gorilla/mux"
	"github.com/premsynfosys/AMS_API/DBdriver"
	"github.com/premsynfosys/AMS_API/models/cmnmdl"
	"github.com/premsynfosys/AMS_API/models/cnsmblemdl"
	"github.com/premsynfosys/AMS_API/repository/consumablerepo"
	"github.com/premsynfosys/AMS_API/utils"
)

// IConsumableRepo have  interface methods ...
type IConsumableRepo struct {
	IConsumableRepo consumablerepo.ConsumableIntfc
}

//NewConsumablHandler returns
func NewConsumablHandler(db *DBdriver.DB) *IConsumableRepo {
	return &IConsumableRepo{
		IConsumableRepo: consumablerepo.NewSQLRepo(db.SQLDB),
	}
}

//CreateConsumable a new post
func (p *IConsumableRepo) CreateConsumable(w http.ResponseWriter, r *http.Request) {
	mdl := cnsmblemdl.Consumables{}
	json.NewDecoder(r.Body).Decode(&mdl)
	err := p.IConsumableRepo.CreateConsumables(r.Context(), &mdl)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, nil)
	}
}

//PostConsumableOprtnsAddStock a new post
func (p *IConsumableRepo) PostConsumableOprtnsAddStock(w http.ResponseWriter, r *http.Request) {
	mdl := cnsmblemdl.ConsumableOprtns{}
	json.NewDecoder(r.Body).Decode(&mdl)
	err := p.IConsumableRepo.PostConsumableOprtnsAddStock(&mdl)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, nil)
	}
}

//PostConsumableOprtnsRemovestock a new post
func (p *IConsumableRepo) PostConsumableOprtnsRemovestock(w http.ResponseWriter, r *http.Request) {
	mdl := cnsmblemdl.ConsumableOprtns{}
	json.NewDecoder(r.Body).Decode(&mdl)
	err := p.IConsumableRepo.PostConsumableOprtnsRemovestock(&mdl)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, nil)
	}
}

// GetConsumableGroups all post data
func (p *IConsumableRepo) GetConsumableGroups(w http.ResponseWriter, r *http.Request) {
	payload, err := p.IConsumableRepo.GetConsumableGroups(r.Context())
	if err == nil {
		utils.RespondwithJSON(w, http.StatusOK, payload)
	} else {
		utils.RespondwithJSON(w, http.StatusBadRequest, nil)
	}
}

// GetConsumableList all post data
func (p *IConsumableRepo) GetConsumableList(w http.ResponseWriter, r *http.Request) {
	params := mux.Vars(r)
	LocID := params["LocID"]
	locID, _ := strconv.Atoi(LocID)
	payload, err := p.IConsumableRepo.GetConsumableList(r.Context(), locID)
	if err == nil {
		utils.RespondwithJSON(w, http.StatusOK, payload)
	} else {
		utils.RespondwithJSON(w, http.StatusBadRequest, nil)
	}
}

func (p *IConsumableRepo) CheckDuplicateAssetEntry(w http.ResponseWriter, r *http.Request) {
	params := mux.Vars(r)
	LocID := params["LocID"]
	locID, _ := strconv.Atoi(LocID)
	MasterID := params["MasterID"]
	MstrID, _ := strconv.Atoi(MasterID)
	payload, err := p.IConsumableRepo.CheckDuplicateAssetEntry(r.Context(), MstrID, locID)
	if err == nil {
		utils.RespondwithJSON(w, http.StatusOK, payload)
	} else {
		utils.RespondwithJSON(w, http.StatusBadRequest, nil)
	}
}

// GetConsumableMasterList all post data
func (p *IConsumableRepo) GetConsumableMasterList(w http.ResponseWriter, r *http.Request) {
	payload, err := p.IConsumableRepo.GetConsumableMasterList(r.Context())
	if err == nil {
		utils.RespondwithJSON(w, http.StatusOK, payload)
	} else {
		utils.RespondwithJSON(w, http.StatusBadRequest, nil)
	}
}

// GetConsumableListByID all post data
func (p *IConsumableRepo) GetConsumableListByID(w http.ResponseWriter, r *http.Request) {
	params := mux.Vars(r)
	IDConsumable := params["IDConsumable"]
	id, _ := strconv.Atoi(IDConsumable)
	payload, err := p.IConsumableRepo.GetConsumableListByID(r.Context(), id)
	if err == nil {
		utils.RespondwithJSON(w, http.StatusOK, payload)
	} else {
		utils.RespondwithJSON(w, http.StatusBadRequest, nil)
	}
}

// GetConsumableOprtnListByID all post data
func (p *IConsumableRepo) GetConsumableOprtnListByID(w http.ResponseWriter, r *http.Request) {
	params := mux.Vars(r)
	IDConsumable := params["IDConsumable"]
	id, _ := strconv.Atoi(IDConsumable)
	payload, err := p.IConsumableRepo.GetConsumableOprtnListByID(r.Context(), id)
	if err == nil {
		utils.RespondwithJSON(w, http.StatusOK, payload)
	} else {
		utils.RespondwithJSON(w, http.StatusBadRequest, nil)
	}
}

// GetConsumableOprtnList ..
func (p *IConsumableRepo) GetConsumableOprtnList(w http.ResponseWriter, r *http.Request) {

	payload, err := p.IConsumableRepo.GetConsumableOprtnList(r.Context())
	if err == nil {
		utils.RespondwithJSON(w, http.StatusOK, payload)
	} else {
		utils.RespondwithJSON(w, http.StatusBadRequest, nil)
	}
}

//UpdateConsumable a new post
func (p *IConsumableRepo) UpdateConsumable(w http.ResponseWriter, r *http.Request) {
	mdl := cnsmblemdl.Consumables{}
	json.NewDecoder(r.Body).Decode(&mdl)
	err := p.IConsumableRepo.UpdateConsumable(r.Context(), &mdl)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, nil)
	}
}

type consumableBulkEdit struct {
	Consumable *cnsmblemdl.Consumables
	Ids        *[]string
}

//ConsumableBulkEdit ..
func (p *IConsumableRepo) ConsumableBulkEdit(w http.ResponseWriter, r *http.Request) {

	mdlStruct := &consumableBulkEdit{}
	json.NewDecoder(r.Body).Decode(mdlStruct)
	err := p.IConsumableRepo.ConsumableBulkEdit(r.Context(), mdlStruct.Consumable, *mdlStruct.Ids)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {

		utils.RespondwithJSON(w, http.StatusOK, nil)
	}
}

//CnsmblBulkRetire a new post
func (p *IConsumableRepo) CnsmblBulkRetire(w http.ResponseWriter, r *http.Request) {
	mdl := []*cmnmdl.InWardOutWardAsset{}
	json.NewDecoder(r.Body).Decode(&mdl)

	err := p.IConsumableRepo.CnsmblBulkRetire(r.Context(), mdl)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, nil)
	}
}

func (p *IConsumableRepo) ConsumablemasterInsert(w http.ResponseWriter, r *http.Request) {
	mdl := cnsmblemdl.Consumablemaster{}
	json.NewDecoder(r.Body).Decode(&mdl)
	err := p.IConsumableRepo.ConsumablemasterInsert(r.Context(), &mdl)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, nil)
	}
}

func (p *IConsumableRepo) Check_Unique_Consumable(w http.ResponseWriter, r *http.Request) {
	params := mux.Vars(r)
	ConsumableName := params["ConsumableName"]
	data, err := p.IConsumableRepo.Check_Unique_Consumable(r.Context(), ConsumableName)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, data)
	}
}

func (p *IConsumableRepo) GetVendorsByConsumable(w http.ResponseWriter, r *http.Request) {
	params := mux.Vars(r)
	ConsumableID := params["ConsumableID"]
	id, _ := strconv.Atoi(ConsumableID)
	data, err := p.IConsumableRepo.GetVendorsByConsumable(r.Context(), id)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, data)
	}
}

func (p *IConsumableRepo) ConsumableBulkDelete(w http.ResponseWriter, r *http.Request) {
	var ids []string
	json.NewDecoder(r.Body).Decode(&ids)
	err := p.IConsumableRepo.ConsumableBulkDelete(r.Context(), ids)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {

		utils.RespondwithJSON(w, http.StatusOK, nil)
	}
}

func (p *IConsumableRepo) ConsumableDelete(w http.ResponseWriter, r *http.Request) {
	params := mux.Vars(r)
	AssetID := params["AssetID"]
	id, _ := strconv.Atoi(AssetID)
	err := p.IConsumableRepo.ConsumableDelete(r.Context(), id)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, nil)
	}
}

func (p *IConsumableRepo) GetConsumableMastersByVendors(w http.ResponseWriter, r *http.Request) {
	params := mux.Vars(r)
	VendorID := params["VendorID"]
	id, _ := strconv.Atoi(VendorID)
	data, err := p.IConsumableRepo.GetConsumableMastersByVendors(r.Context(), id)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, data)
	}
}
//BulkCreateNonITAsset ..
func (p *IConsumableRepo) BulkCreateConsumables(w http.ResponseWriter, r *http.Request) {
	mdl := []*cnsmblemdl.Consumables{}
	json.NewDecoder(r.Body).Decode(&mdl)
	err := p.IConsumableRepo.BulkCreateConsumables(r.Context(), mdl)
	if err != nil {
		utils.RespondWithError(w, http.StatusInternalServerError, err.Error())
	} else {
		utils.RespondwithJSON(w, http.StatusOK, nil)
	}
}