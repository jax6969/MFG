create view [dbo].[FACT_MAINTENANCE_COST]
as
select  z.[_IDRREf]        as ID_SUPPLIER_INVOICE	-- ID Supplier Invoice
      , z.[_Date_Time]     as INVOICE_DT			-- ����
      , z.[_Fld10626RRef]  as ID_BRAND				-- ������ �� �����
      , z.[_Fld10623RRef]  as ID_STOCK				-- ������ �� �����
      , z.[_Fld10621RRef]  as ID_CONTRACTOR			-- ������ �� �����������
      , z.[_Fld10630]      as INVOICE_AMT			-- ����� ������
from  [buh2].[dbo].[_Document10618] z