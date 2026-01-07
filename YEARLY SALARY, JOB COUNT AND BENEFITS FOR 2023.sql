SELECT * FROM job_postings_fact
ORDER BY RANDOM()
LIMIT 10;

--query to find the average salary by year and by hour for job postings after a certain date, and group by the job schedule type
SELECT
    salary_year_avg, salary_hour_avg,job_schedule_type
FROM job_postings_fact
WHERE job_posted_date > '2023-06-01'
GROUP BY salary_year_avg, salary_hour_avg,job_schedule_type
ORDER BY job_schedule_type;

--this is to find unique count of job postings for each month in 2023, group by and order by month using the EXTRACT function
SELECT 
    COUNT(DISTINCT(job_id)) AS no_of_jobs, EXTRACT(MONTH FROM job_posted_date)  AS month_of_year
FROM job_postings_fact
WHERE job_posted_date BETWEEN '2023-01-01' AND '2023-12-01'
GROUP BY EXTRACT(MONTH FROM job_posted_date) 
ORDER BY EXTRACT(MONTH FROM job_posted_date);



--this is to find companies that posted jobs offering health insurance, where postings were made in the second quater of 2023, by joining two tables to get all the required information
SELECT 
    c.name,j.job_health_insurance, j.job_posted_date
FROM
    job_postings_fact j
FULL JOIN company_dim c ON j.company_id = c.company_id
WHERE j.job_health_insurance = 'true' AND j.job_posted_date BETWEEN '2023-04-01' AND '2023-06-01';

 
