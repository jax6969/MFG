create view [dbo].[DIM_CAMPAIGN_SKU]
as
select  cs.[_Fld16940RRef]   as ID_SKU        -- Ссылка на SKU/Акционный артикул
      , cs.[_Fld16943RRef]   as ID_COLLECTION -- Ссылка на коллекцию/Акционная коллекция
      , (    select  t2.[_Fld23805]
             from    [BUH2].[dbo].[_InfoRg23794] t2
             where  t2.[_Fld23797] = 'Enum338'
               and    [_Fld23805] not like ''
               and    t2.[_Fld23804] = ym.[_EnumOrder] ) as COLLECTION_MONTH -- Акционный месяц коллекции
      , sku.[_Fld10246RRef]  as ID_ASSORTMENT_GROUP -- Ссылка на ассортиментную группу/Акционная ассортиментная группа
      , (    select  t2.[_Fld23805]
             from    [BUH2].[dbo].[_InfoRg23794] t2
             where  t2.[_Fld23797] = 'Enum253'
               and    [_Fld23805] not like ''
               and    t2.[_Fld23804] = ck.[_EnumOrder] ) as CAMPAIGN_KIND -- Акционный месяц коллекции
      , c.[_Fld16972]		 as IS_ALL_SKUS
      , cs.[_Fld16942RRef]   as ID_ASSORTMENT       -- Ссылка на ассортимент/Акционный ассортимент
      , (    select  t2.[_Fld23805]
             from    [buh2].[dbo].[_InfoRg23794] t2
             where  t2.[_Fld23797] = 'Enum17517'
               and    [_Fld23805] not like ''
               and    t2.[_Fld23804] = ssn.[_EnumOrder] ) as Season --Сезон
from    [dbo].[_Document7875_VT16938] cs -- campaign sku`s
join [dbo].[_Document7875] c on c._IDRRef = cs._Document7875_IDRRef
       left join [dbo].[_Enum338] ym on  cs.[_Fld21720RRef] = ym._IDRRef
       left join [dbo].[_Reference28] sku on  sku._IDRRef = cs.[_Fld16940RRef]
       left join [dbo].[_Enum17517] ssn on  sku.[_Fld7332RRef] = ssn._IDRRef
       left join [dbo].[_Enum253] ck on ck._IDRRef = c._Fld16933RRef