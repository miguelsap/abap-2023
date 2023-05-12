@AbapCatalog.sqlViewName: 'Z2023_20'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - Convert Units'
define view Z2023_CDS_20
  with parameters
    pFromUnit : abap.unit( 3 ),
    pToUnit   : abap.unit( 3 )
  as select from spfli
{
  distance                                                                        as OriginalQuantity,
  distid                                                                          as OriginalUnit,

  cast( unit_conversion( quantity   => distance,
                         source_unit => distid,
                         target_unit => $parameters.pToUnit,
                         error_handling => 'SET_TO_NULL' ) as abap.dec( 10, 3 ) ) as ConvertedQuantity,
  $parameters.pToUnit                                                             as ConvertedUnit
}
where
  distid = $parameters.pFromUnit
