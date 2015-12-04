create view [dbo].[DIM_ORGANIZATION]
as
select  o.[_IDRRef]      as ID_ORGANIZATION,        -- ID �����������
		o.[_Code]        as ORGANIZATION_CODE,      -- ��� �����������
		o.[_Description] as ORGANIZATION_DESC,      -- �������� �����������
		o.[_Fld560RRef]  as ID_PARENT_ORGANIZATION, -- ID ������������ �����������
		o.[_Fld561]      as ORGANIZATION_FULL_NAME  -- ������ ������������ �����������
from [buh2].[dbo].[_Reference33] o  
