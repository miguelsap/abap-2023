@AbapCatalog.sqlViewName: 'Z2023_03'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'VDM: Consumption View'
@VDM.viewType: #CONSUMPTION
@Analytics.query: true
define view Z2023_CDS_03
  as select from Z2023_CDS_02
{
      @AnalyticsDetails.query.axis: #ROWS
  key Carrid,
      @AnalyticsDetails.query.axis: #ROWS
  key Connid,
      @AnalyticsDetails.query.axis: #ROWS
      Countryfr,
      @AnalyticsDetails.query.axis: #ROWS
      Cityfrom,
      @AnalyticsDetails.query.axis: #ROWS
      Airpfrom,
      @AnalyticsDetails.query.axis: #ROWS
      Countryto,
      @AnalyticsDetails.query.axis: #ROWS
      Cityto,
      @AnalyticsDetails.query.axis: #ROWS
      Airpto,
      @AnalyticsDetails.query.axis: #ROWS
      Fltime,
      @AnalyticsDetails.query.axis: #ROWS
      Deptime,
      @AnalyticsDetails.query.axis: #ROWS
      Arrtime,
      @AnalyticsDetails.query.axis: #COLUMNS
      Distance,
      @AnalyticsDetails.query.axis: #COLUMNS
      Distid
}
