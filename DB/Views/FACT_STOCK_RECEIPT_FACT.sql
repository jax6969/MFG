create view [dbo].[FACT_STOCK_RECEIPT_FACT]
as
select  d._IDRRef				 as ID_DOC  -- Идентификатор документа поступления
      , d._Date_Time		     as PERIOD  --Период
      , r.[_Fld3120RRef]         as ID_SKU -- Ссылка на SKU
      , d.[_Fld3107RRef]         as ID_STOCK  -- Ссылка на склад
      , r.[_Fld3125]             as QUANTITY -- Количество
      , r.[_Fld3127]             as AMT_RUB -- Сумма
from    [BUH2].[dbo].[_Document155_VT3118] r
       join [buh2].[dbo].[_Document155] d on  d.[_IDRRef]= r.[_Document155_IDRRef]



