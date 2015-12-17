create view [dbo].FACT_LEASING_UP_PLAN
as
select  lp._Date_Time        as DT
      , lp._IDRRef           as ID_LEASING_YEAR_PLAN -- Идентификатор записи
      , lp._Number           as [NUMBER] -- Номер записи
      , lp._Version          as [VERSION] -- Версия записи
      , lp._Fld23987RRef     as ID_BRAND -- Ссылка на бренд
      , lpt._Fld24059_RRRef  as ID_STORE -- Ссылка на магазин
      , lpt._Fld24076        as AMT_TOTAL_RUB -- Итоговая сумма
      , lpt._Fld24063        as AMT1 -- Сумма по месяцам
      , lpt._Fld24064        as AMT2
      , lpt._Fld24065        as AMT3
      , lpt._Fld24066        as AMT4
      , lpt._Fld24067        as AMT5
      , lpt._Fld24068        as AMT6
      , lpt._Fld24069        as AMT7
      , lpt._Fld24070        as AMT8
      , lpt._Fld24071        as AMT9
      , lpt._Fld24072        as AMT10
      , lpt._Fld24073        as AMT11
      , lpt._Fld24074        as AMT12
from    buh2.dbo._Document23986 lp
       join buh2.dbo._Document23986_VT24057 lpt on  lpt._Document23986_IDRRef = lp._IDRRef