create view [dbo].[FACT_SHIP_TO_STORES_PLAN]
as
select  _Period
      , x._Fld6742_RRRef       as [ID_CONCTRACTOR/STOCK] -- Ссылка на Контрагента\Склад
      , x._Fld6744_RRRef       as [ID_SET/SKU] -- Ссылка на Набор\Номенклатура
      , x._Fld6747RRef         as ID_SIZE -- Ссылка на Размер
      , x._Fld6746RRef         as ID_HEIGHT-- Ссылка на Рост
      , x._Fld6743RRef         as ID_STOCK -- Ссылка на Склад
      , x._Fld6745RRef         as ID_COLOR -- Ссылка на Цвет
      , x._Fld16968            as COMPLETION_DT-- Дата Выполнения
      , x._Fld6748             as QUANTITY--Количество
from    buh2.dbo._AccumRg6741     x 