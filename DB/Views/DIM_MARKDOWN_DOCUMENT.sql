create view [dbo].[DIM_MARKDOWN_DOCUMENT]
as
select  md.[_IDRRef]          as ID_MARKDOWN_DOC -- ID ��������� ������
      , md.[_Number]          as MD_NUM			 -- ����� ��������� ������
      , md.[_Date_Time]       as MD_DT			 -- ���� � ����� �������� ��������� ������
from    [dbo].[_Document9775]     md