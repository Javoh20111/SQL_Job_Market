/* 
Question: What skills are required for the top-paying data analyst jobs?
-Use the top 10 highest-pating Data analyst jobs fro first query
-Add specific skills required for that jobs
-Why? It provides a detailed look at which high-paying jobs demand cerain skills,
    helping job seekers underdstand which skills to develop which aligns with top salaries 
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