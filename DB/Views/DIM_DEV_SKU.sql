CREATE VIEW [dbo].[DIM_DEV_SKU]
AS
SELECT f.[_IDRRef] 			as ID_SKU --ID ������������
     , f.[_Fld503RRef]		as ID_SKU_GROUP --������ �� �������������� ������
FROM [BUH2].[dbo].[_Reference28] f 