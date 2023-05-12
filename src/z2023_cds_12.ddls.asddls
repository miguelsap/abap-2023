@AbapCatalog.sqlViewName: 'Z2023_12'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - Path Expression'
define view Z2023_CDS_12
  as select from scarr
  association [0..*] to Z2023_CDS_11 as _Fligths on _Fligths.carrid = scarr.carrid
{
  key scarr.carrid,
      scarr.carrname as Carrname,
      _Fligths
}
