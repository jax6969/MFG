create view [dbo].[DIM_MARKETING_CAMPAIGN]
as
select  mc.[_IDRRef]   as ID_MARKETING_CAMPAIGN,	-- ID ������������� �����
		mc.[_Fld8688]  as START_DT,					-- ���� ������
		mc.[_Fld7880]  as END_DT,					-- ���� ���������
		mc.[_Fld16937] as MC_DESCRIPTION,			-- �������� ������������� �����
		mc.[_Fld16971] as MC_NAME,					-- �������� ������������� �����
		mc.[_Fld17244] as IS_PLANNED,				-- �������� �����
		mc.[_Fld17394] as MC_FULL_DESCRIPTION,		-- ������ �������� ������������� �����
		mc.[_Fld16972] as IS_ALL_ITEMS,				-- ��� ������������
		mc.[_Fld16973] as DISCOUNT_PCT,				-- ������� ������
		mc.[_Fld16974] as DISCOUNT_AMT_RUB			-- ����� ������
from [buh2].[dbo].[_Document7875] mc


