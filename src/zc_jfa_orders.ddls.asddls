@AbapCatalog.sqlViewName: 'ZVC_JFA_ORDERS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption view for orders'
define root view ZC_JFA_ORDERS as select from ZI_JFA_ORDERS
{
    key Order_No,
    key Item_No,
    Customer_Id,
    Order_Status,
    Order_Date,
    Product_Id,
    Unit_Field,
    Quantity,
    Cuky_Field,
    Price
}
