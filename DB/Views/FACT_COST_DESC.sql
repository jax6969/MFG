create view [dbo].[FACT_COST_DESC]
as
select  d._IDRRef         as ID_COST_DESC -- ������������� ��������� ��������������� �������� ������
      , d._Date_Time      as DT -- ���� � ����� ���������
      , d._Number         as [NUMBER] -- ����� ���������
      , d._Version        as [VERSION] -- ������
      , (    select  t.[_Fld23805]
             from    [buh2].[dbo].[_InfoRg23794] t
             where  t.[_Fld23797] = 'Enum15665'
               and    t.[_Fld23805] not like ''
               and    t.[_Fld23804] = c.[_EnumOrder] ) as operation_type_cost_desc -- ��� ��������
      , ds._Fld18015RRef  as ID_BRAND -- ������ �� �����
      , ds._Fld17859      as PERIOD -- ������
      , ds._Fld18013RRef  as ID_BUSINESS_UNIT -- ������ �� ������������� �����������
      , ds._Fld14300      as AMT_RUB -- �����
      , ds._Fld18014      as AMT_FACT_COSTS_RUB -- ����� ����������� ������
from    [buh2].[dbo].[_Document8887] d
       join [buh2].[dbo].[_Document8887_VT14296] ds on  ds._Document8887_IDRRef = d._IDRRef
       left join [buh2].[dbo].[_Enum15665] c on  d._Fld18023RRef = c.[_IDRRef]
