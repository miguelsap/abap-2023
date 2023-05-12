@AbapCatalog.sqlViewName: 'Z2023_17'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'All columns'
define view Z2023_CDS_17
  as select from mara
{
  *
}
