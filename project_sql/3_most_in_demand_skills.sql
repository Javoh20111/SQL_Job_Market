/* 
Question: What are the most in-demand skills for data analyst?
-Join job postings to inner join query similarly to query 2
-Identify the top 5 skills for a data analyst
- Focus on all job postings.
- Why? Provide insights to job seekers
 */

SELECT 
    skills_dim.skills,
    COUNT(skills_dim.skills) AS skills_demand
FROM job_postings_fact
INNER JOIN skills_job_dim ON
    job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON
    skills_job_dim.skill_id = skills_dim.skill_id
WHERE job_postings_fact.job_title_short = 'Data Analyst'
GROUP BY skills_dim.skills
ORDER BY skills_demand DESC
LIMIT 10;