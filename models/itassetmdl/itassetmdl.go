package itassetmdl

import (
	"time"

	cmnmdl "github.com/premsynfosys/AMS_API/models/cmnmdl"
)

//ITAssetModel ..
type ITAssetModel struct {
	IDITAssets              *int              `json:"IDITAssets"`
	ITAssetName             *string           `json:"ITAssetName"`
	ITAssetGroup            *int              `json:"ITAssetGroup"`
	Itassetgroupname        *string           `json:"Itassetgroupname"`
	ITAssetModel            *string           `json:"ITAssetModel"`
	ITAssetSerialNo         *string           `json:"ITAssetSerialNo"`
	ITAssetIdentificationNo *string           `json:"ITAssetIdentificationNo"`
	ITAssetDescription      *string           `json:"ITAssetDescription"`
	ITAssetAssignTo         *string           `json:"ITAssetAssignTo"`
	ITAssetPrice            *float64          `json:"ITAssetPrice"`
	ITAssetWarranty         *time.Time        `json:"ITAssetWarranty"`
	ITAssetStatus           *int              `json:"ITAssetStatus"`
	Statusname              *string           `json:"Statusname"`
	ITAssetFileUpld         *string           `json:"ITAssetFileUpld"`
	ITAssetImg              *string           `json:"ITAssetImg"`
	ITAssetStatusList       []cmnmdl.Status   `json:"ITAssetStatusList"`
	RecordStatus            *string           `json:"RecordStatus"`
	Vendor                  *int              `json:"Vendor"`
	Location                *int              `json:"Location"`
	ITassetCheckout         *ITassetCheckout  `json:"ITassetCheckout"`
	Employees               *cmnmdl.Employees `json:"Employees"`
	CustomFields1           *string           `json:"CustomFields1"`
	CustomFields1Value      *string           `json:"CustomFields1Value"`
	CustomFields1Type       *string           `json:"CustomFields1Type"`
	CustomFields2           *string           `json:"CustomFields2"`
	CustomFields2Value      *string           `json:"CustomFields2Value"`
	CustomFields2Type       *string           `json:"CustomFields2Type"`
	CustomFields3           *string           `json:"CustomFields3"`
	CustomFields3Value      *string           `json:"CustomFields3Value"`
	CustomFields3Type       *string           `json:"CustomFields3Type"`
	CustomFields4           *string           `json:"CustomFields4"`
	CustomFields4Value      *string           `json:"CustomFields4Value"`
	CustomFields4Type       *string           `json:"CustomFields4Type"`
	CustomFields5           *string           `json:"CustomFields5"`
	CustomFields5Value      *string           `json:"CustomFields5Value"`
	CustomFields5Type       *string           `json:"CustomFields5Type"`
	RetireData              *Retire           `json:"RetireData"`
	LocationData            *cmnmdl.Locations `json:"LocationData"`
	VendorData              *cmnmdl.Vendors   `json:"VendorData"`
	ModifiedBy              *int              `json:"ModifiedBy"`
	CreatedBy               *int              `json:"CreatedBy"`
	CreatedOn               *time.Time        `json:"CreatedOn"`
	ModifiedOn              *time.Time        `json:"ModifiedOn"`
	ActionePerformed        *string           `json:"ActionePerformed"`
	MainTblID               *string           `json:"MainTblID"`
	IDitassets_history      *string           `json:"IDitassets_history"`
}

// ITAssetGroup type details
type ITAssetGroup struct {
	IDITAssetgroups  *int       `json:"IDITAssetgroups"`
	ITAssetgroupName *string    `json:"ITAssetgroupName"`
	CreatedBy        *int       `json:"CreatedBy"`
	CreatedOn        *time.Time `json:"CreatedOn"`
	RecordStatus     *string    `json:"RecordStatus"`
}

//Retire ..
type Retire struct {
	IDRetire   *int       `json:"IDRetire"`
	AssetID    *int       `json:"AssetID"`
	Reason     *int       `json:"Reason"`
	RetireDate *time.Time `json:"RetireDate"`
	Commnets   *string    `json:"Commnets"`
	RetiredBy  *int       `json:"RetiredBy"`
}

//ITassetCheckout ..
type ITassetCheckout struct {
	IDITAssetCheckOutCheckIN *int       `json:"IDITAssetCheckOutCheckIN"`
	AssetID                  *int       `json:"AssetID"`
	CheckedOutTo             *string    `json:"CheckedOutTo"`
	CheckedOutUserID         *int       `json:"CheckedOutUserID"`
	CheckedOutAssetID        *int       `json:"CheckedOutAssetID"`
	CheckedOutDate           *time.Time `json:"CheckedOutDate"`
	ExpectedCheckInDate      *time.Time `json:"ExpectedCheckInDate"`
	CheckinDate              *time.Time `json:"CheckinDate"`
	Comments                 *string    `json:"Comments"`
	CheckinComments          *string    `json:"CheckinComments"`
	RecordStatus             *string    `json:"RecordStatsus"`
	IsCheckin                *bool      `json:"isCheckin"`
	CheckIN_By               *int       `json:"CheckIN_By"`
	CheckOut_By              *int       `json:"CheckOut_By"`
	CreatedBy                *int       `json:"CreatedBy"`
}

