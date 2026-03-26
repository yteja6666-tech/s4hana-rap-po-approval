@EndUserText.label: 'Consumption View - Purchase Order'
@Metadata.allowExtensions: true
define view entity Z_C_PurchaseOrder
  as projection on Z_I_PurchaseOrder
{
  key PurchaseOrder,
      CompanyCode,
      Vendor,
      CreatedOn,
      CreatedBy,
      POType,
      DeletionFlag
}
