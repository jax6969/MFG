create view [dbo].[DIM_ORGANIZATION_UNIT]
as
select  ou.[_IDRRef]       as ID_ORGANIZATION_UNIT,			-- ID подразделения организации
		ou.[_Code]         as OU_CODE,						-- Код подразделения организации
		ou.[_OwnerIDRRef]  as ID_ORGANIZATION,				-- ID Организации
		ou.[_ParentIDRRef] as ID_PARENT_ORGANIZATION_UNIT,	-- ID Родительского подразделения организации
		ou.[_Description]  as OU_DESCRIPTION,				-- Описание подразделения организации
		ou.[_Fld15824]     as EMPLOYEE_COUNT				-- Количество сотрудников в подразделении организации
from  [buh2].[dbo].[_Reference40] ou