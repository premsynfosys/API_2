package routes

import (
	"github.com/gorilla/mux"
	"github.com/premsynfosys/AMS_API/handler/cmnhndlr"
	"github.com/premsynfosys/AMS_API/handler/cnsmblhndlr"
	"github.com/premsynfosys/AMS_API/handler/itassetshndlr"
	"github.com/premsynfosys/AMS_API/handler/nonitassetshndlr"
	"github.com/premsynfosys/AMS_API/utils"
)

//CmnRoutings ggg ..
func CmnRoutings(r *mux.Router, Handler *cmnhndlr.CmnIrepo) {
	//	r.HandleFunc("/GetThresholdReachedStocks/{LocID}", Handler.GetThresholdReachedStocks)
	r.HandleFunc("/POStatusChange/{IDPO}/{Status}", utils.IsAuthorized(Handler.POStatusChange))
	r.HandleFunc("/RequisitionStatusChange/{ID}/{Status}", utils.IsAuthorized(Handler.RequisitionStatusChange))
	r.HandleFunc("/POReqApproved",utils.IsAuthorized( Handler.POReqApproved))
	r.HandleFunc("/POReqForward", utils.IsAuthorized(Handler.POReqForward))
	r.HandleFunc("/POReqRejected", utils.IsAuthorized(Handler.POReqRejected))
	r.HandleFunc("/RequisitionStcokReceived", utils.IsAuthorized(Handler.RequisitionStcokReceived))

	r.HandleFunc("/RequisitionReqApproved", utils.IsAuthorized(Handler.RequisitionReqApproved))
	r.HandleFunc("/RequisitionReqForward", utils.IsAuthorized(Handler.RequisitionReqForward))
	r.HandleFunc("/RequisitionReqRejected", utils.IsAuthorized(Handler.RequisitionReqRejected))

	r.HandleFunc("/PurchaseOrders_RequestsUpdate",utils.IsAuthorized( Handler.PurchaseOrders_RequestsUpdate))
	r.HandleFunc("/Requisition_RequestsUpdate", utils.IsAuthorized(Handler.Requisition_RequestsUpdate))

	r.HandleFunc("/GetPODetailsByApprover/{ApprvrID}", utils.IsAuthorized(Handler.GetPODetailsByApprover))
	r.HandleFunc("/GetRequisitionDetailsByApprover/{ApprvrID}",utils.IsAuthorized( Handler.GetRequisitionDetailsByApprover))

	r.HandleFunc("/GetPurchaseOrderUniqueID", utils.IsAuthorized(Handler.GetPurchaseOrderUniqueID))

	r.HandleFunc("/GetPODetailsByReqstrID/{ReqstrID}", utils.IsAuthorized(Handler.GetPODetailsByReqstrID))
	r.HandleFunc("/GetRequisitionDetailsByReqstrID/{ReqstrID}", utils.IsAuthorized(Handler.GetRequisitionDetailsByReqstrID))

	r.HandleFunc("/PODetailsByIDPO/{IDPO}", utils.IsAuthorized(Handler.PODetailsByIDPO))
	r.HandleFunc("/RequisitionDetailsByID/{ID}", utils.IsAuthorized(Handler.RequisitionDetailsByID))
	r.HandleFunc("/GetRequisitionHistoryByReqID/{ReqID}", utils.IsAuthorized(Handler.GetRequisitionHistoryByReqID))

	r.HandleFunc("/POAssetDetailsByIDPO/{IDPO}", utils.IsAuthorized(Handler.POAssetDetailsByIDPO))
	r.HandleFunc("/RequisitionAssetDetailsByID/{ID}", utils.IsAuthorized(Handler.RequisitionAssetDetailsByID))

	r.HandleFunc("/PO_ApprovalStatusList/{IDPO}", utils.IsAuthorized(Handler.PO_ApprovalStatusList))
	r.HandleFunc("/Requisition_ApprovalStatusList/{ID}",utils.IsAuthorized( Handler.Requisition_ApprovalStatusList))

	r.HandleFunc("/PurchaseOrders_RequestsInsert", utils.IsAuthorized(Handler.PurchaseOrders_RequestsInsert))
	r.HandleFunc("/Requisition_RequestsInsert", utils.IsAuthorized(Handler.Requisition_RequestsInsert))

	r.HandleFunc("/VednorsAssetMapInsert",utils.IsAuthorized( Handler.VednorsAssetMapInsert))
	r.HandleFunc("/GetAdminDashBoard", utils.IsAuthorized(Handler.GetAdminDashBoard))
	r.HandleFunc("/GetEmployeeDashboard",utils.IsAuthorized( Handler.GetEmployeeDashboard))

	r.HandleFunc("/IWOW_ApprovalStatusList/{IDinwardoutward}",utils.IsAuthorized( Handler.IWOW_ApprovalStatusList))
	r.HandleFunc("/VednorsAssetMapUpdate", utils.IsAuthorized(Handler.VednorsAssetMapUpdate))
	r.HandleFunc("/VendorsAssetDetails/{VendorID}",utils.IsAuthorized( Handler.VendorsAssetDetails))
	r.HandleFunc("/Authorization_Create", utils.IsAuthorized(Handler.Authorization_Create))
	r.HandleFunc("/MultiLevelApproval_config",utils.IsAuthorized( Handler.MultiLevelApproval_config))
	r.HandleFunc("/GetMultiLevelApproval",utils.IsAuthorized( Handler.MultiLevelApproval))
	r.HandleFunc("/GetMultiLevelApproval_Map", utils.IsAuthorized(Handler.MultiLevelApproval_Map))
	r.HandleFunc("/GetFeatures_List", utils.IsAuthorized(Handler.GetFeatures_List))
	r.HandleFunc("/GetAuthorizationList_ByRole/{RoleID}",utils.IsAuthorized( Handler.GetAuthorizationList_ByRole))
	r.HandleFunc("/ResendActivationLink/{EmpID}",utils.IsAuthorized( Handler.Resend_Activation_Link))
	//r.HandleFunc("/GetUniqueID/{modulename}", Handler.GetUniqueID)
	r.HandleFunc("/GetRoles", utils.IsAuthorized(Handler.GetRoles))
	r.HandleFunc("/Activivty_Log_List/{EmpID}",utils.IsAuthorized( Handler.Activivty_Log_List))
	r.HandleFunc("/GetEducations", utils.IsAuthorized(Handler.GetEducations))
	r.HandleFunc("/GetDesignations", utils.IsAuthorized(Handler.GetDesignations))
	r.HandleFunc("/Login",  utils.IsAuthorized(Handler.Login))
	r.HandleFunc("/GetUsers",  utils.IsAuthorized(Handler.GetUsers))
	r.HandleFunc("/GetApprovers/{LocID:[0-9]+}/{RoleID:[0-9]+}",  utils.IsAuthorized(Handler.GetApprovers))
	r.HandleFunc("/GetNotifications", utils.IsAuthorized( Handler.GetNotifications))
	r.HandleFunc("/employees",  utils.IsAuthorized(Handler.GetEmployees))
	r.HandleFunc("/employee_BulkInsert",  utils.IsAuthorized(Handler.Employees_Bulk_Insert))
	r.HandleFunc("/employee/{id:[0-9]+}", utils.IsAuthorized( Handler.GetEmployeeByID))
	r.HandleFunc("/GetEmployee_History_ByEmpID/{id:[0-9]+}",  utils.IsAuthorized(Handler.GetEmployee_History_ByEmpID))
	r.HandleFunc("/Get_UsersHistory_ByEmpID/{id:[0-9]+}",  utils.IsAuthorized(Handler.Get_UsersHistory_ByEmpID))
	r.HandleFunc("/employee/create",  utils.IsAuthorized(Handler.CreateEmployee))
	r.HandleFunc("/user/create",  utils.IsAuthorized(Handler.CreateUser))
	r.HandleFunc("/user/update",  utils.IsAuthorized(Handler.UpdateUser))
	r.HandleFunc("/User_Inactive/{UserID}",  utils.IsAuthorized(Handler.User_Inactive))
	r.HandleFunc("/User_Active/{UserID}",  utils.IsAuthorized(Handler.User_Active))
	r.HandleFunc("/Check_Unique_Email_Mobile",  utils.IsAuthorized(Handler.Check_Unique_Email_Mobile))
	r.HandleFunc("/Check_Unique_UserName/{UserName}",  utils.IsAuthorized(Handler.Check_Unique_UserName))
	r.HandleFunc("/Send_ResetPasswordLink/{empid}", utils.IsAuthorized(Handler.Send_ResetPasswordLink))
	r.HandleFunc("/employee/update", utils.IsAuthorized(Handler.UpdateEmployee))
	r.HandleFunc("/employeeDelete/{id}", utils.IsAuthorized(Handler.DeleteEmployee))
	r.HandleFunc("/status/{typeName}", utils.IsAuthorized(Handler.GetStatus))
	r.HandleFunc("/GetVendors",utils.IsAuthorized(Handler.GetVendors))
	r.HandleFunc("/GetCountries", utils.IsAuthorized(Handler.GetCountries))
	r.HandleFunc("/GetStatesByCountry/{id:[0-9]+}",utils.IsAuthorized( Handler.GetStatesByCountry))
	r.HandleFunc("/GetLocations", utils.IsAuthorized(Handler.GetLocations))
	r.HandleFunc("/CreateLocations", utils.IsAuthorized(Handler.CreateLocations))
	r.HandleFunc("/UpdateVendors", utils.IsAuthorized(Handler.UpdateVendors))
	r.HandleFunc("/DeleteVendors", utils.IsAuthorized(Handler.DeleteVendors))
	r.HandleFunc("/UpdateLocations",utils.IsAuthorized( Handler.UpdateLocations))
	r.HandleFunc("/CreateVendors", utils.IsAuthorized(Handler.CreateVendor))
	r.HandleFunc("/CreateInWardOutWard", utils.IsAuthorized(Handler.CreateInWardOutWard))
	r.HandleFunc("/CreateOutWardCart", utils.IsAuthorized(Handler.CreateOutWardCart))
	r.HandleFunc("/GetOutWardCart/{SenderEmpid:[0-9]+}", utils.IsAuthorized(Handler.GetOutWardCart))
	r.HandleFunc("/DeleteOutWardCart",utils.IsAuthorized( Handler.DeleteOutWardCart))
	r.HandleFunc("/OutWardDetailsByEmp/{SenderEmpid:[0-9]+}",utils.IsAuthorized( Handler.OutWardDetailsByEmp))
	r.HandleFunc("/InWardDetailsByEmp/{RcvrEmpID:[0-9]+}", utils.IsAuthorized(Handler.InWardDetailsByEmp))
	r.HandleFunc("/OutWardAssetDetailsByIwOwID/{IwOwID:[0-9]+}",utils.IsAuthorized( Handler.OutWardAssetDetailsByIwOwID))
	r.HandleFunc("/GetAssetdIDsNotEligbleForTransfer",utils.IsAuthorized( Handler.GetAssetdIDsNotEligbleForTransfer))
	r.HandleFunc("/IWOWDetailsByAprvr/{AprvrEmpID:[0-9]+}",utils.IsAuthorized( Handler.IWOWDetailsByAprvr))
	r.HandleFunc("/TransferApprovReject/{idInWardOutWard}/{status}",utils.IsAuthorized( Handler.TransferApprovReject))
	r.HandleFunc("/ReceiveIWAssets",utils.IsAuthorized( Handler.ReceiveIWAssets))
	r.HandleFunc("/OwStatusChange/{OWid}/{Status}",utils.IsAuthorized( Handler.OwStatusChange))
	r.HandleFunc("/UpdateIsMsngStcksRslvdMain/{IDInWardOutWard}",utils.IsAuthorized( Handler.UpdateIsMsngStcksRslvdMain))
	r.HandleFunc("/InwardOutwardReqForward", utils.IsAuthorized(Handler.InwardOutwardReqForward))
}

