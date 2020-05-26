package routes

import (
	"github.com/gorilla/mux"
	"github.com/premsynfosys/AMS_API/handler/cmnhndlr"
	"github.com/premsynfosys/AMS_API/handler/cnsmblhndlr"
	"github.com/premsynfosys/AMS_API/handler/itassetshndlr"
	"github.com/premsynfosys/AMS_API/handler/nonitassetshndlr"
)

//CmnRoutings ggg ..
func CmnRoutings(r *mux.Router, Handler *cmnhndlr.CmnIrepo) {
	r.HandleFunc("/VednorsAssetMapInsert", Handler.VednorsAssetMapInsert)

	r.HandleFunc("/IWOW_ApprovalStatusList/{IDinwardoutward}", Handler.IWOW_ApprovalStatusList)
	r.HandleFunc("/VednorsAssetMapUpdate", Handler.VednorsAssetMapUpdate)
	r.HandleFunc("/VendorsAssetDetails/{VendorID}", Handler.VendorsAssetDetails)
	r.HandleFunc("/Authorization_Create", Handler.Authorization_Create)
	r.HandleFunc("/MultiLevelApproval_config", Handler.MultiLevelApproval_config)
	r.HandleFunc("/GetMultiLevelApproval", Handler.MultiLevelApproval)
	r.HandleFunc("/GetMultiLevelApproval_Map", Handler.MultiLevelApproval_Map)
	r.HandleFunc("/GetFeatures_List", Handler.GetFeatures_List)
	r.HandleFunc("/GetAuthorizationList_ByRole/{RoleID}", Handler.GetAuthorizationList_ByRole)
	r.HandleFunc("/ResendActivationLink/{EmpID}", Handler.Resend_Activation_Link)
	//r.HandleFunc("/GetUniqueID/{modulename}", Handler.GetUniqueID)
	r.HandleFunc("/GetRoles", Handler.GetRoles)
	r.HandleFunc("/Activivty_Log_List/{EmpID}", Handler.Activivty_Log_List)
	r.HandleFunc("/GetEducations", Handler.GetEducations)
	r.HandleFunc("/GetDesignations", Handler.GetDesignations)
	r.HandleFunc("/Login", Handler.Login)
	r.HandleFunc("/GetUsers", Handler.GetUsers)
	r.HandleFunc("/GetApprovers/{LocID:[0-9]+}/{RoleID:[0-9]+}", Handler.GetApprovers)
	r.HandleFunc("/GetNotifications", Handler.GetNotifications)
	r.HandleFunc("/employees", Handler.GetEmployees)
	r.HandleFunc("/employee_BulkInsert", Handler.Employees_Bulk_Insert)
	r.HandleFunc("/employee/{id:[0-9]+}", Handler.GetEmployeeByID)
	r.HandleFunc("/GetEmployee_History_ByEmpID/{id:[0-9]+}", Handler.GetEmployee_History_ByEmpID)
	r.HandleFunc("/Get_UsersHistory_ByEmpID/{id:[0-9]+}", Handler.Get_UsersHistory_ByEmpID)
	r.HandleFunc("/employee/create", Handler.CreateEmployee)
	r.HandleFunc("/user/create", Handler.CreateUser)
	r.HandleFunc("/user/update", Handler.UpdateUser)
	r.HandleFunc("/User_Inactive/{UserID}", Handler.User_Inactive)
	r.HandleFunc("/User_Active/{UserID}", Handler.User_Active)
	r.HandleFunc("/Check_Unique_Email_Mobile", Handler.Check_Unique_Email_Mobile)
	r.HandleFunc("/Check_Unique_UserName/{UserName}", Handler.Check_Unique_UserName)
	r.HandleFunc("/Send_ResetPasswordLink/{empid}", Handler.Send_ResetPasswordLink)
	r.HandleFunc("/employee/update", Handler.UpdateEmployee)
	r.HandleFunc("/employeeDelete/{id}", Handler.DeleteEmployee)
	r.HandleFunc("/status/{typeName}", Handler.GetStatus)
	r.HandleFunc("/GetVendors", Handler.GetVendors)
	r.HandleFunc("/GetCountries", Handler.GetCountries)
	r.HandleFunc("/GetStatesByCountry/{id:[0-9]+}", Handler.GetStatesByCountry)
	r.HandleFunc("/GetLocations", Handler.GetLocations)
	r.HandleFunc("/CreateLocations", Handler.CreateLocations)
	r.HandleFunc("/UpdateVendors", Handler.UpdateVendors)
	r.HandleFunc("/UpdateLocations", Handler.UpdateLocations)
	r.HandleFunc("/CreateVendors", Handler.CreateVendor)
	r.HandleFunc("/CreateInWardOutWard", Handler.CreateInWardOutWard)
	r.HandleFunc("/CreateOutWardCart", Handler.CreateOutWardCart)
	r.HandleFunc("/GetOutWardCart/{SenderEmpid:[0-9]+}", Handler.GetOutWardCart)
	r.HandleFunc("/DeleteOutWardCart", Handler.DeleteOutWardCart)
	r.HandleFunc("/OutWardDetailsByEmp/{SenderEmpid:[0-9]+}", Handler.OutWardDetailsByEmp)
	r.HandleFunc("/InWardDetailsByEmp/{RcvrEmpID:[0-9]+}", Handler.InWardDetailsByEmp)
	r.HandleFunc("/OutWardAssetDetailsByIwOwID/{IwOwID:[0-9]+}", Handler.OutWardAssetDetailsByIwOwID)
	r.HandleFunc("/GetAssetdIDsNotEligbleForTransfer", Handler.GetAssetdIDsNotEligbleForTransfer)
	r.HandleFunc("/IWOWDetailsByAprvr/{AprvrEmpID:[0-9]+}", Handler.IWOWDetailsByAprvr)
	r.HandleFunc("/TransferApprovReject/{idInWardOutWard}/{status}", Handler.TransferApprovReject)
	r.HandleFunc("/ReceiveIWAssets", Handler.ReceiveIWAssets)
	r.HandleFunc("/OwStatusChange/{OWid}/{Status}", Handler.OwStatusChange)
	r.HandleFunc("/UpdateIsMsngStcksRslvdMain/{IDInWardOutWard}", Handler.UpdateIsMsngStcksRslvdMain)
	r.HandleFunc("/InwardOutwardReqForward", Handler.InwardOutwardReqForward)
}

