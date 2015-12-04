create view [dbo].FACT_PURCHASE_BUDGET
as
select  [_Period]         as DT
      , [_Fld8939RRef]    as ID_SKU -- ������ �� SKU
      , [_Fld8946RRef]    as ID_COLOR -- ������ �� ����
      , (    select  t.[_Fld23805]
             from    [buh2].[dbo].[_InfoRg23794] t
             where  t.[_Fld23797] = 'Enum14207'
               and    t.[_Fld23805] not like ''
               and    t.[_Fld23804] = AReg.[_EnumOrder] ) as ADMINISTRATIVE_REGION --���������������� ������
      , [_Fld9320RRef]    as ID_CONTAINER -- ����������.����������
      , [_Fld9321_RRRef]  as ID_INVOICE -- ������������
      , [_Fld16361RRef]   as ID_SIZE -- ����������.�������
      , [_Fld16362RRef]   as ID_HEIGHT --����������.�����
      , [_Fld14539]       as CUT_OFF_DT -- ���������.CutOffDate
      , [_Fld8948RRef]    as ID_CURRENCY -- ����������.������
      , [_Fld8938RRef]    as ID_CONTRACT -- ����������.��������������������
      , [_Fld8937RRef]    as ID_CONTRACTOR -- ����������.�����������
      , [_Fld8950]        as PLAN_QUANTITY -- ��������������
      , [_Fld8951]        as QUANTITY -- ����������
      , [_Fld8952]        as AMT_RUB -- �����
from    [BUH2].[dbo].[_AccumRg8936] x
       left join [buh2].[dbo].[_Enum14207] AReg on  x.[_Fld16176RRef] = AReg.[_IDRRef]
  


