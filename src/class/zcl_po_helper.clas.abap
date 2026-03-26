CLASS zcl_po_helper DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    CLASS-METHODS validate_vendor
      IMPORTING iv_vendor TYPE lifnr
      RETURNING VALUE(rv_valid) TYPE abap_bool.
ENDCLASS.

CLASS zcl_po_helper IMPLEMENTATION.
  METHOD validate_vendor.
    SELECT SINGLE lifnr
      FROM lfa1
      WHERE lifnr = @iv_vendor
      INTO @DATA(lv_vendor).

    IF sy-subrc = 0.
      rv_valid = abap_true.
    ELSE.
      rv_valid = abap_false.
    ENDIF.
  ENDMETHOD.
ENDCLASS.
