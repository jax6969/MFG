create view [dbo].FACT_LEASING_UPDS_PLAN
as
select  lp._Date_Time        as DT
      , lp._IDRRef           as ID_LEASING_YEAR_PLAN -- Идентификатор записи
      , lp._Number           as [NUMBER] -- Номер записи
      , lp._Version          as [VERSION] -- Версия записи
      , lp._Fld23987RRef     as ID_BRAND -- Ссылка на бренд
      , lpt._Fld24619_RRRef  as ID_STORE -- Ссылка на магазин
      , lpt._Fld24636        as AMT_TOTAL_RUB -- Итоговая сумма
      , lpt._Fld24623        as AMT1 -- Сумма по месяцам
      , lpt._Fld24624        as AMT2
      , lpt._Fld24625        as AMT3
      , lpt._Fld24626        as AMT4
      , lpt._Fld24627        as AMT5
      , lpt._Fld24628        as AMT6
      , lpt._Fld24629        as AMT7
      , lpt._Fld24630        as AMT8
      , lpt._Fld24631        as AMT9
      , lpt._Fld24632        as AMT10
      , lpt._Fld24633        as AMT11
      , lpt._Fld24634        as AMT12
from    buh2.dbo._Document23986 lp
       join buh2.dbo._Document23986_VT24617 lpt on  lpt._Document23986_IDRRef = lp._IDRRef