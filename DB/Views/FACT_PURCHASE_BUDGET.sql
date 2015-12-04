create view [dbo].FACT_PURCHASE_BUDGET
as
select  [_Period]         as DT
      , [_Fld8939RRef]    as ID_SKU -- Ссылка на SKU
      , [_Fld8946RRef]    as ID_COLOR -- Ссылка на цвет
      , (    select  t.[_Fld23805]
             from    [buh2].[dbo].[_InfoRg23794] t
             where  t.[_Fld23797] = 'Enum14207'
               and    t.[_Fld23805] not like ''
               and    t.[_Fld23804] = AReg.[_EnumOrder] ) as ADMINISTRATIVE_REGION --Административный регион
      , [_Fld9320RRef]    as ID_CONTAINER -- Справочник.Контейнеры
      , [_Fld9321_RRRef]  as ID_INVOICE -- НомерИнвойса
      , [_Fld16361RRef]   as ID_SIZE -- Справочник.Размеры
      , [_Fld16362RRef]   as ID_HEIGHT --Справочник.Роста
      , [_Fld14539]       as CUT_OFF_DT -- Измерение.CutOffDate
      , [_Fld8948RRef]    as ID_CURRENCY -- Справочник.Валюты
      , [_Fld8938RRef]    as ID_CONTRACT -- Справочник.ДоговорыКонтрагентов
      , [_Fld8937RRef]    as ID_CONTRACTOR -- Справочник.Контрагенты
      , [_Fld8950]        as PLAN_QUANTITY -- КоличествоПлан
      , [_Fld8951]        as QUANTITY -- Количество
      , [_Fld8952]        as AMT_RUB -- Сумма
from    [BUH2].[dbo].[_AccumRg8936] x
       left join [buh2].[dbo].[_Enum14207] AReg on  x.[_Fld16176RRef] = AReg.[_IDRRef]
  


