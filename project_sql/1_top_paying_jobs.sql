/* 
Question: What are the top paying data analyst jobs?
-Identify the top paying 10 highest-paying Data Analyst roles that are available remotely.
-Focuses on jobs with specific job salaries(Not null values).
-Why? Hightlight the top paying opportunuties for Data analysts, offering insights into employement opportunities.
 */

SELECT 
    job_id,
    company_dim.name AS company_name,
    job_title,
    job_location,
    job_schedule_type,
    salary_year_avg,
    job_posted_date
FROM
    job_postings_fact
LEFT JOIN company_dim ON
    company_dim.company_id = job_postings_fact.company_id
WHERE
    job_title_short = 'Data Analyst' AND
    job_location = 'Anywhere' AND salary_year_avg IS NOT NULL
ORDER BY salary_year_avg DESC
LIMIT 10;
