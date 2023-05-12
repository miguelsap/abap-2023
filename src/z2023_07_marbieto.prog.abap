*&---------------------------------------------------------------------*
*& Report z2023_07_marbieto
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z2023_07_marbieto.

SELECT FROM z2023_cds_12 AS flights
    FIELDS flights~carrname AS carrname,
           \_fligths-connid AS connid,
           \_fligths\_flight-fldate AS flightdate,
           \_fligths\_airport-name AS airportname
    WHERE flights~carrid EQ 'LH'
    INTO TABLE @DATA(gt_results).
IF sy-subrc EQ 0.
  cl_demo_output=>display( gt_results ).
ENDIF.
