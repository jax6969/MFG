create view FACT_PLAN_BI_STORE_INVEST
as
select  p._Fld25022       as START_DT -- ���� ������ ��������� �������
      , p._Fld25023       as END_DT -- ���� ��������� ��������� �������
      , pg._Fld24882RRef  as ID_STOCK -- ������ �� �������
      , pg._Fld24883      as AMT_WO_VAT_RUB -- �����������
from    buh2.dbo._Document24866_VT24880 pg
       join buh2.dbo._Document24866 p on  p._IDRref = pg._Document24866_IDRRef