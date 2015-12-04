create view [dbo].[DIM_EMPLOYEE]
as
select  e.[_IDRRef]         as ID_EMPLOYEE                               -- ID ����������
      , e.[_Code]           as EMPLOYEE_CODE                             -- ��� ����������
      , e.[_Description]    as EMPLOYEE_NAME                             -- ��� ����������
      , pos.[_Description]  as EMPLOYEE_POSITION                         -- ��������� ����������
      , (    select  _Fld23805
             from    [BUH2].[dbo]._InfoRg23794 as t
             where  (_Fld23797 = 'Enum225')
               and    (_Fld23805 not like '')
               and    (_Fld23804 = et._EnumOrder) ) as EMPLOYMENT_KIND   -- ��� ��������� � ����������� 
      , e.[_ParentIDRRef]   as ID_PARENT_EMPLOYEE                        -- ID ������������ ������
      , e.[_Fld11521RRef]   as ID_ORGANIZATION                           -- ID �����������
      , e.[_Fld18964RRef]   as ID_ORGANIZATION_UNIT                      -- ID ������������� �����������
      , e.[_Fld21950]       as EMPLOYMENT_DT                             -- ���� ������ �� ������
      , e.[_Fld21951]       as DISMISSAL_DT                              -- ���� ����������
      , e.[_Fld22597]       as WORKING_TIME_STANDARD                     -- ����� �������� �������
      , e.[_Fld23696]       as IS_DONE                                   -- ���������
      , e.[_Fld11520]       as IS_ACTUAL                                 -- ������������
from    [BUH2].[dbo]._Reference11433 e
       left join BUH2.dbo._Reference15 pos on  pos._IDRRef = e.[_Fld20046RRef]
       left join BUH2.dbo._Enum225 et on  et._IDRRef = e.[_Fld11522RRef]