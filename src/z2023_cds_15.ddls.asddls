@AbapCatalog.sqlViewName: 'Z2023_15'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - Parameters'
define view Z2023_CDS_15
  with parameters
    p_param1 : char10,
    p_param2 : char10
  as select from scarr
{
  key carrid,
      :p_param1                            as Param1Elem,
      $parameters.p_param2                 as Param2Elem,
      concat_with_space(:p_param2, url, 5) as ConcatElem
}
