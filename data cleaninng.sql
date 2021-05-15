alter table startup_funding drop column Sr_No,Remarks
go

select * from startup_funding
go
--DATE
update startup_funding set Date_dd_mm_yyyy=REPLACE(Date_dd_mm_yyyy,'05/072018','05/07/2018')
GO

--STARTUP NAME 

select distinct Startup_Name from startup_funding order by Startup_Name
go

update startup_funding set Startup_Name=REPLACE(Startup_Name,'\\','')
go

--INDUSTRY VERTICAL
select distinct Industry_Vertical from startup_funding
go

update startup_funding set Industry_Vertical=REPLACE(Industry_Vertical,'\xe2\x80\x93','')
go

--SUB-VERTICAL
SELECT DISTINCT SubVertical FROM startup_funding
go

update startup_funding set SubVertical=REPLACE(SubVertical,'\\','')

--CITY LOCATION
SELECT DISTINCT City_Location FROM startup_funding
GO

update startup_funding set City_Location=REPLACE(City_Location,'US/India','India/US')

--INVESTORS NAME
SELECT DISTINCT Investors_Name FROM startup_funding
GO

update startup_funding set Investors_Name=REPLACE(Investors_Name,'"','')

--INVESTMENT TYPE
SELECT DISTINCT InvestmentnType FROM startup_funding
GO

update startup_funding set InvestmentnType=REPLACE(InvestmentnType,'Seed Funding Funding','Seed Funding')
go


update startup_funding set InvestmentnType=NULL WHERE InvestmentnType='nan'

--AMOUNT IN USD
SELECT DISTINCT Amount_in_USD FROM startup_funding


update startup_funding set Amount_in_USD=REPLACE(Amount_in_USD,'\\xc2\\xa0','')
go

update startup_funding set Amount_in_USD=NULL WHERE Amount_in_USD='undisclosed'
go

--STARTUP NAME
update dbo.startup_funding
set Startup_Name = 'BetterButter'
where Startup_Name = 'BetterButter.in'
go

update dbo.startup_funding
set Startup_Name = 'Wealth Bucket'
where Startup_Name = 'https://www.wealthbucket.in/'
go

select Startup_Name from dbo.startup_funding where Startup_Name like '%.in';
go

update startup_funding set Startup_Name=REPLACE(Startup_Name,'.in','')
go

select Startup_Name from dbo.startup_funding where Startup_Name like '%.com';
go

update startup_funding set Startup_Name=REPLACE(Startup_Name,'.com','')
go
