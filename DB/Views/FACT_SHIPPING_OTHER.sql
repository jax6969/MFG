create view [dbo].FACT_SHIPPING_OTHER
as
select  ss._Document13927_IDRRef  as ID_REALIZ_DOC
      , ss._Fld19065RRef          as ID_DISCOUNT_CARD -- ����������.���������������
      , ss._Fld13965              as QUANTITY -- ����������
      , ss._Fld16296			  as NET_COST -- �������������
      , ss._Fld13963RRef          as ID_SKU  --����������.������������
      , ss._Fld13970RRef          as ID_SIZE --����������.�������
      , ss._Fld14427RRef          as ID_HEIGHT --����������.�����
      , ss._Fld13966              as AMT_RUB --�����
      , ss._Fld14426RRef          as ID_COLOR --����������.�����
      , s._Fld14528RRef           as ID_STOCK --����������.������
from    buh2.dbo._Document13927_VT13961 ss
       join buh2.dbo._Document13927 s on  s._IDRRef = ss._Document13927_IDRRef