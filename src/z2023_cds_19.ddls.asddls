@AbapCatalog.sqlViewName: 'Z2023_19'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - Time Zone'
define view Z2023_CDS_19
  as select from scarr
{
  abap_system_timezone($session.client, 'NULL')              as SystemTz,
  abap_user_timezone($session.user, $session.client, 'NULL') as UserTz
}
