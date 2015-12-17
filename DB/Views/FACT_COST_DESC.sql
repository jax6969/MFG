create view [dbo].[FACT_COST_DESC]
as
select  d._IDRRef         as ID_COST_DESC -- Идентификатор документа предварительное описание затрат
      , d._Date_Time      as DT -- Дата и время документа
      , d._Number         as [NUMBER] -- Номер документа
      , d._Version        as [VERSION] -- Версия
      , (    select  t.[_Fld23805]
             from    [buh2].[dbo].[_InfoRg23794] t
             where  t.[_Fld23797] = 'Enum15665'
               and    t.[_Fld23805] not like ''
               and    t.[_Fld23804] = c.[_EnumOrder] ) as operation_type_cost_desc -- Вид операции
      , ds._Fld18015RRef  as ID_BRAND -- Ссылка на бренд
      , ds._Fld17859      as PERIOD -- Период
      , ds._Fld18013RRef  as ID_BUSINESS_UNIT -- Ссылка на подразделение организации
      , ds._Fld14300      as AMT_RUB -- Сумма
      , ds._Fld18014      as AMT_FACT_COSTS_RUB -- Сумма фактических затрат
from    [buh2].[dbo].[_Document8887] d
       join [buh2].[dbo].[_Document8887_VT14296] ds on  ds._Document8887_IDRRef = d._IDRRef
       left join [buh2].[dbo].[_Enum15665] c on  d._Fld18023RRef = c.[_IDRRef]
