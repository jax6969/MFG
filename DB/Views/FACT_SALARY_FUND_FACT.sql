create view [dbo].[FACT_SALARY_FUND_FACT] 
as
select  a._period        as PERIOD -- Период
      , a._Fld23450RRef  as ID_EMPLOYEE_POSITION -- Должность
      , a._Fld23449RRef  as ID_ORGANIZATION_UNIT -- Подразделение организации
      , a._Fld23452      as SALARY_RUB -- Зарплата
from    buh2.dbo._AccumRg23447 a
       join buh2.dbo._Reference23441 s on  s._IDRRef = a._Fld23448RRef
where  s._Description = 'Факт'