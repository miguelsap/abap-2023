@AbapCatalog.sqlViewName: 'Z2023_06'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - Text'
@ObjectModel:{
dataCategory: #TEXT,
representativeKey: 'Unit'
}
define view Z2023_CDS_06
  with parameters
    pLanguage : spras
  as select from t006a
{
      @Semantics.language: true
  key spras as Language,
  key msehi as Unit,
      mseh3 as CommercialUnit,
      mseh6 as TechnicalUnit,
      @Semantics.text: true
      @EndUserText.label: 'Unit of Measure'
      msehl as Msehl
}
where
  spras = $parameters.pLanguage
