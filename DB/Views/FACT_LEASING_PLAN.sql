create view [dbo].FACT_LEASING_PLAN
as
select  lp._Date_Time        as DT
      , lp._IDRRef           as ID_LEASING_YEAR_PLAN -- Идентификатор записи
      , lp._Number           as [NUMBER] -- Номер записи
      , lp._Version          as [VERSION] -- Версия записи
      , lp._Fld23987RRef     as ID_BRAND -- Ссылка на бренд
      , lpt._Fld24037_RRRef  as ID_STORE -- Ссылка на магазин
      , lpt._Fld24054        as AMT_TOTAL_RUB -- Итоговая сумма
      , lpt._Fld24041        as AMT1 -- Сумма по месяцам
      , lpt._Fld24042        as AMT2
      , lpt._Fld24043        as AMT3
      , lpt._Fld24044        as AMT4
      , lpt._Fld24045        as AMT5
      , lpt._Fld24046        as AMT6
      , lpt._Fld24047        as AMT7
      , lpt._Fld24048        as AMT8
      , lpt._Fld24049        as AMT9
      , lpt._Fld24050        as AMT10
      , lpt._Fld24051        as AMT11
      , lpt._Fld24052        as AMT12
from    buh2.dbo._Document23986 lp
       join buh2.dbo._Document23986_VT24035 lpt on  lpt._Document23986_IDRRef = lp._IDRRef