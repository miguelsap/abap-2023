@AbapCatalog.sqlViewName: 'Z2023_09'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - Association for Assoc with Param'
define view Z2023_CDS_09
  with parameters
    p_AirlCode : s_carr_id
  as select from scarr
{
  key carrid   as Carrid,
      carrname as Carrname,
      currcode as Currcode,
      url      as Url
}
where
  carrid = $parameters.p_AirlCode
