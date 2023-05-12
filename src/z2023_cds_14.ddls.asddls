@AbapCatalog.sqlViewName: 'Z2023_14'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - Aggregations SQL'
define view Z2023_CDS_14
  as select from spfli
{
  key carrid,
  key connid,
      sum(fltime) as SumFltime
}
group by
  carrid,
  connid
