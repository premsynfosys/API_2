package itassetrepo

import (
	"context"

	 "github.com/premsynfosys/AMS_API/models/itassetmdl"
)

//ITAsserIntfc explain method def...
type ITAsserIntfc interface {
	ITAssetGroups_Create(ctx context.Context, grp *itassetmdl.ITAssetGroup) error
	GetEmployeeITAssetsByID(ctx context.Context, EmpID int, isCheckin int) ([]*itassetmdl.ITAssetModel, error)
	CreateITAsset(ctx context.Context, usr *itassetmdl.ITAssetModel) (int64, error)
	BulkCreateITAsset(ctx context.Context, mdl []*itassetmdl.ITAssetModel) error
	GetITAsset(ctx context.Context,LocID int)([]*itassetmdl.ITAssetModel, error)
	GetITAssetGroups(ctx context.Context) ([]*itassetmdl.ITAssetGroup, error)
	CreateITAssetsCheckoutT(ctx context.Context, usr *itassetmdl.ITassetCheckout) error
	GetITassetsFilesByID(ctx context.Context, id int) ([]*itassetmdl.ITassetsFiles, error)
	CreateITAssetsCheckIn(ctx context.Context, usr *itassetmdl.ITassetCheckout) error
	CreateITassetsFiles(ctx context.Context, usr *itassetmdl.ITassetsFiles) error
	UpdateITAsset(ctx context.Context, usr *itassetmdl.ITAssetModel) error
	ITAssetsBulkEdit(ctx context.Context, mdl *itassetmdl.ITAssetModel, ids []string) error
	GetCustomFields(ctx context.Context) (*itassetmdl.ITAssetModel, error)
	ITAssetRetire(ctx context.Context, Rtr *itassetmdl.Retire) error
	CreateITAssetRequest(Listmdl []*itassetmdl.ITAssetRequest) (err error)
	GetITAssetReqList(ctx context.Context, ApprvrID int) ([]*itassetmdl.ITAssetReqList, error)
	ITAssetReqListByReqGroup(ctx context.Context, ReqGroupID int,ApproverID int) ([]*itassetmdl.ITAssetReqList, error)
	ITAssetReqReject(ctx context.Context, MdlList *itassetmdl.ITAssetRequestApproval) (bool, error)
	ITAssetReqApprove(ctx context.Context, MdlList []*itassetmdl.ITAssetRequest) (bool, error)
	RetryFailedmails()
	ITasset_services_Insert(ctx context.Context, itm *itassetmdl.ITasset_services) error 
	ITasset_services_start_Update(ctx context.Context, itm *itassetmdl.ITasset_services) error
	ITasset_services_Complete_Update(ctx context.Context, itm *itassetmdl.ITasset_services) error
	ITasset_services_Extend_Update(ctx context.Context, itm *itassetmdl.ITasset_services) error 
	GetITAssetservices_List(ctx context.Context,_ITAssetID int) ([]*itassetmdl.ITasset_services, error)
	ITAsset_Service_Request(ctx context.Context, itm *itassetmdl.ITAsset_service_request) error
	GetITAsset_service_request_List(ctx context.Context, EmpID int) ([]*itassetmdl.ITAsset_service_request, error)
	GetITAsset_Retired(ctx context.Context, LocID int, EmpID int) ([]*itassetmdl.ITAssetModel, error) 
	Get_ITAssetsHistory_ByAsset(ctx context.Context, AssetID int) ([]*itassetmdl.ITAssetModel, error)

	ITAssetReq_ApprovalStatusList(ctx context.Context, ReqGroupID int) ([]*itassetmdl.ITAssetRequestApproval, error)
	ITAssetReqForward(ctx context.Context, mdl *itassetmdl.ITAssetRequestApproval) error
}

// //ITAssetRepo interface
// type ITAssetRepo interface {

// }
