create view DIM_LOGISTIC_REGION
as
select  r.[_SimpleKey]  as ID_LOGISTIC_REGION
      , r.[_Fld23805]   as LOGISTICS_REGION
from    [BUH2].[dbo].[_InfoRg23794] r
where  r.[_Fld23797] = 'Enum14207'
  and    r.[_Fld23798] not in ('EnumOrder' ,'ID')
