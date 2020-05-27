package NonITAssetRepo

import (
	"context"

	"github.com/premsynfosys/AMS_API/models/nonitassets_mdl"
	//"github.com/premsynfosys/AMS_API/models/cmnmdl"
)

//NonITAssetIntfc ...
type NonITAssetIntfc interface {
	GetNonITAssetReqListByEmp(ctx context.Context, EmpID int) ([]*nonitassets_mdl.NonITAssetReqList, error)
	NonITAssetReqListByReqGroup(ctx context.Context, ReqGroupID int, ApproverID int) ([]*nonitassets_mdl.NonITAssetReqList, error)
	GetNonITAssetMasterLists(ctx context.Context) ([]*nonitassets_mdl.NonITAssets_Master, error)
	CreateNonITAsset(ctx context.Context, mdl *nonitassets_mdl.NonITAssets) error
	GetNonITAssetLists(ctx context.Context,LocID int) ([]*nonitassets_mdl.NonITAssets, error)
	GetNonITAssetList_BY_AssetID(ctx context.Context, AssetID int) (*nonitassets_mdl.NonITAssets, error)
	NonITAsset_Edit(ctx context.Context, mdl *nonitassets_mdl.NonITAssets) error
	PostNonITAssets_oprtns_AddStock(mdl *nonitassets_mdl.NonITAssets_Oprtns) (err error)
	PostNonITAssets_oprtns_Removestock(mdl *nonitassets_mdl.NonITAssets_Oprtns) (err error)
	 PostNonITAssets_CheckOut(mdl *nonitassets_mdl.NonITAssets_checkout_checkin) (err error)
	 CheckDuplicateNonITAssetEntry(ctx context.Context, MasterID int, LocID int) (*int, error)
	 Check_Unique_NonITAsset(ctx context.Context, name string) (*string, error)
	 NonITAssetemasterInsert(ctx context.Context, mdl *nonitassets_mdl.NonITAssets_Master) error
	 GetNonITAssetGroups(ctx context.Context) ([]*nonitassets_mdl.NonITAssets_Groups, error) 
	 GetNonITAssetOprtnListByID(ctx context.Context, IDNonITAsset int) ([]*nonitassets_mdl.NonITAssets, error)
	 CreateNonITAssetRequest(Listmdl []*nonitassets_mdl.NonITAssetRequest) (err error)
	 GetNonITAssetReqList(ctx context.Context, ApprvrID int) ([]*nonitassets_mdl.NonITAssetReqList, error)
	 NonITAssetReq_ApprovalStatusList(ctx context.Context, ReqGroupID int) ([]*nonitassets_mdl.NonITAssetRequestApproval, error)
	 NonITAssetReqReject(ctx context.Context, Mdl *nonitassets_mdl.NonITAssetRequestApproval) (bool, error)

	 NonITAssetReqForward(ctx context.Context, mdl *nonitassets_mdl.NonITAssetRequestApproval) error
	 NonITAssetReqApprove( MdlList []*nonitassets_mdl.NonITAssetRequest) ( error)
	 GetNonITAssetCheckinDetails(ctx context.Context, LocID int) ([]*nonitassets_mdl.NonITAssets_checkout_checkin, error)
	 NonITAssetCheckin(ctx context.Context, Mdl *nonitassets_mdl.NonITAssets_checkin) ( error) 
	 Getnonitassets_checkinByID(ctx context.Context, checkinID int) ([]*nonitassets_mdl.NonITAssets_checkin, error)
	 GetNonITAssetCheckinDetailsByEmp(ctx context.Context, EmpID int) ([]*nonitassets_mdl.NonITAssets_checkout_checkin, error)
	 GetNonITAssetCheckinDetailsByAsset(ctx context.Context, IDNonITAsset int) ([]*nonitassets_mdl.NonITAssets_checkout_checkin, error)
	
	}
