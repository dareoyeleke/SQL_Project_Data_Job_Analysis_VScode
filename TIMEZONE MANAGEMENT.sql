-- simple queries showcase use of DATE/TIME functions such as NOW(), TIMESTAMP, DATE with a cast operator (::), and TIME ZONE
SELECT job_posted_date
FROM job_postings_fact
LIMIT 10;


SELECT 
    '2023-02-19'::DATE, '123':: INT, 'true'::BOOL, '3.14':: REAL;
SELECT 
    '2025-10-20 03:20:45':: DATE;
SELECT
     NOW():: TIMESTAMP;

SELECT 
    job_title_short AS title,
    job_location AS location,
    job_posted_date:: DATE AS date
FROM 
    job_postings_fact;

SELECT 
    job_title_short AS title,
    job_location AS location,
    job_posted_date AT TIME ZONE 'UTC' AT TIME ZONE 'EST'  AS date_time
FROM 
    job_postings_fact
LIMIT 5 
