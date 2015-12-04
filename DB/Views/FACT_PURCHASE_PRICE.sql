create view [dbo].[FACT_PURCHASE_PRICE]
as
select  x._Period as DT  -- Дата
      , x._Fld5842RRef            as ID_SKU  -- Ссылка на SKU
      , x._Fld5841RRef            as ID_SKU_PRICE_TYPE -- Ссылка на тип цены номенклатуры
      , x._Fld21202               as IS_SALE  -- Флаг распродажи
      , x._Fld5843RRef            as ID_CURRENCY  -- Ссылка на валюту
      , x._Fld5844                as PRICE_RUB -- Цена
from    [buh2].[dbo]._InfoRg5840     x
