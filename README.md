# 📊 Labor Market Analytics: Data Jobs
<br><br>
## SQL · Power BI · Workforce & Compensation Insights
<br><br>
## Executive Summary

<img width="1920" height="1080" alt="DATA JOBS DASHBOARD 2 0" src="https://github.com/user-attachments/assets/0d6a31da-55ef-44a3-af7b-1aba138d5bc6" />


<br><br>


This project delivers an end-to-end labor market analysis of the data jobs ecosystem using 497K+ real-world job postings. The analysis focuses on compensation trends, role distribution, skill demand, and geographic concentration—transforming raw job-posting data into decision-ready workforce insights.

Using SQL for data extraction and transformation and Power BI for interactive reporting, the project demonstrates how analytics teams can support hiring strategy, workforce planning, and market benchmarking without overengineering or black-box modeling.

### SQL Script used to query Data can be accessed at

🔗 SQL analysis notebook: 
-  (https://github.com/dareoyeleke/labor-market-analytics-data-jobs/blob/main/sql_basics_project.ipynb)
<br>

## 📂 Data Source

🔗 Dim tables for SQL note book queries [https://github.com/dareoyeleke/labor-market-analytics-data-jobs/blob/main/US%20Data%20Analyst%20Jobs%20Query%20Results.ipynb] and Power Bi full Dashboard and visual creation. 
  - https://drive.google.com/file/d/1yXsGDorVWuDtFeTo1NnLLODDBT4P0JCf/view?usp=drive_link "skills_job_dim.csv"
  - https://drive.google.com/file/d/1yU7cjAwXyM-nrzn9G-HoQ6TK3fpuUx8m/view?usp=drive_link "company_dim.csv"
  - https://drive.google.com/file/d/1yTEGzAQ6fXYRAWjSgwAv3bYarIKV7hlE/view?usp=drive_link "skills_dim.csv"
  - https://drive.google.com/file/d/1yQcTBR-6_OOv9QPz-swjXjheyAgvRfAL/view?usp=drive_link "job_postings_fact.csv"
  
<br><br>
## Business Questions

This analysis was designed to answer practical, stakeholder-relevant questions such as:

-  Which data roles command the highest compensation?

-  How does pay vary by role type, location, and job category?

-  Where are data jobs geographically concentrated?

-  How do remote and location-based roles differ in salary structure?

-  What insights can inform hiring strategy and workforce planning?
  
<br>

## Data Overview

-  Records: 497,000+ job postings

-  Domain: Data & Analytics labor market

-  Source: Public job-posting datasets

-  Key fields: Role title, salary, location, employment type, skills. 

-  Salary data was standardized to enable consistent cross-role and geographic comparisons.

<br>

## Methodology

**1️⃣ Data Extraction & Transformation (SQL)**

-  Queried and analyzed job-posting data using PostgreSQL for Database creation on public schemas

-  Pandas, Matplotlib and sys were installed 

-  %%sql magic was used to convert results of SQL in pandas Dataframes

-  CSV files were mounted from Google drive to populate Database and fill tables

-  The dim tables imported as csv, Transformed and loaded to create parameters for visualization in Power Bi 

**Applied:**

-  Common Table Expressions (CTEs)

-  Subqueries

-  Complex joins

-  Aggregations and filters

-  Standardized salary formats (hourly vs annual)

-  Structured role categories for consistent analysis

**2️⃣ Analytical Modeling (Power BI)**

-  Imported entire Data set for alternate Visual creation

-  Imported cleaned SQL outputs into Power BI

-  Modeled relationships and measures using:

-  Power Query

-  DAX

**Built calculated measures for:**

-  Median and Average salary by the year and hourly adjusted to a working year

-  Job counts and percentage

-  Skill Count, percentage and skills per job

-  Geographic comparisons

-  Role-level benchmarks

**3️⃣ Visualization & Reporting (Power BI)**

-  Developed interactive dashboard including:

-  KPI summary cards

-  Clustered bar charts for role-based compensation

-  Doughnut charts to compare Remote and Non-remote Jobs

-  Line and area charts for salary trends

-  ArcGIS maps for geographic job concentration

-  Matrixes to compare Job and Skill trends and compensation

-  Implemented slicers, bookmarks, Numerical and Field Parameters and navigation for usability

-  Applied conditional formatting and visual hierarchy for clarity

<br><br>

## Key Insights

<img width="1920" height="1080" alt="DATA JOBS SALARY ADJUSTABLE 2 0" src="https://github.com/user-attachments/assets/4d9c8632-1d0e-49b4-ad64-39497221c577" />
<br><br>

-  **Compensation is role-stratified:** Specialized and senior data roles consistently command higher pay.

-  **Geography matters:** High-paying roles cluster in specific metro areas, though remote roles partially reduce geographic constraints.

-  **Market structure outweighs titles:** Role function and market demand explain compensation differences more than job naming conventions.

-  **Remote vs on-site dynamics differ:** Salary and demand patterns vary meaningfully between remote and location-based roles. On-site roles also greatly outweigh postings or Remote roles

-  **Skill Distribution in regards to compenstion:** Certain Niche or low supply skills have higher compensation.
<br><br>


## Recommendations (NOTE - These claims are hypotheses influenced by industry context as opposed to data driven conclusions)
-  With the onset of COVID, remote jobs sky rocketed especially for computer based roles such as most Data Jobs. However the visual [DEGREE, REMOTE AND JOB TYPES.PNG] found in [POWER_BI/DAX & QUERY VISUALS] on the main repo page at this link [https://github.com/dareoyeleke/labor-market-analytics-data-jobs/blob/main/POWER_BI/DAX%20%26%20QUERY%20VISUALS%20/SALARY%20VS%20SKILL%20COUNT.png], shows a 13% demand of job postings are remote. While not included as part of this study, one can assume a higher preference of remote jobs for Data roles for the genera population. Companies should consider more hybrid positions for Data facing roles at the very least or cater more job postings to be remote to potentially reduce employee stress and churn over time.
  
-  Fostering career growth and matching compensation. Companies should endeavor to match the skill and experience level of Senior level roles with more compensation, as shown in the visual [POWER_BI/DAX & QUERY VISUALS/JOB TITLE, ROLE, COMPANY, SALARY (TOP 10).PNG] at [https://github.com/dareoyeleke/labor-market-analytics-data-jobs/blob/main/POWER_BI/DAX%20%26%20QUERY%20VISUALS%20/JOB%20TITLE%2C%20ROLE%2C%20COMPANY%2C%20SALARY%20(TOP%2010).PNG] -  Context implies Senior positions are more experienced or skilled, and require more skill than the non-senior positions, the compensation doesn't match the demand.  For difference in job posting according to seniority, the differences are as such Data Analyst(97,519 at 86%), Data Scientists(75,933 at 77%) and Data Engineers(98,386 at 76%). With Median difference in compensation as such Data Analyst ($20,000 at 19%), Data Scientists($30,743 at 20%) and Data Engineers ($12,280 at 9%). There is a huge difference in postings between Senior positions and compensation, with 76% - 86% difference in position according to seniority, with 9% - 20% median difference in compensation.


<br><br>
## Dashboard Capabilities

**The Power BI dashboard enables users to:**

-  Compare salaries across roles and locations

-  Identify high-demand, high-paying data roles

-  Explore geographic concentration of job postings

-  Filter insights dynamically by role and region

(Representative dashboard screenshots are included in the repository.)

### Additional visuals Catered to US Data Analysts enable us to: 

-  Compare Trends in skills and required number of possesed skills for highest and lowest paying jobs

-  Compare skill demands across jobs as well as skill compensation

-  Compare demand in remote vs on-site jobs

-  Visualize how proposed job roles as opposed to naming conventions reflect compensation
<br><br>

## Tools & Technologies 🧰

-  SQL 🧮: PostgreSQL (CTEs, joins, aggregations) 

-  BI & Analytics: Power BI, Power Query, DAX

-  Visualization: ArcGIS Maps 🌍, KPI visuals, trend charts

-  Workflow: GitHub version control, reproducible queries

<br><br>

## ⚙️ How to Reproduce
### Requirements

-  Access Link [https://lukeb.co/sql_jobs_db]

-  Jupyter Notebook for SQL notebook [https://github.com/dareoyeleke/labor-market-analytics-data-jobs/blob/main/US%20Data%20Analyst%20Jobs%20Query%20Results.ipynb] for queries used

-  PowerBi for Visualization 

-  Workspace Link -[https://lukeb.co/sql_jobs_db]-  Includes dim tables and allows queries to be run on full Database containing all 497 thousand rows of Data and also allows exporting of csv's for visual creation. 
<br><br>

## Steps

-  SQL notebook contains queries and WorkSpace link -[https://lukeb.co/sql_jobs_db]- can be used to derive data by running queries from SQL notebook

-  Results from Query can be exported to csv to create Power Bi Visuals 

-  Full CSV's data source can be loaded into PowerBI for remaining Visual and Dashboard Creation

-  The following Visuals (All in the main repository file) were created with the queries from the SQL notebook linked above
    -    Top 10 Salaries.PNG
    -    Top 10 Skill Counts.PNG
    -    Top Skills for Top Paying Data Analyst Jobs.PNG
    -    Top and Bottom 5 Average Salaries Per skill Count.PNG
    -    Top and bottom 5 Average Salary per Skill.PNG

-  The remaining visuals (Dashboard, Median Hourly and Yearly Salary i.e Visual 2 on this page) were created using the Dim tables attached in the Data Source above

-  Explore queries and modify filters for deeper analysis
<br><br>

## 📌 Portfolio Note

This repository consolidates prior job-market SQL analysis and Power BI dashboard work into a single, canonical analytics project designed for portfolio and professional review.

### 📎 Author

[Dare Oyeleke]
Data Analyst | Healthcare Analytics
[(https://www.linkedin.com/in/dareoyeleke/)] | [(https://github.com/dareoyeleke)]

