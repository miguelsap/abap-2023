@AbapCatalog.sqlViewName: 'Z2023_16'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - Case'
define view Z2023_CDS_16
  as select from spfli
{
  key carrid,
  key connid,
      case
          when distance >= 2000 then 'Vuelo largo'
          when distance >= 1000 and distance < 2000 then 'Vuelo medio'
          else 'Vuelo corto'
      end as FlightType1,

      case distance
        when 2000 then 'Vuelo largo'
        when 1500 then 'Vuelo medio'
        else 'Vuelo corto'
      end as FlightType2,

      case
        when distance > 3000 then case distid
                                    when 'KM' then 'Vuelo largo en KM'
                                    when 'MI' then 'Vuelo largo en MI'
                                    else 'NULL'
                                  end
        when distance >= 2000 and distance < 3000 then 'Vuelo medio'
      else 'Vuelo corto'
      end as FlightType3

}
