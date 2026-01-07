--query to create a temporary result set AS january_jobs with a subquery
SELECT * 
FROM (
    SELECT *
    FROM job_postings_fact
    WHERE EXTRACT(MONTH FROM job_posted_date) = 1
) AS january_jobs;


-- Query with a CTE to create temporary TABLE january_jobs 
WITH january_jobs AS (
    SELECT *
    FROM job_postings_fact
    WHERE EXTRACT (MONTH FROM job_posted_date) = 1
)

SELECT * 
FROM january_jobs; 



SELECT 
    company_id,
    name AS company_name
FROM 
    company_dim
WHERE 
    company_id IN
 (
    SELECT 
        company_id
    FROM
        job_postings_fact
    WHERE
        job_no_degree_mention = true 
)
ORDER BY company_id; 


-- QUERY to use CTE to get temporary TABLE for companies with most job opening, i.e most job postings per company
WITH company_job_count AS
(
SELECT 
    company_id,
    COUNT(company_id)
FROM 
    job_postings_fact
GROUP BY
    company_id
)
SELECT *
FROM company_job_count;

WITH company_job_count AS
(
SELECT 
    company_id,
    COUNT(company_id) AS total_jobs
FROM 
    job_postings_fact jpf
GROUP BY
    company_id
)
SELECT c.name AS company_name,
        cj.total_jobs
FROM company_dim c
LEFT JOIN company_job_count cj ON c.company_id = cj.company_id
ORDER BY cj.total_jobs DESC;
