create view [dbo].[FACT_SHIP_TO_STORES_PLAN]
as
select  _Period
      , x._Fld6742_RRRef       as [ID_CONCTRACTOR/STOCK] -- ������ �� �����������\�����
      , x._Fld6744_RRRef       as [ID_SET/SKU] -- ������ �� �����\������������
      , x._Fld6747RRef         as ID_SIZE -- ������ �� ������
      , x._Fld6746RRef         as ID_HEIGHT-- ������ �� ����
      , x._Fld6743RRef         as ID_STOCK -- ������ �� �����
      , x._Fld6745RRef         as ID_COLOR -- ������ �� ����
      , x._Fld16968            as COMPLETION_DT-- ���� ����������
      , x._Fld6748             as QUANTITY--����������
from    buh2.dbo._AccumRg6741     x 