create view [dbo].[FACT_SHIP_TO_STORES_PLAN]
as
select  _Period           as PERIOD -- ������
      , x._Fld6742_RRRef  as [ID_CONTRACTOR] -- ������ �� �����������
      , coalesce(po._Fld16015RRef ,poo._Fld16023RRef) as ID_STOCK -- ������ �� �����
      , x._Fld6744_RRRef  as [ID_SET/SKU] -- ������ �� �����\������������
      , x._Fld6747RRef    as ID_SIZE -- ������ �� ������
      , x._Fld6746RRef    as ID_HEIGHT-- ������ �� ����
      , x._Fld6745RRef    as ID_COLOR -- ������ �� ����
      , x._Fld16968       as COMPLETION_DT -- ���� ����������
      , x._Fld6748        as QUANTITY --����������
from    buh2.dbo._AccumRg6741 x
       left join buh2.dbo._Document8464 po on  po._IDRRef = x._Fld17059_RRRef -- ������������� ��������
       left join buh2.dbo._Document14330 poo on  poo._IDRRef = x._Fld17059_RRRef -- ������������� ��� ��������
where  x._Fld6742_RTRef = 0x00000017 -- �����������
  and    _RecordKind = 1 -- ��� �������� 
         