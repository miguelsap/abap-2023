@AbapCatalog.sqlViewName: 'Z2023_18'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - Sesssion Variables'
define view Z2023_CDS_18
  as select from scarr
{
  $session.user            as SessionUser,
  $session.client          as SessionClient,
  $session.system_language as SessionLanguage,
  $session.system_date     as SessionDate,
  $session.user_date       as UserDate,
  $session.user_timezone   as UserTz
}
