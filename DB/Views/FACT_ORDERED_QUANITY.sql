create view [dbo].FACT_ORDERED_QUANITY
as
select  oq.[_IDRRef] --���������� ���� ������
      , oq.[_Date_Time] -- ����
      , oq.[_Version] -- ������
      , oq.[_Number] -- ��� ������ ����������
      , oq.[_Fld8993RRef]    as ID_BRAND -- ������ �� �����
      , oq.[_Fld9594RRef]    as ID_COLLECTION -- ������ �� ���������
      , oq.[_Fld8607RRef]    as ID_CONTRACTOR -- ������ �� ����������
      , oq.[_Fld16829RRef]   as ID_BRAND_MARK -- ������ �� �����
      , (    select  t.[_Fld23805]
             from    [buh2].[dbo].[_InfoRg23794] t
             where  t.[_Fld23797] = 'Enum14207'
               and    t.[_Fld23805] not like ''
               and    t.[_Fld23804] = r.[_EnumOrder] ) as LOGISTIC_REGION --������������� ������
      , oq._Fld15661         as SHOP_ADDM_FACT_DT -- ���� ����������� � ��������
      , c.[_Fld7860]         as COLLECTION_DT -- ���� ���������
      , oq_sku._Fld8612RRef  as ID_SKU -- ������ �� SKU
      , oq_sku._Fld8637      as QUANTITY -- ����������� �� ������ (����), ��
from    [buh2].[dbo]._Document8605 oq
       join [buh2].[dbo]._Document8605_VT8610 oq_sku on  oq._IDRRef = oq_sku._Document8605_IDRRef
       left join [buh2].[dbo]._Enum14207 r on  r._IDRRef = oq._Fld16168RRef
       left join [BUH2].[dbo].[_Reference69] c on  c._IDRRef = oq.[_Fld9594RRef]
