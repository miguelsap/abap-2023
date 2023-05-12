@AbapCatalog.sqlViewName: 'Z2023_10'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - Association with Parameters'
define view Z2023_CDS_10
  with parameters
    p_AirlCode : s_carr_id
  as select from sflight as Flights
  association [1] to Z2023_CDS_09 as _Airline on _Airline.Carrid = Flights.carrid
{
  key carrid,
  key connid,
  key fldate,
      @Semantics.amount.currencyCode: 'CurrCode'
      price,
      @Semantics.currencyCode: true
      _Airline(p_AirlCode:$parameters.p_AirlCode).Currcode
}
where
  Flights.carrid = $parameters.p_AirlCode
