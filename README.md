# 📊 Labor Market Analytics: Data Jobs

## SQL · Power BI · Workforce & Compensation Insights

### Executive Summary

<img width="1920" height="1080" alt="DATA JOBS DASHBOARD 2 0" src="https://github.com/user-attachments/assets/0d6a31da-55ef-44a3-af7b-1aba138d5bc6" />


```
This project delivers an end-to-end labor market analysis of the data jobs ecosystem using 497K+ real-world job postings.
The analysis focuses on compensation trends, role distribution, skill demand, and geographic concentration,
transforming raw job data into decision-ready workforce insights.
```
Check it the raw code here (https://github.com/dareoyeleke/labor-market-analytics-data-jobs/blob/main/sql_basics_project.ipynb)

Using SQL for data extraction and transformation and Power BI for interactive reporting, the project demonstrates how analytics teams can support hiring strategy, workforce planning, and market benchmarking without overengineering or black-box modeling.

**Business Questions**

This analysis was designed to answer practical, stakeholder-relevant questions such as:

-  Which data roles command the highest compensation?

-  How does pay vary by role type, location, and job category?

-  Where are data jobs geographically concentrated?

-  How do remote and location-based roles differ in salary structure?

-  What insights can inform hiring strategy and workforce planning?

**Data Overview**

-  Records: 497,000+ job postings

-  Domain: Data & Analytics labor market

-  Source: Public job-posting datasets

-  Key fields: Role title, salary, location, employment type

-  Salary data was standardized to enable consistent cross-role and geographic comparisons.

### Methodology

**1️⃣ Data Extraction & Transformation (SQL)**

-  Queried and analyzed job-posting data using PostgreSQL

**Applied:**

-  Common Table Expressions (CTEs)

-  Complex joins

-  Aggregations and filters

-  Standardized salary formats (hourly vs annual)

-  Structured role categories for consistent analysis

**2️⃣ Analytical Modeling (Power BI)**

-  Imported cleaned SQL outputs into Power BI

-  Modeled relationships and measures using:

-  Power Query

-  DAX

**Built calculated measures for:**

-  Average salary

-  Job counts

-  Geographic comparisons

-  Role-level benchmarks

**3️⃣ Visualization & Reporting (Power BI)**

-  Developed an interactive dashboard including:

-  KPI summary cards

-  Clustered bar charts for role-based compensation

-  Line and area charts for salary trends

-  ArcGIS maps for geographic job concentration

-  Implemented slicers, bookmarks, and navigation for usability

-  Applied conditional formatting and visual hierarchy for clarity

**Key Insights**

<img width="1920" height="1080" alt="DATA JOBS SALARY ADJUSTABLE 2 0" src="https://github.com/user-attachments/assets/4d9c8632-1d0e-49b4-ad64-39497221c577" />


-  Compensation is role-stratified: Specialized and senior data roles consistently command higher pay.

-  Geography matters: High-paying roles cluster in specific metro areas, though remote roles partially reduce geographic constraints.

-  Market structure outweighs titles: Role function and market demand explain compensation differences more than job naming conventions.

-  Remote vs on-site dynamics differ: Salary and demand patterns vary meaningfully between remote and location-based roles.

### Dashboard Capabilities

**The Power BI dashboard enables users to:**

-  Compare salaries across roles and locations

-  Identify high-demand, high-paying data roles

-  Explore geographic concentration of job postings

-  Filter insights dynamically by role and region

(Representative dashboard screenshots are included in the repository.)

### Tools & Technologies 🧰

-  SQL 🧮: PostgreSQL (CTEs, joins, aggregations) 

-  BI & Analytics: Power BI, Power Query, DAX

-  Visualization: ArcGIS Maps 🌍, KPI visuals, trend charts

-  Workflow: GitHub version control, reproducible queries

## ⚙️ How to Reproduce
### Requirements

-  PostgreSQL

-  VSCode (optional)

-  psql or a SQL GUI client

## Steps

-  Clone this repository

-  Load the dataset into PostgreSQL

-  Run the SQL files in the /sql folder

-  Explore queries and modify filters for deeper analysis