//ConsumableRoutings ..
func ConsumableRoutings(r *mux.Router, Handler *cnsmblhndlr.IConsumableRepo) {
	r.HandleFunc("/GetConsumableMastersByVendors/{VendorID}",  utils.IsAuthorized(Handler.GetConsumableMastersByVendors))
	r.HandleFunc("/ConsumableDelete/{AssetID}", utils.IsAuthorized( Handler.ConsumableDelete))
	r.HandleFunc("/Check_Unique_Consumable/{ConsumableName}", utils.IsAuthorized( Handler.Check_Unique_Consumable))
	r.HandleFunc("/GetVendorsByConsumable/{ConsumableID}", utils.IsAuthorized( Handler.GetVendorsByConsumable))
	r.HandleFunc("/Consumables/CreateConsumable",  utils.IsAuthorized(Handler.CreateConsumable))
	r.HandleFunc("/ConsumablemasterInsert", utils.IsAuthorized( Handler.ConsumablemasterInsert))
	r.HandleFunc("/Consumables/UpdateConsumable", utils.IsAuthorized( Handler.UpdateConsumable))
	r.HandleFunc("/Consumables/PostConsumableOprtnsAddStock",  utils.IsAuthorized(Handler.PostConsumableOprtnsAddStock))
	r.HandleFunc("/Consumables/PostConsumableOprtnsRemovestock",  utils.IsAuthorized(Handler.PostConsumableOprtnsRemovestock))
	r.HandleFunc("/Consumables/GetConsumableGroups",  utils.IsAuthorized(Handler.GetConsumableGroups))
	r.HandleFunc("/Consumables/GetConsumableList/{LocID}", utils.IsAuthorized( Handler.GetConsumableList))
	r.HandleFunc("/Consumables/GetConsumableMasterList", utils.IsAuthorized( Handler.GetConsumableMasterList))
	r.HandleFunc("/Consumables/GetConsumableListByID/{IDConsumable}", utils.IsAuthorized( Handler.GetConsumableListByID))
	r.HandleFunc("/Consumables/GetConsumableOprtnList", utils.IsAuthorized( Handler.GetConsumableOprtnList))
	r.HandleFunc("/Consumables/GetConsumableOprtnListByID/{IDConsumable}", utils.IsAuthorized( Handler.GetConsumableOprtnListByID))
	r.HandleFunc("/Consumables/ConsumablesBulkEdit", utils.IsAuthorized( Handler.ConsumableBulkEdit))
	r.HandleFunc("/Consumables/CnsmblBulkRetire",  utils.IsAuthorized(Handler.CnsmblBulkRetire))
	r.HandleFunc("/Consumables/CheckDuplicateAssetEntry/{MasterID:[0-9]+}/{LocID:[0-9]+}", utils.IsAuthorized(Handler.CheckDuplicateAssetEntry))
	r.HandleFunc("/ConsumableBulkDelete",utils.IsAuthorized( Handler.ConsumableBulkDelete))
}

