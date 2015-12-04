--Бренд 
--Магазин
CREATE VIEW [dbo].[FACT_LEASING]
AS 
SELECT  f.[_Period]														as PERIOD
	  , f.[_Fld16944]													as TURNOVER_PCT			/* CAP (факт), % */
	  , f.[_Fld23166]													as RENT_AGREEMENT_FLAG	/* Признак договорной аренды */
	  , f.[_Fld21514]													as DISCOUNT_PCT			/* Скидка на БАП (факт), % */
	  ,  case when f.[_Fld16709] * f.[_Fld16708]<>0 
	           and f.[_Fld16709] = f.[_Fld16709] 
		      then f.[_Fld16709] end									as FIXED_RATE_RUB		/* Фиксированный курс (факт), руб */
	  , f.[_Fld14543RRef]												as ID_BRAND				/* Brand Ref*/
	  , f.[_Fld14128RRef]												as ID_STOCK				/* Stock Ref */
 from [BUH2].[dbo].[_InfoRg14124] f 
