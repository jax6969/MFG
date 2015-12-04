create view [dbo].[FACT_MAINTENANCE_COST]
as
select  z.[_IDRREf]        as ID_SUPPLIER_INVOICE	-- ID Supplier Invoice
      , z.[_Date_Time]     as INVOICE_DT			-- Дата
      , z.[_Fld10626RRef]  as ID_BRAND				-- Ссылка на бренд
      , z.[_Fld10623RRef]  as ID_STOCK				-- Ссылка на склад
      , z.[_Fld10621RRef]  as ID_CONTRACTOR			-- Ссылка на контрагента
      , z.[_Fld10630]      as INVOICE_AMT			-- Сумма затрат
from  [buh2].[dbo].[_Document10618] z