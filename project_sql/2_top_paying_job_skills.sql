/* 
Question: What skills are required for the top-paying data analyst jobs?
-Use the top 10 highest-pating Data analyst jobs fro first query
-Add specific skills required for that jobs
-Why? It provides a detailed look at which high-paying jobs demand cerain skills,
    helping job seekers underdstand which skills to develop which aligns with top salaries 
 */
WITH top_10_highest_paying_jobs AS(
    SELECT 
        job_id,
        job_title,
        salary_year_avg
    FROM
        job_postings_fact
    LEFT JOIN company_dim ON
        company_dim.company_id = job_postings_fact.company_id
    WHERE
        job_title_short = 'Data Analyst' AND
        job_location = 'Anywhere' AND salary_year_avg IS NOT NULL
    ORDER BY salary_year_avg DESC
    LIMIT 10
)

SELECT DISTINCT skills_dim.skills, 
    COUNT(skills_dim.skills) AS popularity
FROM top_10_highest_paying_jobs
LEFT JOIN skills_job_dim ON
    top_10_highest_paying_jobs.job_id = skills_job_dim.job_id
LEFT JOIN skills_dim ON
    skills_job_dim.skill_id = skills_dim.skill_id
GROUP BY skills_dim.skills
ORDER BY popularity DESC
LIMIT 5;