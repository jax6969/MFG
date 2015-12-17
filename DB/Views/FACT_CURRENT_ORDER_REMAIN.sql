create view [dbo].FACT_CURRENT_ORDER_REMAIN
as
select  c._Period                     as PERIOD-- ѕериод
      , c._Active                     as IS_ACTIVE-- ‘лаг активной записи
      , c._RecordKind
      , c._Fld10085RRef               as ID_BRAND -- —сылка на бренд
      , c._Fld10087RRef               as ID_CONTRACTOR -- —сылка на контрагента
      , c._Fld10088_RRRef             as [ID_SET\SKU] -- —сылка на набор\SKU
      , c._Fld10090RRef               as ID_SIZE -- —сылка на размер
      , c._Fld20844RRef               as ID_STOCK -- —сылка на склад
      , c._Fld10089RRef               as ID_COLOR -- —сылка на цвет
      , c._Fld10094                   as QUANTITY -- —сылка на количество
from    [buh2].[dbo].[_AccumRg10084]     c
