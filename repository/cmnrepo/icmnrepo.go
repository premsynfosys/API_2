package cmnrepo

import (
	"context"

	 "github.com/premsynfosys/AMS_API/models/cmnmdl"
)

//CmnIntrfc ...
type CmnIntrfc interface {
	//GetUniqueID(ctx context.Context, modulename string) (int, error)
	GetRoles(ctx context.Context) ([]*cmnmdl.Role, error)
	GetDesignations(ctx context.Context) ([]*cmnmdl.Designation, error)
	GetEducations(ctx context.Context) ([]*cmnmdl.Educations, error)
	Activivty_Log_List(ctx context.Context, EmpID int,FromDate string ,ToDate string) ([]*cmnmdl.ActivityLog, error)
	Login(ctx context.Context, usr *cmnmdl.User) (*cmnmdl.User, error)
	GetUsers(ctx context.Context,LocID int)([]*cmnmdl.User, error)
	GetNotifications(ctx context.Context) ([]*cmnmdl.Notifications, error)
	GetEmployees(ctx context.Context,LocID int) ([]*cmnmdl.Employees, error)
	GetEmployeeByID(ctx context.Context, id int) (*cmnmdl.Employees, error)
	CreateEmployee(ctx context.Context, usr *cmnmdl.Employees) (int64, error)
	UpdateEmployee(ctx context.Context, p *cmnmdl.Employees) (*cmnmdl.Employees, error)
	DeleteEmployee(ctx context.Context, id *int) (error)
	GetStatus(ctx context.Context,typeName string) ([]*cmnmdl.Status, error)
	GetVendors(ctx context.Context) ([]*cmnmdl.Vendors, error)
	GetCountries(ctx context.Context) ([]*cmnmdl.Countries, error)
	GetStatesByCountry(ctx context.Context, id int) ([]*cmnmdl.States, error)
	GetLocations(ctx context.Context) ([]*cmnmdl.Locations, error)
	CreateVendors(ctx context.Context, usr *cmnmdl.Vendors) (int64, error)
	UpdateVendors(ctx context.Context, usr *cmnmdl.Vendors) error 
	CreateLocations(ctx context.Context, usr *cmnmdl.Locations) (int64, error)
	UpdateLocations(ctx context.Context, usr *cmnmdl.Locations)  error 
	CreateUser(ctx context.Context, usr *cmnmdl.User) (int64, error)
	UpdateUser(mdl *cmnmdl.User) (err error)
	GetFailedMails() ([]*cmnmdl.Email, error)
	RetryFailedmails()
	CreateInWardOutWard(ctx context.Context, usr *cmnmdl.InWardOutWard) error
	CreateOutWardCart(ctx context.Context, List []*cmnmdl.OutWardCart) error
	GetOutWardCart(ctx context.Context, SenderEmpID int) ([]*cmnmdl.OutWardCart, error)
	DeleteOutWardCart(AssetIds []int, Empid int, AssetType string) error
	OutWardDetailsByEmp(ctx context.Context, SenderEmpID int) ([]*cmnmdl.InWardOutWard, error)
	OutWardAssetDetailsByIwOwID(ctx context.Context, IwOwID int) ([]*cmnmdl.InWardOutWardAsset, error)
	InWardDetailsByEmp(ctx context.Context, RcvrEmpID int) ([]*cmnmdl.InWardOutWard, error)
	GetAssetdIDsNotEligbleForTransfer(ctx context.Context,trnsfr []*cmnmdl.Transfer) ([]*cmnmdl.Transfer, error)
	IWOWDetailsByAprvr(ctx context.Context, AprvrEmpID int) ([]*cmnmdl.InWardOutWard, error)
	TransferApprovReject(idInWardOutWard int, status string,comments string) error
	ReceiveIWAssets(obj *cmnmdl.InWardOutWard) error
	OwStatusChange(OWid int, Status int) error
	UpdateIsMsngStcksRslvdMain(ctx context.Context,IDInWardOutWard int) error
	Employees_Bulk_Insert(ctx context.Context, Listmdl []*cmnmdl.Employees) error 
	Resend_Activation_Link(ctx context.Context, EmpID int) error
	GetAuthorizationList_ByRole( RoleID int) ([]*cmnmdl.Authorization, error)
	GetFeatures_List() ([]*cmnmdl.Features_List, error)
	Send_ResetPasswordLink(ctx context.Context, EmpID int) error
	 User_Inactive(UserID int) error
	 Authorization_Create(ctx context.Context, data *cmnmdl.Authorization_Create) error 
	 User_Active(UserID int) error
	 Check_Unique_Email_Mobile(ctx context.Context, emp *cmnmdl.Employees) (*cmnmdl.Employees, error)
	 Check_Unique_UserName(ctx context.Context, UsrNme string) (str *string, err error)

	 GetEmployee_History_ByEmpID(ctx context.Context, EmpID int) ([]*cmnmdl.Employees, error)
	 Get_UsersHistory_ByEmpID(ctx context.Context, EmpID int) ([]*cmnmdl.Employees, error)
	 MultiLevelApproval(ctx context.Context) ([]*cmnmdl.MultiLevelApproval_Main, error) 
	 MultiLevelApproval_Map(ctx context.Context) ([]*cmnmdl.MultiLevelApproval_Main, error) 

	 MultiLevelApproval_config(ctx context.Context, mdl []*cmnmdl.MultiLevelApproval_Main) error
	 GetApprovers(ctx context.Context, LocID int, ROleID int) ([]*cmnmdl.User, error)
	 VendorsAssetDetails(ctx context.Context, VendorID int) ([]*cmnmdl.VendorsAssetDetails, error)
	 VednorsAssetMapInsert(ctx context.Context, mdl *cmnmdl.Vendors_consumablemaster_map) ( error)
	 VednorsAssetMapUpdate(ctx context.Context, mdl *cmnmdl.Vendors_consumablemaster_map) ( error)
	 IWOW_ApprovalStatusList(ctx context.Context, IDinwardoutward int) ([]*cmnmdl.InWardOutWardApproval, error)
	 InwardOutwardReqForward(ctx context.Context, mdl *cmnmdl.InWardOutWardApproval) error
	 GetAdminDashBoard(ctx context.Context, mdl *cmnmdl.AdminDashBoard) (*cmnmdl.AdminDashBoard, error)

	 GetEmployeeDashboard(ctx context.Context, mdl *cmnmdl.EmployeeDashboard) (*cmnmdl.EmployeeDashboard, error)
	// GetThresholdReachedStocks(ctx context.Context, LocID int) ([]*cmnmdl.ThresholdAlert, error) 
	PurchaseOrders_RequestsInsert(ctx context.Context, mdl *cmnmdl.PurchaseOrders_Requests) error
	GetPurchaseOrderUniqueID() (*string, error)
	GetPODetailsByReqstrID(ctx context.Context, ReqstrID int) ([]*cmnmdl.PurchaseOrders_Requests, error) 
	PODetailsByIDPO(ctx context.Context, IDPO int) (*cmnmdl.PurchaseOrders_Requests, error) 
	POAssetDetailsByIDPO(ctx context.Context, IDPO int) ([]*cmnmdl.PurchaseOrders_Assets, error)
	PO_ApprovalStatusList(ctx context.Context, IDPO int) ([]*cmnmdl.POApproval, error)
	GetPODetailsByApprover(ctx context.Context, ApproverID int) ([]*cmnmdl.PurchaseOrders_Requests, error)
	POReqForward(ctx context.Context, mdl *cmnmdl.POApproval) error 
	POReqApproved(ctx context.Context, mdl *cmnmdl.POApproval) error 
	POReqRejected(ctx context.Context, mdl *cmnmdl.POApproval) error
	PurchaseOrders_RequestsUpdate(ctx context.Context, mdl *cmnmdl.PurchaseOrders_Requests) error
	POStatusChange(IDPO int, Status int) error
}
 