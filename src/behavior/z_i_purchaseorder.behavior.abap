managed implementation in class zbp_i_purchaseorder unique;

define behavior for Z_I_PurchaseOrder
persistent table ekko
lock master
authorization master ( instance )
etag master CreatedOn
{
  create;
  update;
  delete;

  action approve result [0..1] $self;
  action reject  result [0..1] $self;

  field (readonly) PurchaseOrder, CreatedBy;
}
