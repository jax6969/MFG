create view [dbo].[FACT_PURCHASE_PRICE]
as
select  x._Period as DT  -- ����
      , x._Fld5842RRef            as ID_SKU  -- ������ �� SKU
      , x._Fld5841RRef            as ID_SKU_PRICE_TYPE -- ������ �� ��� ���� ������������
      , x._Fld21202               as IS_SALE  -- ���� ����������
      , x._Fld5843RRef            as ID_CURRENCY  -- ������ �� ������
      , x._Fld5844                as PRICE_RUB -- ����
from    [buh2].[dbo]._InfoRg5840     x
