create view [dbo].FACT_SHIPPING_RETAIL
as
select a._Active
 , a._LineNo
 , a._Period
 , a._RecorderRRef
 , a._RecorderTRef
 , a._Fld11316RRef as ID_SKU
 , a._Fld11319RRef as ID_SIZE
 , a._Fld11318RRef as ID_HEIGHT
 , a._Fld11315_RRRef as ID_STOCK_TO
 , a._Fld11315_RTRef
 , a._Fld11315_TYPE
 , a._Fld11314_RRRef as ID_STOCK_FROM
 , a._Fld11314_RTRef
 , a._Fld11314_TYPE
 , a._Fld11317RRef as ID_COLOR
 , a._Fld11320 as QUANTITY
 , a._Fld11321 as AMT_RUB
 , a._Fld11322 as AMT_RETAIL_RUB
from buh2.dbo._AccumRg11313 a
