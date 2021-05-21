--Investors Name Updation
  
  Update dbo.startup_funding
  SET Investors_Name = REPLACE('Undisclosed Investor', 'Investor','Investors')
  where Investors_Name like 'Undisclosed%'
  
  Select Investors_Name from dbo.startup_funding
  where Investors_Name like 'Undisclosed%'  
  
--Investors Type Updation

  Update dbo.startup_funding
  SET InvestmentType = REPLACE('Seed Funding Round', 'Round',' ') 
  where InvestmentType like  'Seed%'  

  Update dbo.startup_funding
  SET InvestmentType = REPLACE('Seed Funding', 'Seed','Angel ') 
  where InvestmentType like  'Seed%'
  
  Update dbo.startup_funding
  SET InvestmentType = REPLACE('Angel Funding Round', 'Round',' ') 
  where InvestmentType like  'Angel%'

-- Invested in Maximum No. of Startup
 
  select top(10) Investors_Name,count(Startup_Name) as Startup_InvestedIn from dbo.startup_funding
  where City_Location NOT IN ('Bangalore/Palo Alto','Bangalore/San Mateo','Bangalore/USA','Bangalore/SFO','Bangalore/Bangkok',
  'Boston','Bumsville','California','Chennai/Singapore','Dallas/Hyderabad','Delhi& Cambridge','Gurgaon/SFO',
  'Hyderabad/USA','India/Singapore','India/US','London','Menlo Park','Mumbai/Global','Mumbai/NY','Mumbai/UK',
  'Nairobi','New Delhi/California','New Delhi/US','New Delhi/Houston','Pune/Dubai','New York','New York, 
  Bengaluru','New York/India','Noida/Singapore','Palo Alto','Pune/Dubai','Pune/Singapore','Pune/US','Pune/Seattle',
  'San Francisco','San Jose','Santa Monica','Seattle/Banglore','SFO/Banglore','Singapore','Tulangan','USA','US') 
  group by Investors_Name,InvestmentType
  having InvestmentType like 'Angel%' and Investors_Name is not Null  order by Startup_InvestedIn desc

 
--Maximum Amount Invested
  select top(10) Investors_Name,Amount_in_USD from(
  select Investors_Name,InvestmentType,City_Location,count(Startup_Name) as Startup_InvestedIn,Amount_in_USD from dbo.startup_funding
  where City_Location NOT IN ('Bangalore/Palo Alto','Bangalore/San Mateo','Bangalore/USA','Bangalore/SFO','Bangalore/Bangkok',
  'Boston','Bumsville','California','Chennai/Singapore','Dallas/Hyderabad','Delhi& Cambridge','Gurgaon/SFO',
  'Hyderabad/USA','India/Singapore','India/US','London','Menlo Park','Mumbai/Global','Mumbai/NY','Mumbai/UK',
  'Nairobi','New Delhi/California','New Delhi/US','New Delhi/Houston','Pune/Dubai','New York','New York, 
  Bengaluru','New York/India','Noida/Singapore','Palo Alto','Pune/Dubai','Pune/Singapore','Pune/US','Pune/Seattle',
  'San Francisco','San Jose','Santa Monica','Seattle/Banglore','SFO/Banglore','Singapore','Tulangan','USA','US')
  group by Investors_Name,InvestmentType,City_Location,Amount_in_USD
  having InvestmentType like 'Angel%') as derived
  order by Amount_in_USD desc