//ConsumableRoutings ..
func ConsumableRoutings(r *mux.Router, Handler *cnsmblhndlr.IConsumableRepo) {
	r.HandleFunc("/Check_Unique_Consumable/{ConsumableName}", Handler.Check_Unique_Consumable)
	r.HandleFunc("/GetVendorsByConsumable/{ConsumableID}", Handler.GetVendorsByConsumable)
	r.HandleFunc("/Consumables/CreateConsumable", Handler.CreateConsumable)
	r.HandleFunc("/ConsumablemasterInsert", Handler.ConsumablemasterInsert)
	r.HandleFunc("/Consumables/UpdateConsumable", Handler.UpdateConsumable)
	r.HandleFunc("/Consumables/PostConsumableOprtnsAddStock", Handler.PostConsumableOprtnsAddStock)
	r.HandleFunc("/Consumables/PostConsumableOprtnsRemovestock", Handler.PostConsumableOprtnsRemovestock)
	r.HandleFunc("/Consumables/GetConsumableGroups", Handler.GetConsumableGroups)
	r.HandleFunc("/Consumables/GetConsumableList/{LocID}", Handler.GetConsumableList)
	r.HandleFunc("/Consumables/GetConsumableMasterList", Handler.GetConsumableMasterList)
	r.HandleFunc("/Consumables/GetConsumableListByID/{IDConsumable}", Handler.GetConsumableListByID)
	r.HandleFunc("/Consumables/GetConsumableOprtnList", Handler.GetConsumableOprtnList)
	r.HandleFunc("/Consumables/GetConsumableOprtnListByID/{IDConsumable}", Handler.GetConsumableOprtnListByID)
	r.HandleFunc("/Consumables/ConsumablesBulkEdit", Handler.ConsumableBulkEdit)
	r.HandleFunc("/Consumables/CnsmblBulkRetire", Handler.CnsmblBulkRetire)
	r.HandleFunc("/Consumables/CheckDuplicateAssetEntry/{MasterID:[0-9]+}/{LocID:[0-9]+}", Handler.CheckDuplicateAssetEntry)
	r.HandleFunc("/ConsumableBulkDelete", Handler.ConsumableBulkDelete)
}

