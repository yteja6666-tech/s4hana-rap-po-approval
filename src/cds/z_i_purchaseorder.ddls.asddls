@EndUserText.label: 'Interface View - Purchase Order'
define root view entity Z_I_PurchaseOrder
  as select from ekko
{
  key ebeln as PurchaseOrder,
      bukrs as CompanyCode,
      lifnr as Vendor,
      bedat as CreatedOn,
      ernam as CreatedBy,
      bsart as POType,
      loekz as DeletionFlag
}
