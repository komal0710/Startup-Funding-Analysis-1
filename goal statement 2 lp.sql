select * from dbo.startup_funding;
go

select InvestmentnType, 
count(InvestmentnType) as Total_Investment 
from dbo.startup_funding 
group by InvestmentnType 
order by Total_Investment desc;
go