//ITAssetRouting ..
func ITAssetRouting(r *mux.Router, pHandler *itassetshndlr.IITAsset) {
	r.HandleFunc("/ITAssetReqForward", pHandler.ITAssetReqForward)
	r.HandleFunc("/ITAssetReq_ApprovalStatusList/{ReqGroupID}", pHandler.ITAssetReq_ApprovalStatusList)
	r.HandleFunc("/Get_ITAssetsHistory_ByAsset/{AssetID}", pHandler.Get_ITAssetsHistory_ByAsset)
	r.HandleFunc("/ITAssetGroups_Create", pHandler.ITAssetGroups_Create)
	r.HandleFunc("/GetEmployeeITAssetsByID", pHandler.GetEmployeeITAssetsByID)
	r.HandleFunc("/GetITAsset_Retired", pHandler.GetITAsset_Retired)
	r.HandleFunc("/itassets/createitassets", pHandler.CreateITAsset)
	r.HandleFunc("/itassets/Bulkcreateitassets", pHandler.BulkCreateITAsset)
	r.HandleFunc("/itassets/ITAssetsBulkEdit", pHandler.ITAssetsBulkEdit)
	r.HandleFunc("/itassets/Groups", pHandler.GetITAssetGroups)
	r.HandleFunc("/itassets/CreateRequest", pHandler.CreateITAssetRequest)
	r.HandleFunc("/itassets/GetITAssetReqList/{Apprvrid:[0-9]+}", pHandler.GetITAssetReqList)
	r.HandleFunc("/itassets/ITAssetReqReject", pHandler.ITAssetReqReject)
	r.HandleFunc("/itassets/ITAssetReqApprove", pHandler.ITAssetReqApprove)
	r.HandleFunc("/itassets/GetITAssetReqListByReqGroup/{ReqGroupID:[0-9]+}/{ApproverID:[0-9]+}", pHandler.ITAssetReqListByReqGroup)
	r.HandleFunc("/itassets/Updateitassets", pHandler.UpdateITAsset)
	r.HandleFunc("/itassets/ITAssetRetire", pHandler.ITAssetRetire)
	r.HandleFunc("/itassets", pHandler.GetITAsset)

	r.HandleFunc("/CreateITAssetCheckout", pHandler.CreateITAssetsCheckoutT)

	r.HandleFunc("/CreateITAssetsCheckIn", pHandler.CreateITAssetsCheckIn)
	r.HandleFunc("/GetITassetsFilesByID/{id:[0-9]+}", pHandler.GetITassetsFilesByID)
	r.HandleFunc("/CreateITAssetFiles", pHandler.CreateITAssetFiles)
	r.HandleFunc("/GetCustomFields", pHandler.GetCustomFields)
	r.HandleFunc("/ITasset_services_Insert", pHandler.ITasset_services_Insert)
	r.HandleFunc("/ITasset_services_start_Update", pHandler.ITasset_services_start_Update)
	r.HandleFunc("/ITasset_services_Extend_Update", pHandler.ITasset_services_Extend_Update)
	r.HandleFunc("/ITasset_services_Complete_Update", pHandler.ITasset_services_Complete_Update)

	r.HandleFunc("/GetITAssetservices_List/{ITAssetID:[0-9]+}", pHandler.GetITAssetservices_List)
	r.HandleFunc("/ITAsset_Service_Request", pHandler.ITAsset_Service_Request)
	r.HandleFunc("/GetITAsset_service_request_List/{EmpID:[0-9]+}", pHandler.GetITAsset_service_request_List)

}

