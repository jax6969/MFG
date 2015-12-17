create view [dbo].FACT_INITIAL_ORDER
as
select  x._Period        as PERIOD
      , x._Fld13469RRef  as ID_BRAND -- Ссылка на бренд
      , x._Fld13471RRef  as ID_CONTRACTOR -- Ссылка
      , x._Fld13472RRef  as ID_SKU -- Ссылка на SKU
      , x._Fld13475RRef  as ID_SIZE -- Ссылка на размер
      , (    select  t.[_Fld23805]
             from    [buh2].[dbo].[_InfoRg23794] t
             where  t.[_Fld23797] = 'Enum14207'
               and    t.[_Fld23805] not like ''
               and    t.[_Fld23804] = AReg.[_EnumOrder] ) as ADMINISTRATIVE_REGION -- Административный регион
      , x._Fld13474RRef  as ID_HEIGHT -- Ссылка на рост
      , x._Fld13473RRef  as ID_COLOR  -- Ссылка на цвет
      , x._Fld13476      as QUANTITY  -- Количество
      , x._Fld16780      as NET_COST  -- Себестоимость
      , x._Fld13477      as AMT_RUB   -- Сумма
from    [buh2].[dbo]._AccumRg13468 x
       left join [buh2].[dbo].[_Enum14207] AReg on  x.[_Fld16373RRef] = AReg.[_IDRRef]