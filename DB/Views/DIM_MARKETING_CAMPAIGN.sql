create view [dbo].[DIM_MARKETING_CAMPAIGN]
as
select  mc.[_IDRRef]   as ID_MARKETING_CAMPAIGN,	-- ID Маркетинговой акции
		mc.[_Fld8688]  as START_DT,					-- Дата начала
		mc.[_Fld7880]  as END_DT,					-- Дата окончания
		mc.[_Fld16937] as MC_DESCRIPTION,			-- Описание маркетинговой акции
		mc.[_Fld16971] as MC_NAME,					-- Название маркетинговой акции
		mc.[_Fld17244] as IS_PLANNED,				-- Плановая акция
		mc.[_Fld17394] as MC_FULL_DESCRIPTION,		-- Полное описание маркетинговой акции
		mc.[_Fld16972] as IS_ALL_ITEMS,				-- Вся номенклатура
		mc.[_Fld16973] as DISCOUNT_PCT,				-- Процент скидки
		mc.[_Fld16974] as DISCOUNT_AMT_RUB			-- Сумма скидки
from [buh2].[dbo].[_Document7875] mc


