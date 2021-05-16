--MONTHWISE

SELECT CAST(YEAR(Date_yyyy_mm_dd) as NVARCHAR)+'-'+CAST(MONTH(Date_yyyy_mm_dd) as NVARCHAR) AS [Monthwise],SUM(Amount_in_USD) AS Total_Amount FROM startup_funding GROUP BY YEAR(Date_yyyy_mm_dd),MONTH(Date_yyyy_mm_dd) ORDER BY YEAR(Date_yyyy_mm_dd),MONTH(Date_yyyy_mm_dd)
GO

--YEARWISE

SELECT YEAR(Date_yyyy_mm_dd) AS [Yearwise],  SUM(Amount_in_USD) AS Total_Amount FROM startup_funding GROUP BY YEAR(Date_yyyy_mm_dd) ORDER BY YEAR(Date_yyyy_mm_dd)
GO
