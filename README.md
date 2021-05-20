# Startup-Funding-Analysis

## Introduction
India has been very active in creating a healthy startup ecosystem, and the growth in the number of startups is increasing year on year. In fact, it is among the top five startup communities in the world.<br>
Being so startup friendly the country has attracted numerous numbers of investors, both national and international. Therefore a large amount of money is poured into the startup ecosystem. Also due to government support, technology boon and rise of tier-2 and tier-3 cities has boosted the startup ecosystem.<br>
Events like launch of Startup India initiative, US elections and the Indian banknote demonetization had a huge impact on the startup community. The dataset acquired via kaggle will help to analyze the startup trends from start of 2015 to start of 2020 and how above events have affected the trend.

## Data Source
Kaggle: [Indian Startup Funding](https://www.kaggle.com/sudalairajkumar/indian-startup-funding)

## Technologies used
* Programming Language: **T-SQL (SQL Server)**
* Software used: **Microsoft SQL Server Management Studio 18**
* Cloud: **Azure SQL Server**

## Scope of the Analysis
The followings are the scope for this case study:

* The important investor of the Indian ecosystem
* The pattern of fundings does start up generally gets in India
* Various sectors or industries which are more favoured by investors for funding
* How funding has changed overtime
* Angel Investors of India
* Max and Min investment out of all start-ups in India

## Dataset
**The dataset consisted of a CSV file:**

|Column|Description|
|---|---|
|Sr No|Unique Serial Nos.|
|Date|Date of investment|
|Startup Name|Name of the Startup Company|
|Industry Vertical|Group of companies and customers that are all interconnected around a specific niche|
|SubVertical|Nearly related to vertical but not quite vertical|
|City Location|City of Startup Company|
|Investor Name|Name of the Investor|
|Investement Type|Type of investment made by investor|
|Amount in USD|Amount invested by investors in USD|
|Remarks|Remarks given by the investors|

## T-SQL functionalities used
* SELECT, FROM, WHERE, GROUP BY & ORDER BY statements
* ALTER statement
* UPDATE statement
* ALTER TABLE statement
* Aggregate functions - SUM, COUNT, MAX, MIN etc.


## Methodology
* **Data Cleaning** ([Change datatypes & Data Cleaning](https://github.com/Rajiv-Nayan/Startup-Funding-Analysis/blob/main/data%20cleaninng.sql))
  * Update columns with correct datatypes 
  * Substitue for missing values in Startup Funding table
  * Drop Sr No & Remarks column as it unnecessary and contains high number of missing values
  * Check for all names of investors and rename duplicates if any ('undisclosed investor' to 'Undisclosed Investors')


## Contributors: 
<a href="https://github.com/Rajiv-Nayan/Startup-Funding-Analysis/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=Rajiv-Nayan/Startup-Funding-Analysis" />
</a>
