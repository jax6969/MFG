create view [dbo].FACT_PURCHASE_BUDGET
as
select  [_Period]                    as PERIOD -- ������
      , [_Fld8939RRef]               as ID_SKU -- ������ �� SKU
      , [_Fld8946RRef]               as ID_COLOR -- ������ �� ����
      , [_Fld16361RRef]              as ID_SIZE -- ����������.�������
      , [_Fld16362RRef]              as ID_HEIGHT --����������.�����
      , [_Fld8952]                   as AMT_RUB -- �����
from    [BUH2].[dbo].[_AccumRg8936]     x
  


