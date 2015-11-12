create view [dbo].[DIM_DISCOUNT_CARD]
as
select  dc.[_IDRRef]        as ID_DISCOUNT_CARD -- ID Карты
      , dc.[_Code]          as CODE			    -- Номер карты
      , dc.[_Description]   as DESCRIPTION	    -- Описание
      , dc.[_Fld7974]       as ISSUE_DT			-- Дата выдачи карты
      , dc.[_Fld14529]      as CHANGE_DT		-- Дата изменения карты
      , dc.[_Fld856]        as DISCOUNT_AMT_PCT -- Процент скидки по карте
      , (    select  _Fld23805
             from    [BUH2].[dbo]._InfoRg23794 as t
             where  (_Fld23797 = 'Enum8150')
               and    (_Fld23805 not like '')
               and    (_Fld23804 = dc_type._EnumOrder) ) as DC_KIND -- Вид дисконтной карты
      , (    select  _Fld23805
             from    [BUH2].[dbo]._InfoRg23794 as t
             where  (_Fld23797 = 'Enum8010')
               and    (_Fld23805 not like '')
               and    (_Fld23804 = dc_state._EnumOrder) ) as DC_STATE  -- Состояние дисконтной карты
      , dc.[_Fld855_RRRef]  as ID_STOCK				--Ссылка на измерение Склады;Справочник.Контрагенты
      , dc.[_Fld9818RRef]   as ID_BRAND				--Ссылка на измерение Бизнес Единицы
      , dc.[_Fld7975RRef]   as ID_EMPLOYEE			--Ссылка на измерение Сотрудники Организаций
      , dc.[_Fld19786RRef]  as ID_BRAND_MARK		--Ссылка на измерение Марки
      , dc.[_Fld19785RRef]  as ID_SHOPPING_CENTER	--Ссылка на измерение ТорговыеЦентры
      , dc.[_Fld18528]      as OWNER_NAME			--Имя Владельца
      , dc.[_Fld18529]      as OWNER_PATRONYMIC		--Отчество Владельца
      , dc.[_Fld18530]      as OWNER_SURNAME		--Фамилия Владельца
      , dc.[_Fld18527]      as OWNER_BIRTH_DT		--Дата рождения владельца карты
      , datediff(year ,dc.[_Fld18527] ,SYSDATETIME()) + case when year(dc.[_Fld18527]) >= 3000 
															 then 2000
                                                             else 0 end as OWNER_AGE -- Возраст владельца
      , (    select  _Fld23805
             from    [BUH2].[dbo]._InfoRg23794 as t
             where  (_Fld23797 = 'Enum283')
               and    (_Fld23805 not like '')
               and    (_Fld23804 = dc_state._EnumOrder) ) as OWNER_GENDER -- Пол владельца
      , dc.[_Fld18532]      as OWNER_PHONE_NUM			--КонтактныйТелефон
      , dc.[_Fld18531]      as OWNER_EMAIL				--Адрес Электронной Почты
      , dc.[_Fld19783]      as IS_VALID_EMAIL		    --Флаг Ошибочный Адрес Электронной Почты
      , dc.[_Fld17809]      as IS_MULTIBRAND		    --Флаг Мультибренд 
from    [BUH2].[dbo].[_Reference79] dc
       left join [BUH2].[dbo].[_Enum8150] dc_type on  dc_type._IDRRef = dc.[_Fld18721RRef]
       left join [BUH2].[dbo].[_Enum8010] dc_state on  dc_state._IDRRef = dc.[_Fld8115RRef]
       left join [BUH2].[dbo].[_Enum283] s on  s._IDRRef = dc.[_Fld20901RRef]