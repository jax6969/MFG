create view DIM_SKU_EXTENSION
as
select  cst.[_Fld19039RRef]  as ID_SKU       -- —сылка на номенклатуру
      , sku.[_Fld503RRef]    as ID_SKU_GROUP --——ылка на номенклатурную группу
from    [buh2].[dbo].[_Document15664_VT19022] cst
       left join [buh2].[dbo].[_Reference28] sku on  cst.[_Fld19039RRef] = sku.[_IDRRef]