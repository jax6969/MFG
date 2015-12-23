CREATE VIEW [dbo].[DIM_DEV_SKU]
AS
SELECT f.[_IDRRef] 			as ID_SKU --ID Номенклатуры
     , f.[_Fld503RRef]		as ID_SKU_GROUP --Ссылка на номенклатурную группу
FROM [BUH2].[dbo].[_Reference28] f 