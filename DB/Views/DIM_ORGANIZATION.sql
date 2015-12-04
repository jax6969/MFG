create view [dbo].[DIM_ORGANIZATION]
as
select  o.[_IDRRef]      as ID_ORGANIZATION,        -- ID Организации
		o.[_Code]        as ORGANIZATION_CODE,      -- Код Организации
		o.[_Description] as ORGANIZATION_DESC,      -- Описание Организации
		o.[_Fld560RRef]  as ID_PARENT_ORGANIZATION, -- ID Родительской организации
		o.[_Fld561]      as ORGANIZATION_FULL_NAME  -- Полное наименование организации
from [buh2].[dbo].[_Reference33] o  
