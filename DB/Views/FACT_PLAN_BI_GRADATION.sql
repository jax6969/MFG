create view FACT_PLAN_BI_GRADATION
as
select  pm._Description           as MEASURE_NAME -- Название показателя
      , p._Fld25022               as START_DT -- Дата начала планового периода
      , p._Fld25023               as END_DT -- Дата окончания планового периода
      , pg._Document24866_IDRRef  as ID_PLAN_DOC_ID -- Ссылка на документ планирования
      , pg._Fld25024RRef          as ID_STOCK -- Ссылка на магазин\склад
      , pg._Fld24872              as [PLAN] -- Плановое значение показателя
      , pg._Fld24873              as [FACT] -- Фактическое значение показателя
      , pg._Fld24874              as [IS_MANUAL_CORRECTION] -- Флаг ручной коррекции
from    buh2.dbo._Document24866_VT24869 pg
       join buh2.dbo._Reference24865 pm on  pm._IDRRef = pg._Fld24871RRef
       join buh2.dbo._Document24866 p on  p._IDRref = pg._Document24866_IDRRef