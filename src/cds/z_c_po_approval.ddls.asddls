@EndUserText.label: 'PO Approval Consumption View'
define view entity Z_C_PO_Approval
  as projection on Z_I_PurchaseOrder
{
  key PurchaseOrder,
      Vendor,
      CreatedOn,
      CreatedBy,
      POType,
      DeletionFlag
}