//ITAssetRouting ..
func ITAssetRouting(r *mux.Router, pHandler *itassetshndlr.IITAsset) {
	r.HandleFunc("/GetITAssetToCheckoutToITasset/{LocID}/{AssetID}",utils.IsAuthorized( pHandler.GetITAssetToCheckoutToITasset))
	r.HandleFunc("/ITAssetReqForward", utils.IsAuthorized(pHandler.ITAssetReqForward))
	r.HandleFunc("/ITAssetDelete/{AssetID}", utils.IsAuthorized(pHandler.ITAssetDelete))
	r.HandleFunc("/GetITAssetReqListByEmp/{EmpID}", utils.IsAuthorized(pHandler.GetITAssetReqListByEmp))
	r.HandleFunc("/ITAsset_Service_Request_Resolve",utils.IsAuthorized( pHandler.ITAsset_Service_Request_Resolve))
	r.HandleFunc("/ITAssetReq_ApprovalStatusList/{ReqGroupID}", utils.IsAuthorized(pHandler.ITAssetReq_ApprovalStatusList))
	r.HandleFunc("/Get_ITAssetsHistory_ByAsset/{AssetID}", utils.IsAuthorized(pHandler.Get_ITAssetsHistory_ByAsset))
	r.HandleFunc("/ITAssetGroups_Create",utils.IsAuthorized( pHandler.ITAssetGroups_Create))
	r.HandleFunc("/GetEmployeeITAssetsByID",utils.IsAuthorized( pHandler.GetEmployeeITAssetsByID))
	r.HandleFunc("/GetITAsset_Retired",utils.IsAuthorized( pHandler.GetITAsset_Retired))
	r.HandleFunc("/itassets/createitassets",utils.IsAuthorized( pHandler.CreateITAsset))
	r.HandleFunc("/itassets/Bulkcreateitassets",utils.IsAuthorized( pHandler.BulkCreateITAsset))
	r.HandleFunc("/itassets/ITAssetsBulkEdit",utils.IsAuthorized( pHandler.ITAssetsBulkEdit))
	r.HandleFunc("/itassets/Groups", utils.IsAuthorized(pHandler.GetITAssetGroups))
	r.HandleFunc("/itassets/CreateRequest", utils.IsAuthorized(pHandler.CreateITAssetRequest))
	r.HandleFunc("/itassets/GetITAssetReqList/{Apprvrid:[0-9]+}",utils.IsAuthorized( pHandler.GetITAssetReqList))
	r.HandleFunc("/itassets/ITAssetReqReject",utils.IsAuthorized( pHandler.ITAssetReqReject))
	r.HandleFunc("/itassets/ITAssetReqApprove", utils.IsAuthorized(pHandler.ITAssetReqApprove))
	r.HandleFunc("/itassets/GetITAssetReqListByReqGroup/{ReqGroupID:[0-9]+}/{ApproverID:[0-9]+}", utils.IsAuthorized(pHandler.ITAssetReqListByReqGroup))
	r.HandleFunc("/itassets/Updateitassets",utils.IsAuthorized( pHandler.UpdateITAsset))
	r.HandleFunc("/itassets/ITAssetRetire", utils.IsAuthorized(pHandler.ITAssetRetire))
	r.HandleFunc("/itassets", utils.IsAuthorized(pHandler.GetITAsset))

	r.HandleFunc("/CreateITAssetCheckout", utils.IsAuthorized(pHandler.CreateITAssetsCheckoutT))

	r.HandleFunc("/CreateITAssetsCheckIn",utils.IsAuthorized( pHandler.CreateITAssetsCheckIn))
	r.HandleFunc("/GetITassetsFilesByID/{id:[0-9]+}",utils.IsAuthorized( pHandler.GetITassetsFilesByID))
	r.HandleFunc("/CreateITAssetFiles", utils.IsAuthorized(pHandler.CreateITAssetFiles))
	r.HandleFunc("/GetCustomFields/{id}/{Mod}", utils.IsAuthorized(pHandler.GetCustomFields))
	r.HandleFunc("/ITasset_services_Insert", utils.IsAuthorized(pHandler.ITasset_services_Insert))
	r.HandleFunc("/ITasset_services_start_Update", utils.IsAuthorized(pHandler.ITasset_services_start_Update))
	r.HandleFunc("/ITasset_services_Extend_Update",utils.IsAuthorized( pHandler.ITasset_services_Extend_Update))
	r.HandleFunc("/ITasset_services_Complete_Update", utils.IsAuthorized(pHandler.ITasset_services_Complete_Update))

	r.HandleFunc("/GetITAssetservices_List/{ITAssetID:[0-9]+}",utils.IsAuthorized( pHandler.GetITAssetservices_List))
	r.HandleFunc("/GetITAssetservices_List_ByLoc/{LocID:[0-9]+}",utils.IsAuthorized( pHandler.GetITAssetservices_List_ByLoc))
	
	r.HandleFunc("/ITAsset_Service_Request",utils.IsAuthorized( pHandler.ITAsset_Service_Request))
	r.HandleFunc("/GetITAsset_service_request_List/{EmpID:[0-9]+}",utils.IsAuthorized( pHandler.GetITAsset_service_request_List))

}

