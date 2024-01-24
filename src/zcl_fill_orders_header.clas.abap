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

    append value ztorders_header( client       = sy-mandt
                                  order_no     = '1'
                                  customer_id  = '1000001010'
                                  order_status = 'D'
                                  order_date   = '20240101' ) to lt_orders_header.

    append value ztorders_header( client       = sy-mandt
                                  order_no     = '2'
                                  customer_id  = '1000001010'
                                  order_status = 'N'
                                  order_date   = '20231209' ) to lt_orders_header.

    append value ztorders_header( client       = sy-mandt
                                  order_no     = '3'
                                  customer_id  = '2000002020'
                                  order_status = 'R'
                                  order_date   = '20230124' ) to lt_orders_header.

    append value ztorders_header( client       = sy-mandt
                                  order_no     = '4'
                                  customer_id  = '3000003030'
                                  order_status = 'R'
                                  order_date   = '20230301' ) to lt_orders_header.

    append value ztorders_header( client       = sy-mandt
                                  order_no     = '5'
                                  customer_id  = '1000001010'
                                  order_status = 'C'
                                  order_date   = '20231209' ) to lt_orders_header.

    append value ztorders_header( client       = sy-mandt
                                  order_no     = '6'
                                  customer_id  = '2000002020'
                                  order_status = 'P'
                                  order_date   = '20230903' ) to lt_orders_header.

    delete from ztorders_header.

    insert ztorders_header from table @lt_orders_header.
    if sy-subrc = 0.
        out->write( 'Done.' ).
    else.
        out->write( 'Mistake somewhere over the rainbow' ).
    endif.
    commit work.

  ENDMETHOD.

ENDCLASS.
