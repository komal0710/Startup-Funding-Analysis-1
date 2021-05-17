 select DISTINCT Investors_Name,count(Startup_Name) as startup_count, SUM(Amount_in_USD) AS Total_Amount from dbo.startup_funding
  WHERE City_Location NOT IN ('Bangalore/Palo Alto','Bangalore/San Mateo','Bangalore/USA','Bangalore/SFO','Bangalore/Bangkok',
  'Boston','Bumsville','California','Chennai/Singapore','Dallas/Hyderabad','Delhi& Cambridge','Gurgaon/SFO',
  'Hyderabad/USA','India/Singapore','India/US','London','Menlo Park','Mumbai/Global','Mumbai/NY','Mumbai/UK',
  'Nairobi','New Delhi/California','New Delhi/US','New Delhi/Houston','Pune/Dubai','New York','New York, 
  Bengaluru','New York/India','Noida/Singapore','Palo Alto','Pune/Dubai','Pune/Singapore','Pune/US','Pune/Seattle',
  'San Francisco','San Jose','Santa Monica','Seattle/Banglore','SFO/Banglore','Singapore','Tulangan','USA','US')
  group by Investors_Name
  ORDER BY Total_Amount DESC
  
