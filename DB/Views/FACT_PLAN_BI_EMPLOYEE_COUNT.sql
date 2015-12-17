create view FACT_PLAN_BI_EMPLOYEE_COUNT
as
select  p._Fld25022       as START_DT -- Дата начала планового периода
      , p._Fld25023       as END_DT -- Дата окончания планового периода
      , pg._Fld24877RRef  as ID_STOCK -- Ссылка на магазин\склад
      , pg._Fld24879      as WORKED_HOURS_CNT -- Количество отработанных часов
      , pg._Fld24878      as EMPLOYEE_CNT -- Количество сотрудников
from    buh2.dbo._Document24866_VT24875 pg
       join buh2.dbo._Document24866 p on  p._IDRref = pg._Document24866_IDRRef