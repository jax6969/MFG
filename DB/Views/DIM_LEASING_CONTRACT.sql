create view [dbo].[DIM_LEASING_CONTRACT]
as 
select  lc.[_Fld14541RRef]	as ID_CONTRACT-- ����������.��������������������
	  , lc.[_Fld21804]      as ADD_CONTRACT-- �������������� ���������� �� ������
	  , c._Fld10336RRef		as ID_CURRENCY -- ������ ��������
	  , c._Fld9206			as CONTRACT_END_DT -- ���� ������ �������� ��������
	  , lc.[_Fld21515]		as DISCOUNT_START_DT-- ���� ������ �������� ������ �� ������
	  , lc.[_Fld21516]		as DISCOUNT_END_DT-- ���� ��������� �������� ������ �� ������
	  , lc.[_Fld14537]      as PAYMENT_DAY-- ���� ������
	  , lc.[_Fld14218RRef]  as PAYMENT_PERIOD_KIND-- ��� ������� ������
	  , (select t2.[_Fld23805] from [BUH2].[dbo].[_InfoRg23794] t2 
			where t2.[_Fld23797] = 'Enum14216' and [_Fld23805] not like '' and t2.[_Fld23804] = pmnt_per.[_EnumOrder]) as PAYMENT_KIND --������ ������
	  , case when coalesce(lc.[_Fld14537],0) <> 0 then 	
        dbo.get_payment_date(lc.[_Fld14537],(select t2.[_Fld23805] from [BUH2].[dbo].[_InfoRg23794] t2 
			where t2.[_Fld23797] = 'Enum14216' and [_Fld23805] not like '' and t2.[_Fld23804] = pmnt_per.[_EnumOrder])) end as PAYMENT_DT -- ���� ������
      , case when coalesce(lc._Fld21616,0)<>0 and coalesce(lc._Fld16944,0)<>0 then '������� ������%��'
             when coalesce(lc._Fld21616,0)<>0 then '������'
             when coalesce(lc._Fld16944,0)<>0 then 'CAP' end as RENT_TERMS -- ������� ������
      , cntrct._Fld21750 as CANCELATION_TERMS                             -- ������� �����������     
      , case when cntrct._Fld21750 is null then '��������' else '����������' end as UNILATERAL_TERM_POSSIBILITY -- ����������� �������������� ����������� ��������
 from buh2.dbo._InfoRg14124 lc
 left join [BUH2].[dbo].[_Enum14216] pmnt_per on lc.[_Fld14218RRef] = pmnt_per._IDRRef
 left join [buh2].[dbo].[_Reference13_VT21747] cntrct on cntrct._Reference13_IDRRef= lc.[_Fld14541RRef]
 join buh2.dbo._Reference13 c on c._IDRRef = lc.[_Fld14541RRef]
 
 