//NonITAssetRouting ..
func NonITAssetRouting(r *mux.Router, pHandler *nonitassetshndlr.INonITAsset) {
	r.HandleFunc("/NonITAssetDelete/{AssetID}", utils.IsAuthorized(pHandler.NonITAssetDelete))
	r.HandleFunc("/CheckDuplicateNonITAssetEntry/{MasterID:[0-9]+}/{LocID:[0-9]+}",utils.IsAuthorized( pHandler.CheckDuplicateNonITAssetEntry))
	r.HandleFunc("/Check_Unique_NonITAsset/{NonITAssetName}", utils.IsAuthorized(pHandler.Check_Unique_NonITAsset))
	r.HandleFunc("/GetNonITAssetMasterLists", utils.IsAuthorized(pHandler.GetNonITAssetMasterLists))
	r.HandleFunc("/GetNonITAssetReqListByEmp/{EmpID}",utils.IsAuthorized( pHandler.GetNonITAssetReqListByEmp))
	r.HandleFunc("/NonITAssetCheckin",utils.IsAuthorized( pHandler.NonITAssetCheckin))
	r.HandleFunc("/CreateNonITAsset",utils.IsAuthorized( pHandler.CreateNonITAsset))
	r.HandleFunc("/GetNonITAssetLists/{LocID}", utils.IsAuthorized(pHandler.GetNonITAssetLists))
	r.HandleFunc("/GetNonITAssetList_BY_AssetID/{AssetID}",utils.IsAuthorized( pHandler.GetNonITAssetList_BY_AssetID))
	r.HandleFunc("/PostNonITAssetEdit",utils.IsAuthorized( pHandler.NonITAsset_Edit))
	r.HandleFunc("/PostNonITAssets_oprtns_AddStock", utils.IsAuthorized(pHandler.PostNonITAssets_oprtns_AddStock))
	r.HandleFunc("/PostNonITAssets_oprtns_Removestock", utils.IsAuthorized(pHandler.PostNonITAssets_oprtns_Removestock))
	r.HandleFunc("/PostNonITAssets_CheckOut",utils.IsAuthorized( pHandler.PostNonITAssets_CheckOut))
	r.HandleFunc("/NonITAssetemasterInsert",utils.IsAuthorized( pHandler.NonITAssetemasterInsert))
	r.HandleFunc("/GetNonITAssetGroups", utils.IsAuthorized(pHandler.GetNonITAssetGroups))
	r.HandleFunc("/GetNonITAssetOprtnListByID/{IDNonITAsset}", utils.IsAuthorized(pHandler.GetNonITAssetOprtnListByID))
	r.HandleFunc("/CreateNonITAssetRequest", utils.IsAuthorized(pHandler.CreateNonITAssetRequest))
	r.HandleFunc("/GetNonITAssetReqList/{Apprvrid}", utils.IsAuthorized(pHandler.GetNonITAssetReqList))
	r.HandleFunc("/NonITAssetReq_ApprovalStatusList/{ReqGroupID}",utils.IsAuthorized( pHandler.NonITAssetReq_ApprovalStatusList))
	r.HandleFunc("/NonITAssetReqReject",utils.IsAuthorized( pHandler.NonITAssetReqReject))

	r.HandleFunc("/NonITAssetReqForward", utils.IsAuthorized(pHandler.NonITAssetReqForward))
	r.HandleFunc("/NonITAssetReqApprove", utils.IsAuthorized(pHandler.NonITAssetReqApprove))
	r.HandleFunc("/Getnonitassets_checkinByID/{CheckinID}",utils.IsAuthorized( pHandler.Getnonitassets_checkinByID))
	r.HandleFunc("/NonITAssetReqListByReqGroup/{ReqGroupID:[0-9]+}/{ApproverID:[0-9]+}",utils.IsAuthorized( pHandler.NonITAssetReqListByReqGroup))

	r.HandleFunc("/GetNonITAssetCheckinDetails/{LocID}", utils.IsAuthorized(pHandler.GetNonITAssetCheckinDetails))
	r.HandleFunc("/GetNonITAssetCheckinDetailsByAsset/{IDNonITAsset}",utils.IsAuthorized( pHandler.GetNonITAssetCheckinDetailsByAsset))
	r.HandleFunc("/GetNonITAssetCheckinDetailsByEmp/{EmpID}",utils.IsAuthorized( pHandler.GetNonITAssetCheckinDetailsByEmp))

}
