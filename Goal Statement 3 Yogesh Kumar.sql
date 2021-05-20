Use Startup_Funding_Analysis
Go

select * from [dbo].[startup_funding]

Select  Industry_Vertical,

		count(*) as Frequency
		
from [dbo].[startup_funding]

Group by Industry_Vertical 

order by Frequency DESC
Go

