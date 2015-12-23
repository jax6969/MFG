create view [dbo].[DIM_WORK_CONTRACTORS]
as
select  r._IDRRef              as ID_CONTRACTOR -- Ссылка на контрагента
      , r._Code                as CONTRACTOR_CODE -- Код контрагента
      , r._Description         as CONTRACTOR_DESC -- Описание контрагента
from    buh2.dbo._Reference23     r
where  exists (    select  *
                   from    buh2.dbo._Document15664_VT22579 c
                   where  c._Fld22582RRef = r._IDRRef ) 