create view [dbo].FACT_CURRENT_ORDER_REMAIN
as
select  c._Period                     as PERIOD-- ������
      , c._Active                     as IS_ACTIVE-- ���� �������� ������
      , c._RecordKind
      , c._Fld10085RRef               as ID_BRAND -- ������ �� �����
      , c._Fld10087RRef               as ID_CONTRACTOR -- ������ �� �����������
      , c._Fld10088_RRRef             as [ID_SET\SKU] -- ������ �� �����\SKU
      , c._Fld10090RRef               as ID_SIZE -- ������ �� ������
      , c._Fld20844RRef               as ID_STOCK -- ������ �� �����
      , c._Fld10089RRef               as ID_COLOR -- ������ �� ����
      , c._Fld10094                   as QUANTITY -- ������ �� ����������
from    [buh2].[dbo].[_AccumRg10084]     c
