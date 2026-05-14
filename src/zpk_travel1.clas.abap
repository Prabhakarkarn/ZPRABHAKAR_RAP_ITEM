CLASS zpk_travel1 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zpk_travel1 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    SELECT travel_id, description, status,lastchangedat FROM /dmo/travel INTO TABLE @data(lt_travel).
    IF sy-subrc EQ 0.
      INSERT zpk_travel FROM TABLE @lt_TRAVEL.
      IF sy-subrc EQ 0.
        out->write( 'travel data inserted successfully' ).
      ELSE.
        out->write( 'failed to insert' ).
      ENDIF.
    ENDIF.
  ENDMETHOD.
ENDCLASS.