//NonITAssetRouting ..
func NonITAssetRouting(r *mux.Router, pHandler *nonitassetshndlr.INonITAsset) {
	r.HandleFunc("/CheckDuplicateNonITAssetEntry/{MasterID:[0-9]+}/{LocID:[0-9]+}", pHandler.CheckDuplicateNonITAssetEntry)
	r.HandleFunc("/Check_Unique_NonITAsset/{NonITAssetName}", pHandler.Check_Unique_NonITAsset)
	r.HandleFunc("/GetNonITAssetMasterLists", pHandler.GetNonITAssetMasterLists)
	r.HandleFunc("/NonITAssetCheckin", pHandler.NonITAssetCheckin)
	r.HandleFunc("/CreateNonITAsset", pHandler.CreateNonITAsset)
	r.HandleFunc("/GetNonITAssetLists/{LocID}", pHandler.GetNonITAssetLists)
	r.HandleFunc("/GetNonITAssetList_BY_AssetID/{AssetID}", pHandler.GetNonITAssetList_BY_AssetID)
	r.HandleFunc("/PostNonITAssetEdit", pHandler.NonITAsset_Edit)
	r.HandleFunc("/PostNonITAssets_oprtns_AddStock", pHandler.PostNonITAssets_oprtns_AddStock)
	r.HandleFunc("/PostNonITAssets_oprtns_Removestock", pHandler.PostNonITAssets_oprtns_Removestock)
	r.HandleFunc("/PostNonITAssets_CheckOut", pHandler.PostNonITAssets_CheckOut)
	r.HandleFunc("/NonITAssetemasterInsert", pHandler.NonITAssetemasterInsert)
	r.HandleFunc("/GetNonITAssetGroups", pHandler.GetNonITAssetGroups)
	r.HandleFunc("/GetNonITAssetOprtnListByID/{IDNonITAsset}", pHandler.GetNonITAssetOprtnListByID)
	r.HandleFunc("/CreateNonITAssetRequest", pHandler.CreateNonITAssetRequest)
	r.HandleFunc("/GetNonITAssetReqList/{Apprvrid}", pHandler.GetNonITAssetReqList)
	r.HandleFunc("/NonITAssetReq_ApprovalStatusList/{ReqGroupID}", pHandler.NonITAssetReq_ApprovalStatusList)
	r.HandleFunc("/NonITAssetReqReject", pHandler.NonITAssetReqReject)

	r.HandleFunc("/NonITAssetReqForward", pHandler.NonITAssetReqForward)
	r.HandleFunc("/NonITAssetReqApprove", pHandler.NonITAssetReqApprove)
	r.HandleFunc("/Getnonitassets_checkinByID/{CheckinID}", pHandler.Getnonitassets_checkinByID)
	r.HandleFunc("/NonITAssetReqListByReqGroup/{ReqGroupID:[0-9]+}/{ApproverID:[0-9]+}", pHandler.NonITAssetReqListByReqGroup)

	r.HandleFunc("/GetNonITAssetCheckinDetails/{LocID}", pHandler.GetNonITAssetCheckinDetails)
	r.HandleFunc("/GetNonITAssetCheckinDetailsByAsset/{IDNonITAsset}", pHandler.GetNonITAssetCheckinDetailsByAsset)
	r.HandleFunc("/GetNonITAssetCheckinDetailsByEmp/{EmpID}", pHandler.GetNonITAssetCheckinDetailsByEmp)

}
