-- query to organize jobs by salary as LOW,MEDIUM AND HIGH using different CASE WHEN statements 
SELECT * 
FROM 
    job_postings_fact
LIMIT 100; 

SELECT 
    job_title_short,salary_year_avg::INT,
CASE 
    WHEN salary_year_avg BETWEEN '50000' AND '75000' THEN 'LOW'
    WHEN salary_year_avg BETWEEN '75000' AND '150000' THEN 'STANDARD'
    WHEN salary_year_avg BETWEEN '150000' AND '500000' THEN 'HIGH'
    ELSE 'SPECIAL CASE'
END AS salary_range
FROM
    job_postings_fact
WHERE job_title_short = 'Data Analyst' AND salary_year_avg BETWEEN '65000' AND '100000'
ORDER BY salary_year_avg DESC;
