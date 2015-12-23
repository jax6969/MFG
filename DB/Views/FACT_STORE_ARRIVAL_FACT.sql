create view [dbo].[FACT_STORE_ARRIVAL_FACT]
as
select  t._Period        as PERIOD -- ������
      , t._Fld11316RRef  as ID_SKU -- ������ �� SKU
      , t._Fld11319RRef  as ID_SIZE -- ������ �� �������
      , t._Fld11318RRef  as ID_HEIGHT --������ �� �����
      , t._Fld11317RRef  as ID_COLOR --������ �� �����
      , t._Fld11320      as QUANTITY --����������
      , t._Fld11321      as AMT_RUB --�����
      , t._Fld11322      as AMT_RETAIL_RUB--������������
from    buh2.dbo._AccumRg11313 t
       join [buh2].[dbo].[_Reference48] s on  s._IDRREf = t._Fld11314_RRREf
       join [buh2].[dbo].[_Enum261] VW on  s._Fld652RRef = VW.[_IDRRef]
       join [buh2].[dbo].[_InfoRg23794] vwi on  vwi.[_Fld23797] = 'Enum261'
               and   vwi.[_Fld23805] not like ''
               and   vwi.[_Fld23804] = VW.[_EnumOrder]
       join [buh2].[dbo].[_Reference48] s2 on  s2._IDRREf = t._Fld11315_RRREf
       join [buh2].[dbo].[_Enum261] VW2 on  s2._Fld652RRef = VW2.[_IDRRef]
       join [buh2].[dbo].[_InfoRg23794] vwi2 on  vwi2.[_Fld23797] = 'Enum261'
               and   vwi2.[_Fld23805] not like ''
               and   vwi2.[_Fld23804] = VW2.[_EnumOrder]
                     /*����������� � �������� ������� ���������:
                     ���������.��������� = ��������(������������.�����������.���������) 
                     ��� ���������.��������������� 
                     � (�����������.��������� = ��������(������������.�����������.�������) 
                     ��� �����������.��������� = ��������(������������.�����������.���������������������)) */
where  (    s._Fld17875 = 0x01
       or  vwi.[_Fld23805] = '��������� �������' )
  and    vwi2._fld23805 in ('�������' ,'������������� ��������') 