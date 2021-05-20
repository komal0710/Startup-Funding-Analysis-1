/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [Date_dd_mm_yyyy]
      ,[Startup_Name]
      ,[Industry_Vertical]
      ,[SubVertical]
      ,[City_Location]
      ,[Investors_Name]
      ,[InvestmentType]
      ,[Amount_in_USD]
  FROM [dbo].[startup_funding]

  select Investors_Name,InvestmentType,Startup_Name from startup_funding
  where InvestmentType like 'Seed%' or InvestmentType like 'Angel%'
  group by Startup_Name,Investors_Name,InvestmentType
  order by Investors_Name desc
  GO

  select top(3) Investors_Name,InvestmentType,count(Startup_Name) as Startup_InvestedIn from dbo.startup_funding
  group by Investors_Name,InvestmentType
  having InvestmentType like 'Seed%' or InvestmentType like 'Angel%'
  order by Startup_InvestedIn desc
  GO
