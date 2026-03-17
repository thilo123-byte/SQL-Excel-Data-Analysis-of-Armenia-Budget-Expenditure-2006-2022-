## 17-Year Government Budget Analysis (SQL + Excel)

# Project Overview
This project analyses 17 years of government budget data to identify long term spending trends,major growth drivers and periods of abnormal growth spending. The goal of this project is to analyse how government spending changed over time and which sectors contributed the most to overall growth. The dataset originally contained over 62000 records,recorded from 2006-2022,which were cleaned,structured using SQL. Excel was then used for pivot analysis and visualization.

# Objectives
The analysis focuses on answering the following questions;
- How has government spending changed over the last 17 years?
- Which Administrative departments contributed the most to the overall spending growth?
- Were there any significant spending spikes during the period?
- What major government functions drove these changes

# Data set
The dataset contains detailed government records spanning 17 years(2006-2022).
Key Charecteristics:
- Total records = 62015
- Time period = 17 years
- Columns = Years,Functional government spending classifications
- Data cleaning - Negative values seperated into income(230 rows),and expenditure(61785), and insignificant columns deleted.
- Analysis then focused on Expenditure,neglecting income.

To simplify the analysis and focus on the Top 10 spending functions,which together explain the majority of spending growth(80% of overall budget growth)

A sample of the dataset is included in this repository,the full dataset was reduced for performance and repository size optimization.

# Tools used
1` SQL
Used for data preparation and analytical calculatios
- Data cleaning and filtering
- Growth calculations
- Year-over-year comparisons
- Window functions (Lag) for time series analysis
2 Excel
Used for explorationa nd visualizations
- Pivot Tables
- Aggregations(Sums and averages)
- Trend charts
- Sector comparison visuals

# Analysis approach
1. Data Preparation
- Cleaned raw dataset
- Separated income and expenditure records
- Structured data for time series analysis

2. Time_series analysis
- Calculated Year-over-year growth using SQL window functions
- examined long-term spending trends across the full period

3 Sector contribution analysis
- Identified which Administrative departments contributed the most to overall spending growth
- Focused on the Top spending categories

4 Spike Investigation
The analysis noted several spikes in spending:
- 2008 - Major increase associated with the global recession of that year
- 2010 - Smaller increase in recovery initiatives following 2008 recession
- 2019-2020 - Significant rise due to the global pandemic, rise in mainly social protection and military defense.

Further analysis showed that social protection(OLd age spending) across three Administartive departments was the largest contributor to budget growth(23%) during the study period.

# key findings
- Government spending shows a steady upward trend over the 17 year period
- Two major spending spikes occured over the period, 2008 and 2019-2020
- Old age(Pensions) was the largest contributor to the growth(23%)
- Military defense and public debth servicing also played major roles in the budget expansion
- A small number of sectors account for the majority of total spending(10 sectors account for 80% of the growth)

# Conclusion
This project demonstrates how SQL and Excel can be combined to perform time series budget analysis. By examining long term trends and sector contributions, the analysis highlights how government priorities and external events influence public spending patterns.

## Author
- Nkosinathi Hlophe

Download full Budget Analysis here:
[Armenia_Budget_Analysis.xlsx](https://github.com/user-attachments/files/26046814/Armenia_Budget_Analysis.xlsx)

Here is the main Year-over-year plot of the data:
![Yearly_Spend][Charts/Yearly_Spend_2006-2022.png]