//ITassetsFiles ..
type ITassetsFiles struct {
	IDITAssetsFiles *int       `json:"IDITAssetsFiles"`
	Name            *string    `json:"Name"`
	Descrption      *string    `json:"Descrption"`
	Path            *string    `json:"Path"`
	AssetID         *int       `json:"AssetID"`
	FileType        *string    `json:"FileType"`
	Size            *string    `json:"Size"`
	UploadedOn      *string    `json:"UploadedOn"`
	CreatedBy       *int       `json:"CreatedBy"`
	CreatedOn       *time.Time `json:"CreatedOn"`
	RecordStatus    *string    `json:"RecordStatus"`
}

//ITAssetReqList ..
type ITAssetReqList struct {
	ITAssetRequest *ITAssetRequest   `json:"ITAssetRequest"`
	ITAssetGroup   *ITAssetGroup     `json:"ITAssetGroup"`
	Approver       *cmnmdl.Employees `json:"Approver"`
	Requester      *cmnmdl.Employees `json:"Requester"`
	ITAssetModel   *ITAssetModel     `json:"ITAssetModel"`
}

//ITAssetRequest ..
type ITAssetRequest struct {
	IDITAssetrequest       *int                    `json:"IDITAssetrequest"`
	RequestedBy            *int                    `json:"RequestedBy"`
	AssetType              *string                 `json:"AssetType"`
	AssetID                *int                    `json:"AssetID"`
	Description            *string                 `json:"Description"`
	RequestedOn            *time.Time              `json:"RequestedOn"`
	Priority               *string                 `json:"Priority"`
	ReqStatus              *string                 `json:"ReqStatus"`
	ReqGroupID             *int                    `json:"ReqGroupID"`
	CreatedBy              *int                    `json:"CreatedBy"`
	CreatedOn              *time.Time              `json:"CreatedOn"`
	ITAssetRequestApproval *ITAssetRequestApproval `json:"ITAssetRequestApproval"`
}
type ITAssetRequestApproval struct {
	IDitasset_Req_approvals *int              `json:"IDitasset_Req_approvals"`
	ITAssetReqGroupID       *int              `json:"ITAssetReqGroupID"`
	RoleID                  *int              `json:"RoleID"`
	ApproverID              *int              `json:"ApproverID"`
	Grade                   *int              `json:"Grade"`
	CreatedOn               *time.Time        `json:"CreatedOn"`
	Status                  *string           `json:"Status"`
	Comments                *string           `json:"Comments"`
	ActionedOn              *time.Time        `json:"ActionedOn"`
	CreatedBy               *int              `json:"CreatedBy"`
	Employee                *cmnmdl.Employees `json:"Employee"`
	RoleName                *string           `json:"RoleName"`
	NextRoleID              *int              `json:"NextRoleID"`
	NextApproverID          *int              `json:"NextApproverID"`
	NextGrade               *int              `json:"NextGrade"`
}

//itasset_services ..

type ITasset_services struct {
	IDITAsset_Services   *int              `json:"IDITAsset_Services"`
	ITAssetID            *int              `json:"ITAssetID"`
	Expected_Start_Date  *time.Time        `json:"Expected_Start_Date"`
	Expected_End_Date    *time.Time        `json:"Expected_End_Date"`
	Actual_Start_Date    *time.Time        `json:"Actual_Start_Date"`
	Actual_End_Date      *time.Time        `json:"Actual_End_Date"`
	ServiceBy_Type       *string           `json:"ServiceBy_Type"`
	ServiceBy_EmpID      *int              `json:"ServiceBy_EmpID"`
	ServiceBy_VendorID   *int              `json:"ServiceBy_VendorID"`
	Service_Type         *int              `json:"Service_Type"`
	Status               *int              `json:"Status"`
	Comments             *string           `json:"Comments"`
	Description          *string           `json:"Description"`
	Is_Asset_UnAvailable *int              `json:"Is_Asset_UnAvailable"`
	Cost                 *float64          `json:"Cost"`
	CreatedBy            *int              `json:"CreatedBy"`
	ModifiedBy           *int              `json:"ModifiedBy"`
	CreatedOn            *time.Time        `json:"CreatedOn"`
	Vendors              *cmnmdl.Vendors   `json:"Vendors"`
	Employees            *cmnmdl.Employees `json:"Employees"`
	ITAssetModel         *ITAssetModel     `json:"ITAssetModel"`
	Service_type         *Service_type     `json:"Service_type"`
	Service_status       *Service_status   `json:"Service_status"`
	Employees_CreatedBy  *cmnmdl.Employees `json:"Employees_CreatedBy"`
}

type Service_type struct {
	IDService_type *int    `json:"IDService_type"`
	TypeName       *string `json:"TypeName"`
}

type Service_status struct {
	IDServiceStatus *int    `json:"IDServiceStatus"`
	StatusName      *string `json:"StatusName"`
}
type ITAsset_service_request struct {
	IDitasset_service_request *int              `json:"IDitasset_service_request"`
	DateOfReq                 *time.Time        `json:"DateOfReq"`
	ITAssetID                 *int              `json:"ITAssetID"`
	OldITAssetID              *int              `json:"OldITAssetID"`
	Admin_EmpID               *int              `json:"Admin_EmpID"`
	Emp_EmpID                 *int              `json:"Emp_EmpID"`
	Issue_Description         *string           `json:"Issue_Description"`
	Issue_Status              *string           `json:"Issue_Status"`
	LocationID                *int              `json:"LocationID"`
	AdminComments             *string           `json:"AdminComments"`
	Admin                     *cmnmdl.Employees `json:"Admin"`
	Employee                  *cmnmdl.Employees `json:"Employee"`
	ITAssets                  *ITAssetModel     `json:"ITAssets"`
}
