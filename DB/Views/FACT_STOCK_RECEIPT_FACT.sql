create view [dbo].[FACT_STOCK_RECEIPT_FACT]
as
select  [_Document155_IDRRef]  as ID_RECEIPT_DOC -- Ссылка на документ поступления
      , [_Fld3123RRef]         as ID_UOM -- Ссылка на ЕИ
      , [_Fld3125]             as QUANTITY -- Количество
      , [_Fld3122]             as PLACES_QUANTITY -- Количество Мест
      , [_Fld3124]             as RATIO -- Коэффициент 
      , [_Fld3120RRef]         as ID_SKU -- Ссылка на SKU
      , [_Fld3130RRef]         as ID_GTD -- Ссылка на ГТД
      , [_Fld3128RRef]         as ID_VAT_RATE --  Ссылка на ставку НДС
      , [_Fld3139RRef]         as ID_VAT_RETAIL_RATE --  Ссылка на ставку НДС
      , [_Fld3131RRef]         as ID_COUNTRY -- Ссылка на Страну Происхождения	
      , [_Fld3127]             as AMT_RUB -- Сумма
      , [_Fld3138]             as AMT_RETAIL_RUB -- СуммаВРознице
      , [_Fld3129]             as AMT_W_VAT_RUB -- СуммаНДС
      , [_Fld3126]             as PRICE_RUB -- Цена
      , [_Fld3137]             as PRICE_RETAIL_RUB --ЦенаВРознице
      , [_Fld21286]            as NET_COST_RUB -- Себестоимость
      , [_Fld22306RRef]        as ID_SUPPLIER_INVOICE -- Ссылка на Счет Поставщика
from    [BUH2].[dbo].[_Document155_VT3118] r



