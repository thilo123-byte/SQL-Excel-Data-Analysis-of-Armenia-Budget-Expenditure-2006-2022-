SELECT year, sum(executed) AS Yearly_Spending,LAG(Sum(executed)) OVER(Order by year) AS Previous_Year_Spending,
Round((sum(executed) - LAG(sum(executed)) over (order by year)) * 100.0 / LAG(sum(executed)) OVER (ORDER BY YEAR),2) AS Growth_Percentage
FROM [Armenia Boost].[dbo].[Expenditure]
Group by year
Order by Growth_Percentage desc 
