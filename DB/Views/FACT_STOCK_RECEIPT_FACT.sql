create view [dbo].[FACT_STOCK_RECEIPT_FACT]
as
select  [_Document155_IDRRef]  as ID_RECEIPT_DOC -- ������ �� �������� �����������
      , [_Fld3123RRef]         as ID_UOM -- ������ �� ��
      , [_Fld3125]             as QUANTITY -- ����������
      , [_Fld3122]             as PLACES_QUANTITY -- ���������� ����
      , [_Fld3124]             as RATIO -- ����������� 
      , [_Fld3120RRef]         as ID_SKU -- ������ �� SKU
      , [_Fld3130RRef]         as ID_GTD -- ������ �� ���
      , [_Fld3128RRef]         as ID_VAT_RATE --  ������ �� ������ ���
      , [_Fld3139RRef]         as ID_VAT_RETAIL_RATE --  ������ �� ������ ���
      , [_Fld3131RRef]         as ID_COUNTRY -- ������ �� ������ �������������	
      , [_Fld3127]             as AMT_RUB -- �����
      , [_Fld3138]             as AMT_RETAIL_RUB -- �������������
      , [_Fld3129]             as AMT_W_VAT_RUB -- ��������
      , [_Fld3126]             as PRICE_RUB -- ����
      , [_Fld3137]             as PRICE_RETAIL_RUB --������������
      , [_Fld21286]            as NET_COST_RUB -- �������������
      , [_Fld22306RRef]        as ID_SUPPLIER_INVOICE -- ������ �� ���� ����������
from    [BUH2].[dbo].[_Document155_VT3118] r



