create view [dbo].[FACT_STOCK_RECEIPT_PLAN]
as
select  x.[_Document10618_IDRRef]  as ID_SUPPLIER_INVOICE -- Ссылка на документ заказ поставщика
      , x.[_Fld13663RRef]          as ID_SKU -- Ссылка на SKU
      , x.[_Fld13664]              as COST_RUB -- Цена
      , x.[_Fld13665]              as QUANTITY -- Количество
      , x.[_Fld13666]              as AMT_RUB -- Сумма
      , x.[_Fld13667RRef]          as ID_VAT -- Ссылка на ставку НДС
      , x.[_Fld13668]              as VAT_AMT_RUB -- Сумма НДС
      , x.[_Fld13669_RRRef]        as ID_ORGANIZATION_UNIT -- Ссылка на подразделение
      , x.[_Fld13670]              as AMT_WO_VAT_RUB -- Сумма Без НДС
      , d.[_Fld10623RRef]		   as ID_STOCK -- Ссылка на склад
      , d.[_Date_Time]			   as PERIOD -- Период
from    [BUH2].[dbo].[_Document10618_VT13661] x
join [BUH2].[dbo].[_Document10618] d on d._IDRRef = x._Document10618_IDRRef