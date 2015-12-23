create view [dbo].[FACT_SMS_SUBSCR_PLAN]
as
select  bg.[_IDRRef]       as ID_GROUP -- ���������� ���� ������
      , bg.[_Fld20819]     as DT -- ����
      , bg.[_Code]         as GROUP_CODE -- ��� ������
      , bg.[_Description]  as GROUP_DESC -- �������� ������
      , bg.[_Version]      as VERSION-- ������ ������
      , bg.[_Fld20819]     as GROUP_CNT -- ���������� ������� � ������
from    [buh2].[dbo].[_Reference13042] bg
       left join [buh2].[dbo].[_Enum20816] bgk on  bg._Fld20818RRef = bgk._IDRRef
where  (    select  t2.[_Fld23805]
            from    [buh2].[dbo].[_InfoRg23794] t2
            where  t2.[_Fld23797] = 'Enum20816'
              and    [_Fld23805] not like ''
              and    t2.[_Fld23804] = bgk.[_EnumOrder] ) = 'SMS ��������'