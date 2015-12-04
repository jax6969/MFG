create view [dbo].[DIM_CHECKS]
as
select cn.[_Fld21782] as CHECK_NUM  -- Номер чека
       ,(select t2.[_Fld23805] from [BUH2].[dbo].[_InfoRg23794] t2 
			where t2.[_Fld23797] = 'Enum21337' and [_Fld23805] not like '' and t2.[_Fld23804] = pmnt_kind.[_EnumOrder]) as PAYMENT_KIND --Способ оплаты
from [BUH2].[dbo].[_Document203_VT21780] cn
left join [BUH2].[dbo].[_Enum21337] pmnt_kind on cn.[_Fld21783RRef] = pmnt_kind._IDRRef;