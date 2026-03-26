/* 
Question: What are the top skills based on the salary?
- Look at the average salary essociated with each skill for data analytics positions 
- Focus on roles with specific salaries, regardless of location
- Why? It reveals how different skills impact salary levels for Data Analysts
  and helps identify the most financial rewarding skills to acquire or improve
 */

SELECT 
    skills_dim.skills,
    ROUND(AVG(job_postings_fact.salary_year_avg)) as average_salary
FROM job_postings_fact
INNER JOIN skills_job_dim ON
    job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON
    skills_job_dim.skill_id = skills_dim.skill_id
WHERE job_postings_fact.job_title_short = 'Data Analyst' AND job_postings_fact.salary_year_avg IS NOT NULL
GROUP BY
    skills_dim.skills
ORDER BY average_salary DESC
LIMIT 25;