create view [dbo].[FACT_SHIP_TO_STORES_FACT]
as
select x._Period as PERIOD,  -- ������
	x._Fld11316RRef as ID_SKU, -- ������ �� SKU
	x._Fld11319RRef as ID_SIZE,	--����������.�������
	x._Fld11318RRef as ID_HEIGHT,	--����������.�����
	x._Fld11317RRef as ID_COLOR,	--����������.�����
	x._Fld11315_RRRef as ID_CONTRACTOR, -- ������ �� �����������
	x._Fld11320 as QUANTITY  -- ����������
from buh2.dbo._AccumRg11313 x 
where x._Fld11315_RTRef = 0x00000017