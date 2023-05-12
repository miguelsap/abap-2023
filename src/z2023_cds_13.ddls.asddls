@AbapCatalog.sqlViewAppendName: 'Z2023_13'
@EndUserText.label: 'CDS - Extend'
extend view Z2023_CDS_12 with Z2023_CDS_13
{
  scarr.currcode,
  scarr.url
}
