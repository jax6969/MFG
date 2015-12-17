create view [dbo].[FACT_STOCK_RECEIPT_FACT]
as
select  d._IDRRef				 as ID_DOC  -- ������������� ��������� �����������
      , d._Date_Time		     as PERIOD  --������
      , r.[_Fld3120RRef]         as ID_SKU -- ������ �� SKU
      , d.[_Fld3107RRef]         as ID_STOCK  -- ������ �� �����
      , r.[_Fld3125]             as QUANTITY -- ����������
      , r.[_Fld3127]             as AMT_RUB -- �����
from    [BUH2].[dbo].[_Document155_VT3118] r
       join [buh2].[dbo].[_Document155] d on  d.[_IDRRef]= r.[_Document155_IDRRef]



