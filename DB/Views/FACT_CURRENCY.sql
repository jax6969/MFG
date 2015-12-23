create view [dbo].[FACT_CURRENCY]
as
select  fc.[_period] as PERIOD-- Период
      , case 
             when dc._Code = '840' then _Fld5292
        end as USD_FACT_RATE -- Курс доллара фактический
      , case 
             when dc._Code = '978' then _Fld5292
        end as EUR_FACT_RATE -- Курс евро фактический
      , case 
             when dc._Code = '002' then _Fld5292
        end as USD_PLAN_RATE -- Курс доллара плановый
      , case 
             when dc._Code = '005' then _Fld5292
        end as EUR_PLAN_RATE -- Курс евро плановый 
from    [BUH2].[dbo]._InfoRg5290 fc
       join [BUH2].[dbo]._Reference8 dc on  dc._IDRRef = fc._Fld5291RRef
where  dc._Code in ('840' ,'978' ,'002' ,'005')