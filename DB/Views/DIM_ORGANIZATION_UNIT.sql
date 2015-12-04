create view [dbo].[DIM_ORGANIZATION_UNIT]
as
select  ou.[_IDRRef]       as ID_ORGANIZATION_UNIT,			-- ID подразделени€ организации
		ou.[_Code]         as OU_CODE,						--  од подразделени€ организации
		ou.[_OwnerIDRRef]  as ID_ORGANIZATION,				-- ID ќрганизации
		ou.[_ParentIDRRef] as ID_PARENT_ORGANIZATION_UNIT,	-- ID –одительского подразделени€ организации
		ou.[_Description]  as OU_DESCRIPTION,				-- ќписание подразделени€ организации
		ou.[_Fld15824]     as EMPLOYEE_COUNT				--  оличество сотрудников в подразделении организации
from  [buh2].[dbo].[_Reference40] ou