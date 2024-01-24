@AbapCatalog.sqlViewName: 'ZV_JFA_ORDERS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Root view for Orders table'
define view ZI_JFA_ORDERS as select from ztorders_header as h
    inner join ztorders_item as i on h.order_no = i.order_no
{
 key h.order_no as OrderNo,
 key i.item_no as ItemNo,
 h.customer_id as CustomerId,
 h.order_status as OrderStatus,
 h.order_date as OrderDate,
 i.product_id as ProductId,
 i.unit_field as UnitField,
 i.quantity as Quantity,
 i.cuky_field as CukyField,
 i.price as Price
    
}
