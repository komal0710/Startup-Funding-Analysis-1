--MONTHWISE

select cast(YEAR(Date_yyyy_mm_dd) as nvarchar)+'-'+cast(MONTH(Date_yyyy_mm_dd) as nvarchar) as [Monthwise],SUM(Amount_in_USD) as Total_Amount from startup_funding group by YEAR(Date_yyyy_mm_dd),MONTH(Date_yyyy_mm_dd) order by YEAR(Date_yyyy_mm_dd),MONTH(Date_yyyy_mm_dd)


--YEARWISE

select YEAR(Date_yyyy_mm_dd) as [Yearwise],SUM(Amount_in_USD) as Total_Amount from startup_funding group by YEAR(Date_yyyy_mm_dd) order by YEAR(Date_yyyy_mm_dd)