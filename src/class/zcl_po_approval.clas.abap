CLASS zcl_po_approval DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    CLASS-METHODS approve_po
      IMPORTING iv_po TYPE ebeln
      RETURNING VALUE(rv_status) TYPE string.

    CLASS-METHODS reject_po
      IMPORTING iv_po TYPE ebeln
      RETURNING VALUE(rv_status) TYPE string.

ENDCLASS.

CLASS zcl_po_approval IMPLEMENTATION.

  METHOD approve_po.
    " Logic to set PO status to Approved
    rv_status = 'Approved'.
  ENDMETHOD.

  METHOD reject_po.
    " Logic to set PO status to Rejected
    rv_status = 'Rejected'.
  ENDMETHOD.

ENDCLASS.
