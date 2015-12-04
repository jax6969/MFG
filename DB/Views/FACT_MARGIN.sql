create view [dbo].[FACT_MARGIN]
as
select  i.[_Period]                 as DT	-- Дата
      , i.[_Fld18798RRef]           as ID_BRAND	-- Ссылка на бренд
      , i.[_Fld19000]               as MARGIN_PLAN_PCT -- Плановая маржа в процентах
from    [buh2].[dbo].[_InfoRg5228]     i