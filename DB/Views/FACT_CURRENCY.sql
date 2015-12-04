/************************************************************
 * Code formatted by SoftTree SQL Assistant © v6.4.230
 * Time: 10.11.2015 17:59:23
 ************************************************************/
 create view FACT_CURRENCY
 as
select fc.[_period]
      ,case 
            when dc._Code = '840' then _Fld5292
       end [usd_fact_rate]
      ,case 
            when dc._Code = '978' then _Fld5292
       end [eur_fact_rate]
      ,case 
            when dc._Code = '002' then _Fld5292
       end [usd_plan_rate]
      ,cast(null as numeric(10 ,4)) [usd_plan_rent_rate]
      ,cast(null as numeric(10 ,4)) [eur_plan_rent_rate]
from   [BUH2].[dbo]._InfoRg5290 fc
       join [BUH2].[dbo]._Reference8 dc
            on  dc._IDRRef = fc._Fld5291RRef
where  dc._Code in ('840' ,'978' ,'002')