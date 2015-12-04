create view dbo.DIM_SUPPLIER_INVOICE
as
select  x.[_IDRRef]       as ID_SUPPLIER_INVOICE
      , x.[_Version]	  as INVOICE_VERSION
      , x.[_Number]       as INVOICE_NUM  -- Номер счета оплаты
      , x.[_Fld10687]     as INVOICE_DT   -- Дата счета оплаты
      , x.[_Fld13650]     as PMNT_PLAN_DT -- Дата оплаты (план)
      , inv.[_Date_Time]  as PMNT_FACT_DT -- Дата оплаты (факт)
      , inv.[_Fld2776]    as INVOICE_AMT  -- Сумма оплаты
from   [buh2].[dbo].[_Document10618] x
       left join [buh2].[dbo].[_Document147] inv on  inv._Fld10690RRef = x._IDRRef
where  exists (    select  *
                   from   [buh2].[dbo]._Reference40 ou
                   where  ou._IDRRef = x._Fld13649RRef
                     and  _Description = 'Отдел аренды' )



