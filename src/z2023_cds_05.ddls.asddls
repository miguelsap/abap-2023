@AbapCatalog.sqlViewName: 'Z2023_05'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - Join'
define view Z2023_CDS_05
  with parameters
    pCurrency : s_currcode
  as select from spfli   as FlightPlan
    inner join   sflight as Flight on  FlightPlan.carrid = Flight.carrid
                                   and FlightPlan.connid = Flight.connid
{
  key FlightPlan.carrid    as Carrid,
  key Flight.connid        as Connid,
      FlightPlan.countryfr as CountryFrom,
      Flight.fldate        as FlightDate,
      FlightPlan.period    as Period
}
where
  Flight.currency = $parameters.pCurrency
