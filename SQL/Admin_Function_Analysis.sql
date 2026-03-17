SELECT admin,func3,sum(executed) AS Spending
FROM [Armenia Boost].[dbo].[Expenditure]
Group by admin,func3
Order by admin, Spending Desc

