create view [dbo].[DIM_MARKDOWN_DOCUMENT]
as
select  md.[_IDRRef]          as ID_MARKDOWN_DOC -- ID Документа уценки
      , md.[_Number]          as MD_NUM			 -- Номер документа уценки
      , md.[_Date_Time]       as MD_DT			 -- Дата и время создания документа уценки
from    [buh2].[dbo].[_Document9775] md