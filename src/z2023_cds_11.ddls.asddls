@AbapCatalog.sqlViewName: 'Z2023_11'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - Path Expression'
define view Z2023_CDS_11
  as select from spfli
  association [0..*] to sflight  as _Flight  on  _Flight.carrid = spfli.carrid
                                             and _Flight.connid = spfli.connid
  association [1..1] to sairport as _Airport on  _Airport.id = spfli.airpfrom
{
  key carrid,
  key connid,
      spfli.airpfrom,
      _Flight,
      _Airport
}
