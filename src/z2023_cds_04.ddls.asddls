@AbapCatalog.sqlViewName: 'Z2023_04'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - Union'
define view Z2023_CDS_04
  as select from zint_products
{
  key product_id  as ProductId,
      description as Description
}
union select from zext_products
{
  key id   as ProductId,
      name as Description
}
