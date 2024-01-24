CLASS zcl_fill_orders_item DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    interfaces if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_fill_orders_item IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    data lt_orders_item type table of ztorders_item.


    " Order number: 1
    append value ztorders_item( client     = sy-mandt
                                order_no   = '1'
                                item_no    = '10'
                                product_id = 'IPAD10'
                                unit_field = 'UN'
                                quantity   = '1'
                                cuky_field = 'EUR'
                                price      = '543' ) to lt_orders_item.

    append value ztorders_item( client     = sy-mandt
                                order_no   = '1'
                                item_no    = '20'
                                product_id = 'HPHONE'
                                unit_field = 'UN'
                                quantity   = '2'
                                cuky_field = 'EUR'
                                price      = '38' ) to lt_orders_item.

    append value ztorders_item( client     = sy-mandt
                                order_no   = '1'
                                item_no    = '30'
                                product_id = 'CASEIP'
                                unit_field = 'UN'
                                quantity   = '5'
                                cuky_field = 'EUR'
                                price      = '120' ) to lt_orders_item.

    "Order number: 2
    append value ztorders_item( client     = sy-mandt
                                order_no   = '2'
                                item_no    = '10'
                                product_id = 'IPAD10'
                                unit_field = 'UN'
                                quantity   = '1'
                                cuky_field = 'EUR'
                                price      = '543' ) to lt_orders_item.
    "Order number: 3
    append value ztorders_item( client     = sy-mandt
                                order_no   = '3'
                                item_no    = '10'
                                product_id = 'MACB13'
                                unit_field = 'UN'
                                quantity   = '1'
                                cuky_field = 'EUR'
                                price      = '1149' ) to lt_orders_item.

    append value ztorders_item( client     = sy-mandt
                                order_no   = '3'
                                item_no    = '20'
                                product_id = 'CASEIP'
                                unit_field = 'UN'
                                quantity   = '1'
                                cuky_field = 'EUR'
                                price      = '24' ) to lt_orders_item.
    "Order number: 4
    append value ztorders_item( client     = sy-mandt
                                order_no   = '4'
                                item_no    = '10'
                                product_id = 'APPLTV'
                                unit_field = 'UN'
                                quantity   = '1'
                                cuky_field = 'EUR'
                                price      = '499' ) to lt_orders_item.

    append value ztorders_item( client     = sy-mandt
                                order_no   = '4'
                                item_no    = '20'
                                product_id = 'IPHO13'
                                unit_field = 'UN'
                                quantity   = '1'
                                cuky_field = 'EUR'
                                price      = '999' ) to lt_orders_item.
    append value ztorders_item( client     = sy-mandt
                                order_no   = '4'
                                item_no    = '30'
                                product_id = 'CASEIP'
                                unit_field = 'UN'
                                quantity   = '1'
                                cuky_field = 'EUR'
                                price      = '24' ) to lt_orders_item.
    append value ztorders_item( client     = sy-mandt
                                order_no   = '4'
                                item_no    = '40'
                                product_id = 'HPHONE'
                                unit_field = 'UN'
                                quantity   = '1'
                                cuky_field = 'EUR'
                                price      = '19' ) to lt_orders_item.

    delete from ztorders_item.

    insert ztorders_item from table @lt_orders_item.
    if sy-subrc = 0.
        out->write( 'Done.' ).
    else.
        out->write( 'Mistake somewhere over the rainbow' ).
    endif.
    commit work.
  ENDMETHOD.

ENDCLASS.
