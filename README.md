# sql_queries_colab
SQL queries using google colab and %sql magic along with python scripting to import pandas, os, matplot for data parsing with ease


# INTRODUCTION
By Diving into the job market, and focusing on data analyst role, this project explores top paying jobs, in-demand skills and the intersecrtion between high demand skills and high salaries in data analytics. Check it out here ([sql_basics_project.ipynb](https://github.com/dareoyeleke/sql_queries_colab/blob/da219484324013f37575926119d1bc79ef830913/sql_basics_project.ipynb))



# BACKGROUND
The Data I used for this project, while imported from my google drive was from (https://lukebarousse.com/sql)
### The questions I wanted to answer through my queries were 
1) What are the top paying Data-analyst jobs?
2) What skills are required for these top-paying jobs?
3) What skills are most in demand for data analysts?
4) Which skills are associated with higher salaries
5) What skills are most optimal to learn

# TOOLS I USED
For my dive into the data analyst job market, I used several key tools including 
- **SQL**: The most important tool for my analysis, both implemented in VScode and Google colab IDE
- **PostgreSQL**: The database management system used to handle the job postings data
- **VScode**: One of the IDE's used to manage and execute SQL queries as well as integrate with postgreSQL
- **Google Colab** : Another IDE used while on the move and not having access to my PC, used in accordance with python to import files from Drive and connect to postgreSQL and run SQL code using %sql magic
- **Python**: Used to import files from drive and access PostgreSQL as well as use %sql magic to run SQL queries on colab
- **bash** : used to create a local directory on colab to store the imported files from drive 
- **Git&Github** : Used for collaboration and project tracking to share my SQL queries from both IDE's.

# The ANALYSIS
Each query in this project is aimed at investigating different aspects of the Data analyst job market 
1) **Top paying Data Analyst Jobs** - To identify the highest paying roles by filtering data analyst positions by average yearly salary, degree requirement and location.
```sql
SELECT
  name AS company_name,
  job_id,
  job_title,
  job_location,
  job_schedule_type,
  CAST(salary_year_avg AS INTEGER),
  job_posted_date::DATE
FROM
  job_postings_fact jpf
LEFT JOIN company_dim cd ON jpf.company_id = cd.company_id
WHERE job_title_short = 'Data Analyst' AND (job_location = 'United States' OR job_location = 'Anywhere') AND job_no_degree_mention = TRUE AND salary_year_average IS NOT NULL 
ORDER BY salary_year_avg DESC
LIMIT 100
```
The results yielded were 
- **Wide Salary range** From $40 - $650 thousand USD indicating significant potential salaries in the field
- **Diverse employers** From Tech companies to law firms to even job recruiters, different sectors of the economy need and pay well for Data Analyst skills
- **Job Variety** Along with diverse employers, diverse job titles show diverse job roles in finance, tech, management to name a few 
2) **Top paying skills** -  Building on the last query, adding the specific skills needed for said jobs to help understand what skills are required to get those jobs to encourage guided effort towaards building those skills
```sql
WITH data_analyst_jobs AS
(
SELECT
  name AS company_name,
  job_id,
  job_title_short,
  job_location,
  job_no_degree_mention,
  job_schedule_type,
  CAST(salary_year_avg AS INTEGER),
  job_posted_date::DATE
FROM
  job_postings_fact jpf
LEFT JOIN company_dim cd ON jpf.company_id = cd.company_id
WHERE
  job_title_short = 'Data Analyst'
  AND job_location = 'United States'
  AND job_no_degree_mention = TRUE
ORDER BY
  salary_year_avg DESC
LIMIT 100
)
SELECT
  skills,
  type,
  company_name,
  job_title_short,
  job_no_degree_mention,
  job_location,
  CAST(salary_year_avg AS INTEGER),
  job_posted_date::DATE
FROM skills_job_dim sjd
INNER JOIN skills_dim sd ON sd.skill_id = sjd.skill_id
INNER JOIN data_analyst_jobs daj ON sjd.job_id = daj.job_id
WHERE
  job_title_short = 'Data Analyst'
  AND job_location = 'United States'
  AND job_no_degree_mention = TRUE
  AND salary_year_avg IS NOT NULL
# would be 2025, but no data inputs for current year
ORDER BY
  salary_year_avg DESC
```
The results yielded are 
- The top skills are SQL, python and python libraries and Power BI across the top three salaries extracted with the query above 
 
# WHAT I LEARNED

CONCLUSIONS 
