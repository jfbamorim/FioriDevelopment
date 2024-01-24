@AbapCatalog.sqlViewName: 'ZV_JFA_ORDERS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Root view for Orders table'
define root view ZI_JFA_ORDERS as select from ztorders_header as h
    inner join ztorders_item as i on h.order_no = i.order_no
{
 key h.order_no as Order_No,
 key i.item_no as Item_No,
 h.customer_id as Customer_Id,
 h.order_status as Order_Status,
 h.order_date as Order_Date,
 i.product_id as Product_Id,
 i.unit_field as Unit_Field,
 i.quantity as Quantity,
 i.cuky_field as Cuky_Field,
 i.price as Price
    
}
