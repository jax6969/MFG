create view [dbo].[DIM_EMPLOYEE]
as
select  e.[_IDRRef]         as ID_EMPLOYEE                               -- ID сотрудника
      , e.[_Code]           as EMPLOYEE_CODE                             -- Код сотрудника
      , e.[_Description]    as EMPLOYEE_NAME                             -- Имя сотрудника
      , pos.[_Description]  as EMPLOYEE_POSITION                         -- Должность сотрудника
      , (    select  _Fld23805
             from    [BUH2].[dbo]._InfoRg23794 as t
             where  (_Fld23797 = 'Enum225')
               and    (_Fld23805 not like '')
               and    (_Fld23804 = et._EnumOrder) ) as EMPLOYMENT_KIND   -- Вид занятости в организации 
      , e.[_ParentIDRRef]   as ID_PARENT_EMPLOYEE                        -- ID Родительской запись
      , e.[_Fld11521RRef]   as ID_ORGANIZATION                           -- ID Организации
      , e.[_Fld18964RRef]   as ID_ORGANIZATION_UNIT                      -- ID Подразделения Организации
      , e.[_Fld21950]       as EMPLOYMENT_DT                             -- Дата приема на работу
      , e.[_Fld21951]       as DISMISSAL_DT                              -- Дата увольнения
      , e.[_Fld22597]       as WORKING_TIME_STANDARD                     -- Норма рабочего времени
      , e.[_Fld23696]       as IS_DONE                                   -- Выполнено
      , e.[_Fld11520]       as IS_ACTUAL                                 -- Актуальность
from    [BUH2].[dbo]._Reference11433 e
       left join BUH2.dbo._Reference15 pos on  pos._IDRRef = e.[_Fld20046RRef]
       left join BUH2.dbo._Enum225 et on  et._IDRRef = e.[_Fld11522RRef]