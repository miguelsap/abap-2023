*&---------------------------------------------------------------------*
*& Report z2023_05_marbieto
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z2023_05_marbieto.

PARAMETERS: pa_page TYPE i,
            pa_reg  TYPE i.

DATA gv_offset TYPE int8.

gv_offset = ( pa_page - 1 ) * pa_reg.

SELECT FROM sflight
    FIELDS *
    WHERE carrid EQ 'AA'
    ORDER BY carrid, connid, fldate ASCENDING
    INTO TABLE @DATA(gt_results)
    OFFSET @gv_offset UP TO @pa_reg ROWS.
IF sy-subrc EQ 0.
  cl_demo_output=>display( gt_results ).
ENDIF.
