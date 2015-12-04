create view [dbo].[DIM_ORGANIZATION_UNIT]
as
select  ou.[_IDRRef]       as ID_ORGANIZATION_UNIT,			-- ID ������������� �����������
		ou.[_Code]         as OU_CODE,						-- ��� ������������� �����������
		ou.[_OwnerIDRRef]  as ID_ORGANIZATION,				-- ID �����������
		ou.[_ParentIDRRef] as ID_PARENT_ORGANIZATION_UNIT,	-- ID ������������� ������������� �����������
		ou.[_Description]  as OU_DESCRIPTION,				-- �������� ������������� �����������
		ou.[_Fld15824]     as EMPLOYEE_COUNT				-- ���������� ����������� � ������������� �����������
from  [buh2].[dbo].[_Reference40] ou