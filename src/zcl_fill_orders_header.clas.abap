CLASS zcl_fill_orders_header DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
   interfaces if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_fill_orders_header IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    data lt_orders_header type table of ztorders_header.

    get time stamp field data(zv_date).

    append value ztorders_header( client       = sy-mandt
                                  order_no     = '1'
                                  customer_id  = '1000001010'
                                  order_status = 'D'
                                  order_date   = '20240101' ) to lt_orders_header.
    delete from ztorders_header.

    insert ztorders_header from table @lt_orders_header.
    commit work.

    out->write( 'Done.' ).
  ENDMETHOD.

ENDCLASS.
