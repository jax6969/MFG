create view [dbo].FACT_SHIPPING_OTHER
as
select  ss._Document13927_IDRRef  as ID_REALIZ_DOC
      , ss._Fld19065RRef          as ID_DISCOUNT_CARD -- Справочник.ДисконтныеКарты
      , ss._Fld13965              as QUANTITY -- Количество
      , ss._Fld16296			  as NET_COST -- Себестоимость
      , ss._Fld13963RRef          as ID_SKU  --Справочник.Номенклатура
      , ss._Fld13970RRef          as ID_SIZE --Справочник.Размеры
      , ss._Fld14427RRef          as ID_HEIGHT --Справочник.Роста
      , ss._Fld13966              as AMT_RUB --Сумма
      , ss._Fld14426RRef          as ID_COLOR --Справочник.Цвета
      , s._Fld14528RRef           as ID_STOCK --Справочник.Склады
from    buh2.dbo._Document13927_VT13961 ss
       join buh2.dbo._Document13927 s on  s._IDRRef = ss._Document13927_IDRRef