create view [dbo].[FACT_PURCHASE_ORDER_PLAN]
as
select  d._IDRRef         as ID_PURCHASE_ORDER -- ������������ ������ ����������
      , d._Version        as [VERSION] -- ������
      , d._Date_Time      as DT -- ���� � ����� ������
      , d._Number         as NUMBER -- ����� ������
      , d._Fld8639RRef    as ID_BRAND -- ������ �� �����
      , d._Fld16018RRef   as ID_COLLECTION -- ������ �� ���������
      , ds._Fld18008RRef  as ID_ASSORTMENT -- ������ �� �����������
      , ds._Fld4534RRef   as ID_SKU -- ������ �� ������������
      , d._Fld18892RRef   as ID_MOTNH -- ������ �� �����
      , (    select  t.[_Fld23805]
             from    [buh2].[dbo].[_InfoRg23794] t
             where  t.[_Fld23797] = 'Enum14207'
               and    t.[_Fld23805] not like ''
               and    t.[_Fld23804] = Reg.[_EnumOrder] ) as REGION --������
      , d._Fld21390RRef   as ID_STOCK -- ������ �� �����\�������
      , d._Fld4529RRef    as ID_CONTRACTOR -- ������ �� �����������
      , ds._Fld4559       as QUANTITY_PLAN -- ����������
      , ds._Fld18006      as QUANTITY_PER_STORE -- ���������� �� �������
      , ds._Fld17558      as NET_PRICE_PIECE -- ������������� �����
      , ds._Fld4536       as AMT_RUB -- �����
      , ds._Fld4535       as PRICE -- ����
from    [buh2].[dbo]._Document197 d
       join [buh2].[dbo]._Document197_VT4532 ds on  ds._Document197_IDRRef = d._IDRRef
       left join [buh2].[dbo].[_Enum14207] Reg on  d._Fld16585RRef = Reg.[_IDRRef]
