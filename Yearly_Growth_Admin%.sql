WITH TotalBudget AS (
     Select year, sum(executed) AS National_Yearly_Total
     FROM [Armenia Boost].[dbo].[Expenditure]
     Group By year
),
Top10Admins AS (
    SELECT Top 10 admin
    FROM [Armenia Boost].[dbo].[Expenditure]
    Group by admin
    order by sum(executed)DESC
)

SELECT 
     e.year,
	 Rank() Over (Partition By e.year Order By Sum(e.executed) Desc) As Yearly_Rank,
	 e.admin, sum(e.executed) AS Yearly_Spending,
	 ISNULL(Sum(e.executed) - Lag(Sum(e.executed)) over (Partition By e.admin Order by e.year),0) AS Spending_Increase,
ISNULL(
      (sum(e.executed) - LAG(sum(e.executed)) over (Partition By e.admin order by e.year)) 
	  * 100.0 / NULLIF(t.National_Yearly_Total,0) 
, 0) AS Growth_Rel_to_National_Total
FROM [Armenia Boost].[dbo].[Expenditure] e
Join TotalBudget t ON e.year =t.year
Where e.admin IN (Select admin From Top10Admins)
Group by e.year, e.admin, t.National_Yearly_Total
Order by e.year, Yearly_Spending Desc 
  
