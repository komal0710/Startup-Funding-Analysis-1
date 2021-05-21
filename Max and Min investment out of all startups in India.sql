select max(Amount_in_USD) as Max_Amount_in_USD, min(Amount_in_USD) as Min_Amount_in_USD from dbo.startup_funding where [City_Location] NOT IN ('Bangalore/Palo Alto','Bangalore/San Mateo','Bangalore/USA','Bangalore/SFO','Bangalore/Bangkok',
  'Boston','Bumsville','California','Chennai/Singapore','Dallas/Hyderabad','Delhi& Cambridge','Gurgaon/SFO',
  'Hyderabad/USA','India/Singapore','India/US','London','Menlo Park','Mumbai/Global','Mumbai/NY','Mumbai/UK',
  'Nairobi','New Delhi/California','New Delhi/US','New Delhi/Houston','Pune/Dubai','New York','New York, 
  Bengaluru','New York/India','Noida/Singapore','Palo Alto','Pune/Dubai','Pune/Singapore','Pune/US','Pune/Seattle',
  'San Francisco','San Jose','Santa Monica','Seattle/Banglore','SFO/Banglore','Singapore','Tulangan','USA','US')