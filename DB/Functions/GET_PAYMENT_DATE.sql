create function [dbo].[get_payment_date]
(
	@payment_day      int
   ,@payment_kind     nvarchar(5)
)
returns date
begin
	declare @payment_month date = dateadd(day,4,getdate());
	declare @month_last_day int;
	
	if @payment_kind = 'пред.'
	    set @payment_month = dateadd(mm ,-1 ,getdate())
	
	if @payment_kind = 'след.'
	    set @payment_month = dateadd(mm ,1 ,getdate()) 
	
	set @month_last_day = datepart(    dd
	       ,dateadd(    s
	           ,-1
	           ,dateadd(mm ,datediff(m ,0 ,@payment_month) + 1 ,0) ) )
	
	if @month_last_day < @payment_day
	    set @payment_day = @month_last_day
	
	return (    cast(datepart(yyyy ,@payment_month) as varchar) + '-' + cast(datepart(mm ,@payment_month) as varchar) + '-' + right(replicate('0' ,2) + cast(@payment_day as varchar) ,2) )
end
