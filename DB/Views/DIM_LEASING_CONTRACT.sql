create view [dbo].[DIM_LEASING_CONTRACT]
as 
select  lc.[_Fld14541RRef]	-- ����������.��������������������
	  , lc.[_Fld21804]      -- �������������� ���������� �� ������
	  , lc.[_Fld21515]		-- ���� ������ �������� ������ �� ������
	  , lc.[_Fld21516]		-- ���� ��������� �������� ������ �� ������
	  , lc.[_Fld14537]      -- ���� ������
	  , lc.[_Fld14218RRef]  -- ��� ������� ������
	  , (select t2.[_Fld23805] from [BUH2].[dbo].[_InfoRg23794] t2 
			where t2.[_Fld23797] = 'Enum14216' and [_Fld23805] not like '' and t2.[_Fld23804] = pmnt_per.[_EnumOrder]) as PAYMENT_KIND --������ ������
	  , case when coalesce(lc.[_Fld14537],0) <> 0 then 	
        dbo.get_payment_date(lc.[_Fld14537],(select t2.[_Fld23805] from [BUH2].[dbo].[_InfoRg23794] t2 
			where t2.[_Fld23797] = 'Enum14216' and [_Fld23805] not like '' and t2.[_Fld23804] = pmnt_per.[_EnumOrder])) end as PAYMENT_DT -- ���� ������
      , case when coalesce(lc._Fld21616,0)<>0 and coalesce(lc._Fld16944,0)<>0 then '������� ������%��'
             when coalesce(lc._Fld21616,0)<>0 then '������'
             when coalesce(lc._Fld16944,0)<>0 then 'CAP' end as rent_terms -- ������� ������
      , cntrct._Fld21750 as cancelation_terms                             -- ������� �����������     
      , case when cntrct._Fld21750 is null then '��������' else '����������' end as unilateral_term_possibility -- ����������� �������������� ����������� ��������
 from dbo._InfoRg14124 lc
 left join [BUH2].[dbo].[_Enum14216] pmnt_per on lc.[_Fld14218RRef] = pmnt_per._IDRRef
 left join [buh2].[dbo].[_Reference13_VT21747] cntrct on cntrct._Reference13_IDRRef= lc.[_Fld14541RRef]
 