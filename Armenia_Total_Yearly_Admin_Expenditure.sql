SELECT [admin],sum(executed) AS Total_expenditure
INTO [Armenia Boost].[dbo].[Expenditure_Admin]
FROM [Armenia Boost].[dbo].[expenditure$]
group by [admin]
order by sum(executed) desc
