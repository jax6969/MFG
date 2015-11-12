create view [dbo].[DIM_DISCOUNT_CARD]
as
select  dc.[_IDRRef]        as ID_DISCOUNT_CARD -- ID �����
      , dc.[_Code]          as CODE			    -- ����� �����
      , dc.[_Description]   as DESCRIPTION	    -- ��������
      , dc.[_Fld7974]       as ISSUE_DT			-- ���� ������ �����
      , dc.[_Fld14529]      as CHANGE_DT		-- ���� ��������� �����
      , dc.[_Fld856]        as DISCOUNT_AMT_PCT -- ������� ������ �� �����
      , (    select  _Fld23805
             from    [BUH2].[dbo]._InfoRg23794 as t
             where  (_Fld23797 = 'Enum8150')
               and    (_Fld23805 not like '')
               and    (_Fld23804 = dc_type._EnumOrder) ) as DC_KIND -- ��� ���������� �����
      , (    select  _Fld23805
             from    [BUH2].[dbo]._InfoRg23794 as t
             where  (_Fld23797 = 'Enum8010')
               and    (_Fld23805 not like '')
               and    (_Fld23804 = dc_state._EnumOrder) ) as DC_STATE  -- ��������� ���������� �����
      , dc.[_Fld855_RRRef]  as ID_STOCK				--������ �� ��������� ������;����������.�����������
      , dc.[_Fld9818RRef]   as ID_BRAND				--������ �� ��������� ������ �������
      , dc.[_Fld7975RRef]   as ID_EMPLOYEE			--������ �� ��������� ���������� �����������
      , dc.[_Fld19786RRef]  as ID_BRAND_MARK		--������ �� ��������� �����
      , dc.[_Fld19785RRef]  as ID_SHOPPING_CENTER	--������ �� ��������� ��������������
      , dc.[_Fld18528]      as OWNER_NAME			--��� ���������
      , dc.[_Fld18529]      as OWNER_PATRONYMIC		--�������� ���������
      , dc.[_Fld18530]      as OWNER_SURNAME		--������� ���������
      , dc.[_Fld18527]      as OWNER_BIRTH_DT		--���� �������� ��������� �����
      , datediff(year ,dc.[_Fld18527] ,SYSDATETIME()) + case when year(dc.[_Fld18527]) >= 3000 
															 then 2000
                                                             else 0 end as OWNER_AGE -- ������� ���������
      , (    select  _Fld23805
             from    [BUH2].[dbo]._InfoRg23794 as t
             where  (_Fld23797 = 'Enum283')
               and    (_Fld23805 not like '')
               and    (_Fld23804 = dc_state._EnumOrder) ) as OWNER_GENDER -- ��� ���������
      , dc.[_Fld18532]      as OWNER_PHONE_NUM			--�����������������
      , dc.[_Fld18531]      as OWNER_EMAIL				--����� ����������� �����
      , dc.[_Fld19783]      as IS_VALID_EMAIL		    --���� ��������� ����� ����������� �����
      , dc.[_Fld17809]      as IS_MULTIBRAND		    --���� ����������� 
from    [BUH2].[dbo].[_Reference79] dc
       left join [BUH2].[dbo].[_Enum8150] dc_type on  dc_type._IDRRef = dc.[_Fld18721RRef]
       left join [BUH2].[dbo].[_Enum8010] dc_state on  dc_state._IDRRef = dc.[_Fld8115RRef]
       left join [BUH2].[dbo].[_Enum283] s on  s._IDRRef = dc.[_Fld20901RRef]