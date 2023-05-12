@AbapCatalog.sqlViewName: 'Z2023_02'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'VDM: Composite View'
@VDM.viewType: #COMPOSITE
@Analytics.dataCategory: #CUBE
define view Z2023_CDS_02
  as select from Z2023_CDS_01
{
  key Carrid,
  key Connid,
      Countryfr,
      Cityfrom,
      Airpfrom,
      Countryto,
      Cityto,
      Airpto,
      Fltime,
      Deptime,
      Arrtime,
      @DefaultAggregation: #SUM
      @Semantics.quantity.unitOfMeasure: 'Distid'
      Distance,
      @Semantics.unitOfMeasure: true
      Distid
}
