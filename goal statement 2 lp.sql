select * from dbo.startup_funding;
go

select InvestmentType, 
count(InvestmentType) as Total_Investment 
from dbo.startup_funding 
group by InvestmentType 
order by Total_Investment desc;
go
