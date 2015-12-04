create view [dbo].[FACT_STOCK_RECEIPT_PLAN]
as
select  [_Document10618_IDRRef]  as ID_SUPPLIER_INVOICE -- ������ �� �������� ����� ����������
      , [_Fld13663RRef]          as ID_SKU -- ������ �� SKU
      , [_Fld13664]              as COST_RUB -- ����
      , [_Fld13665]              as QUANTITY -- ����������
      , [_Fld13666]              as AMT_RUB -- �����
      , [_Fld13667RRef]          as ID_VAT -- ������ �� ������ ���
      , [_Fld13668]              as VAT_AMT_RUB -- ����� ���
      , [_Fld13669_RRRef]        as ID_ORGANIZATION_UNIT -- ������ �� �������������
      , [_Fld13670]              as AMT_WO_VAT_RUB -- ����� ��� ���
from    [BUH2].[dbo].[_Document10618_VT13661] x


