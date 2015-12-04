create view [dbo].[FACT_STOCK_RECEIPT_PLAN]
as
select  [_Document10618_IDRRef]  as ID_SUPPLIER_INVOICE -- Ссылка на документ заказ поставщика
      , [_Fld13663RRef]          as ID_SKU -- Ссылка на SKU
      , [_Fld13664]              as COST_RUB -- Цена
      , [_Fld13665]              as QUANTITY -- Количество
      , [_Fld13666]              as AMT_RUB -- Сумма
      , [_Fld13667RRef]          as ID_VAT -- Ссылка на ставку НДС
      , [_Fld13668]              as VAT_AMT_RUB -- Сумма НДС
      , [_Fld13669_RRRef]        as ID_ORGANIZATION_UNIT -- Ссылка на подразделение
      , [_Fld13670]              as AMT_WO_VAT_RUB -- Сумма Без НДС
from    [BUH2].[dbo].[_Document10618_VT13661] x


