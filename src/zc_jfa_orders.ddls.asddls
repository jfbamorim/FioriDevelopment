@AbapCatalog.sqlViewName: 'ZVC_JFA_ORDERS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption view for orders'
define view ZC_JFA_ORDERS as select from ZI_JFA_ORDERS
{
    key OrderNo,
    key ItemNo,
    CustomerId,
    OrderStatus,
    OrderDate,
    ProductId,
    UnitField,
    Quantity,
    CukyField,
    Price
}
