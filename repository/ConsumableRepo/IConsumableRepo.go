package consumablerepo

import (
	"context"

	"github.com/premsynfosys/AMS_API/models/cmnmdl"
	"github.com/premsynfosys/AMS_API/models/cnsmblemdl"
)

//ConsumableIntfc ...
type ConsumableIntfc interface {
	CreateConsumables(ctx context.Context, mdl *cnsmblemdl.Consumables) error
	GetConsumableGroups(ctx context.Context) ([]*cnsmblemdl.ConsumableGroup, error)
	GetConsumableMasterList(ctx context.Context) ([]*cnsmblemdl.Consumablemaster, error)
	GetConsumableList(ctx context.Context,LocID int) ([]*cnsmblemdl.Consumables, error)
	GetConsumableListByID(ctx context.Context, IDConsumable int) (*cnsmblemdl.Consumables, error)
	GetConsumableOprtnListByID(ctx context.Context, IDConsumable int) ([]*cnsmblemdl.Consumables, error)
	GetConsumableOprtnList(ctx context.Context) ([]*cnsmblemdl.Consumables, error)
	PostConsumableOprtnsAddStock(mdl *cnsmblemdl.ConsumableOprtns) (err error)
	PostConsumableOprtnsRemovestock(mdl *cnsmblemdl.ConsumableOprtns) (err error)
	UpdateConsumable(ctx context.Context, mdl *cnsmblemdl.Consumables) (err error)
	ConsumableBulkEdit(ctx context.Context, usr *cnsmblemdl.Consumables, ids []string) error
	CnsmblBulkRetire(ctx context.Context, mdl []*cmnmdl.InWardOutWardAsset) error
	CheckDuplicateAssetEntry(ctx context.Context, MasterID int,LocID int) (*int, error)
	ConsumablemasterInsert(ctx context.Context, mdl *cnsmblemdl.Consumablemaster) error
	Check_Unique_Consumable(ctx context.Context, name string) (*string, error) 
	GetVendorsByConsumable(ctx context.Context,ConsumableID int) ([]*cmnmdl.VendorsAssetDetails, error)
	ConsumableBulkDelete(ctx context.Context, ids []string) error
}
