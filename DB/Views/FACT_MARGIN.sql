create view [dbo].[FACT_MARGIN]
as
select  i.[_Period]                 as DT	-- ����
      , i.[_Fld18798RRef]           as ID_BRAND	-- ������ �� �����
      , i.[_Fld19000]               as MARGIN_PLAN_PCT -- �������� ����� � ���������
from    [buh2].[dbo].[_InfoRg5228]     i