create view [dbo].[DIM_LEASING_CONTRACT]
as 
select  lc.[_Fld14541RRef]	as ID_CONTRACT-- Справочник.ДоговорыКонтрагентов
	  , lc.[_Fld21804]      as ADD_CONTRACT-- Дополнительное соглашение по аренде
	  , c._Fld10336RRef		as ID_CURRENCY -- Валюта договора
	  , c._Fld9206			as CONTRACT_END_DT -- Дата начала действия договора
	  , lc.[_Fld21515]		as DISCOUNT_START_DT-- Дата начала действия скидки на аренду
	  , lc.[_Fld21516]		as DISCOUNT_END_DT-- Дата окончания действия скидки на аренду
	  , lc.[_Fld14537]      as PAYMENT_DAY-- День оплаты
	  , lc.[_Fld14218RRef]  as PAYMENT_PERIOD_KIND-- Тип периода оплаты
	  , (select t2.[_Fld23805] from [BUH2].[dbo].[_InfoRg23794] t2 
			where t2.[_Fld23797] = 'Enum14216' and [_Fld23805] not like '' and t2.[_Fld23804] = pmnt_per.[_EnumOrder]) as PAYMENT_KIND --Способ оплаты
	  , case when coalesce(lc.[_Fld14537],0) <> 0 then 	
        dbo.get_payment_date(lc.[_Fld14537],(select t2.[_Fld23805] from [BUH2].[dbo].[_InfoRg23794] t2 
			where t2.[_Fld23797] = 'Enum14216' and [_Fld23805] not like '' and t2.[_Fld23804] = pmnt_per.[_EnumOrder])) end as PAYMENT_DT -- Дата оплаты
      , case when coalesce(lc._Fld21616,0)<>0 and coalesce(lc._Fld16944,0)<>0 then 'Условие аренды%ТО'
             when coalesce(lc._Fld21616,0)<>0 then 'Ставка'
             when coalesce(lc._Fld16944,0)<>0 then 'CAP' end as RENT_TERMS -- Условия аренды
      , cntrct._Fld21750 as CANCELATION_TERMS                             -- Условия расторжения     
      , case when cntrct._Fld21750 is null then 'Возможно' else 'Невозможно' end as UNILATERAL_TERM_POSSIBILITY -- Возможность одностороннего расторжения договора
 from buh2.dbo._InfoRg14124 lc
 left join [BUH2].[dbo].[_Enum14216] pmnt_per on lc.[_Fld14218RRef] = pmnt_per._IDRRef
 left join [buh2].[dbo].[_Reference13_VT21747] cntrct on cntrct._Reference13_IDRRef= lc.[_Fld14541RRef]
 join buh2.dbo._Reference13 c on c._IDRRef = lc.[_Fld14541RRef]
 
 