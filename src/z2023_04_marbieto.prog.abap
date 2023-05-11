*&---------------------------------------------------------------------*
*& Report z2023_04_marbieto
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z2023_04_marbieto.

TYPES: BEGIN OF ty_empleado,
         nombre   TYPE char30,
         posicion TYPE char30,
         edad     TYPE i,
       END OF ty_empleado,
       tt_empleado TYPE STANDARD TABLE OF ty_empleado WITH KEY nombre.

DATA(gt_empleados) = VALUE tt_empleado( ( nombre = 'Oscar'  posicion = 'ABAP'      edad = 34 )
                                        ( nombre = 'Carlos' posicion = 'FUNCIONAL' edad = 26 )
                                        ( nombre = 'Adolfo' posicion = 'ABAP'      edad = 32 )
                                        ( nombre = 'Erick'  posicion = 'FUNCIONAL' edad = 37 )
                                        ( nombre = 'Samuel' posicion = 'ABAP'      edad = 29 )
                                        ( nombre = 'Jimmy'  posicion = 'BASIS'     edad = 24 ) ).

DATA: gv_edad_tot TYPE i,
      gv_edad_avg TYPE i.

LOOP AT gt_empleados INTO DATA(gs_employee)
    GROUP BY ( posicion = gs_employee-posicion
               size     = GROUP SIZE
               index    = GROUP INDEX )
    ASCENDING AS TEXT
    ASSIGNING FIELD-SYMBOL(<group>).
  CLEAR gv_edad_tot.

* Salida a nivel de posicion
  WRITE:/ |Indice: { <group>-index } Posicion: { <group>-posicion WIDTH = 10 }|
          & |Numero de empleados en esta posicion: { <group>-size }|.

  LOOP AT GROUP <group> ASSIGNING FIELD-SYMBOL(<ls_empleado>).
    gv_edad_tot += <ls_empleado>-edad.
    WRITE:/20 <ls_empleado>-nombre.
  ENDLOOP.
* Edad del grupo
  gv_edad_avg = gv_edad_tot / <group>-size.
  WRITE:/ |Edad media: { gv_edad_avg }|.
ENDLOOP.
