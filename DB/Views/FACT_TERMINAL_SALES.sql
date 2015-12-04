create view [dbo].[FACT_TERMINAL_SALES] 
as     
select  kkm_sku.[_Document203_IDRRef]  as ID_CHECK -- ������ �� ���
      , kkm_sku.[_Fld9330]             as CHECK_DT -- ���� ����
      , kkm_sku.[_Fld16965RRef]        as ID_MARKETING_CAMPAIGN -- ������ �� �����
      , kkm_sku.[_Fld4772RRef]         as ID_DISCOUNT_CARD -- ������ �� ���������� �����
      , kkm.[_Fld8645RRef]             as ID_BRAND -- ������ �� �����
      , kkm.[_Fld4749RRef]             as ID_STOCK -- ������ �� �������
      , kkm_sku.[_Fld4766]             as PRICE_RUB -- ����
      , kkm_sku.[_Fld6801RRef]         as ID_SKU -- SKU
      , kkm_sku.[_Fld4771]             as DISCOUNT_AMT_RUB -- ����� ������
      , kkm_sku.[_Fld4769]             as VAT_AMT_RUB -- ����� ���
from    [buh2].[dbo].[_Document203_VT4762] kkm_sku
       join [buh2].[dbo].[_Document203] kkm on  kkm.[_IDRRef] = kkm_sku.[_Document203_IDRRef]
          