create view [dbo].FACT_PURCHASE_BUDGET
as
select  [_Period]                    as PERIOD -- Период
      , [_Fld8939RRef]               as ID_SKU -- Ссылка на SKU
      , [_Fld8946RRef]               as ID_COLOR -- Ссылка на цвет
      , [_Fld16361RRef]              as ID_SIZE -- Справочник.Размеры
      , [_Fld16362RRef]              as ID_HEIGHT --Справочник.Роста
      , [_Fld8952]                   as AMT_RUB -- Сумма
from    [BUH2].[dbo].[_AccumRg8936]     x
  


