create view [dbo].[FACT_SHIP_TO_STORES_FACT]
as
select x._Period as PERIOD,  -- Период
	x._Fld11316RRef as ID_SKU, -- Ссылка на SKU
	x._Fld11319RRef as ID_SIZE,	--Справочник.Размеры
	x._Fld11318RRef as ID_HEIGHT,	--Справочник.Роста
	x._Fld11317RRef as ID_COLOR,	--Справочник.Цвета
	x._Fld11315_RRRef as ID_CONTRACTOR, -- Ссылка на контрагента
	x._Fld11320 as QUANTITY  -- Количество
from buh2.dbo._AccumRg11313 x 
where x._Fld11315_RTRef = 0x00000017