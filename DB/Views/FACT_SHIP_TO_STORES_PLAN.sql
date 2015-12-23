create view [dbo].[FACT_SHIP_TO_STORES_PLAN]
as
select  _Period           as PERIOD -- Период
      , x._Fld6742_RRRef  as [ID_CONTRACTOR] -- Ссылка на Контрагента
      , coalesce(po._Fld16015RRef ,poo._Fld16023RRef) as ID_STOCK -- Ссылка на Склад
      , x._Fld6744_RRRef  as [ID_SET/SKU] -- Ссылка на Набор\Номенклатура
      , x._Fld6747RRef    as ID_SIZE -- Ссылка на Размер
      , x._Fld6746RRef    as ID_HEIGHT-- Ссылка на Рост
      , x._Fld6745RRef    as ID_COLOR -- Ссылка на Цвет
      , x._Fld16968       as COMPLETION_DT -- Дата Выполнения
      , x._Fld6748        as QUANTITY --Количество
from    buh2.dbo._AccumRg6741 x
       left join buh2.dbo._Document8464 po on  po._IDRRef = x._Fld17059_RRRef -- Подсортировка основная
       left join buh2.dbo._Document14330 poo on  poo._IDRRef = x._Fld17059_RRRef -- Подсортировка опт основная
where  x._Fld6742_RTRef = 0x00000017 -- Контрагенты
  and    _RecordKind = 1 -- это отгрузка 
         