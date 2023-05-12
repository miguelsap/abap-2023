@AbapCatalog.sqlViewName: 'Z2023_08'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - Association'
define view Z2023_CDS_08
  as select from spfli as FlightsSchedule
  association [0..*] to Z2023_CDS_07 as _Flights on  _Flights.Carrid = FlightsSchedule.carrid
                                                 and _Flights.Connid = FlightsSchedule.connid
{
  key FlightsSchedule.carrid as Carrid,
  key FlightsSchedule.connid as Connid,
      _Flights
}
