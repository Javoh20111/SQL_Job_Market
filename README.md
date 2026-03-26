# SQL Advanced: Data Analyst Job Market Analysis

A comprehensive SQL project analyzing the data analyst job market to identify top-paying positions, in-demand skills, and optimal career development strategies.

## Project Overview

This project leverages advanced SQL queries to analyze job postings, company information, and required skills for Data Analyst positions. The analysis provides actionable insights for job seekers looking to understand salary trends, skill requirements, and career opportunities in the data analytics field.

## Project Structure

```
sql_advanced/
├── README.md                    # Project documentation
├── csv_files/                   # Raw data files
│   ├── company_dim.csv
│   ├── job_postings_fact.csv
│   ├── skills_dim.csv
│   └── skills_job_dim.csv
├── project_sql/                 # Analysis queries
│   ├── 1_top_paying_jobs.sql
│   ├── 2_top_paying_job_skills.sql
│   ├── 3_most_in_demand_skills.sql
│   ├── 4_top_skills_based_on_salary.sql
│   └── 5_optimal_skills.sql
└── sql_load/                    # Database setup scripts
    ├── 1_create_database.sql
    ├── 2_create_tables.sql
    ├── 3_modify_tables.sql
    └── sql_advanced.code-workspace
```

## Database Schema

### Tables

- **company_dim**: Contains company information (company_id, name, links, thumbnail)
- **job_postings_fact**: Contains job posting details (job_id, title, location, salary, schedule type, etc.)
- **skills_dim**: Contains skill information (skill_id, skill name, type)
- **skills_job_dim**: Junction table linking jobs to required skills (job_id, skill_id)

## Queries

### 1. Top Paying Data Analyst Jobs
**File:** `1_top_paying_jobs.sql`

**Question:** What are the top paying data analyst jobs?

**Purpose:** Identifies the top 10 highest-paying Data Analyst roles available remotely with specified salaries.

**Key Insights:**
- Highlights employment opportunities with the best financial compensation
- Focuses on remote positions for maximum flexibility
- Only considers jobs with defined salary information

**Output Columns:**
- Job ID, Company Name, Job Title, Location, Schedule Type, Annual Salary, Posted Date

---

### 2. Top Paying Job Skills
**File:** `2_top_paying_job_skills.sql`

**Question:** What skills are required for the top-paying data analyst jobs?

**Purpose:** Analyzes the top 10 highest-paying positions to identify which skills are most commonly required.

**Key Insights:**
- Reveals skill requirements for top-paying positions
- Helps job seekers understand which skills align with highest salaries
- Provides a roadmap for skill development targeting lucrative roles

**Output Columns:**
- Skill Name, Popularity (count of occurrences in top 10 jobs)

---

### 3. Most In-Demand Skills
**File:** `3_most_in_demand_skills.sql`

**Question:** What are the most in-demand skills for data analysts?

**Purpose:** Identifies the top 10 skills most frequently required across all Data Analyst job postings.

**Key Insights:**
- Shows which skills have the highest job market demand
- Useful for understanding baseline skill requirements
- Helps prioritize learning based on market needs

**Output Columns:**
- Skill Name, Demand Count

---

### 4. Top Skills Based on Salary
**File:** `4_top_skills_based_on_salary.sql`

**Question:** What are the top skills based on salary?

**Purpose:** Analyzes average salary associated with each skill for Data Analyst positions.

**Key Insights:**
- Reveals financial impact of different skills on salary levels
- Identifies the most financially rewarding skills to acquire
- Shows correlation between skill expertise and compensation

**Output Columns:**
- Skill Name, Average Salary

---

### 5. Optimal Skills to Learn
**File:** `5_optimal_skills.sql`

**Question:** What are the most optimal skills to learn?

**Purpose:** Combines demand and salary data to identify skills that are both high-demand and high-paying.

**Key Insights:**
- Provides balanced view of job security (demand) and financial benefits (salary)
- Offers strategic guidance for career development
- Identifies the "sweet spot" skills for Data Analysts

**Output Columns:**
- Skill ID, Skill Name, Demand Count, Average Salary

---

## Getting Started

### Prerequisites
- PostgreSQL or compatible SQL database
- SQL client (pgAdmin, DBeaver, VS Code SQL extension, etc.)

### Setup Instructions

1. **Create Database and Tables**
   ```bash
   # Run the setup scripts in order
   psql -U postgres -f sql_load/1_create_database.sql
   psql -U postgres -f sql_load/2_create_tables.sql
   psql -U postgres -f sql_load/3_modify_tables.sql
   ```

2. **Load Data**
   - Import CSV files from `csv_files/` directory into respective tables
   - Use PostgreSQL `COPY` command or your SQL client's import feature

3. **Run Analyses**
   - Execute queries in `project_sql/` folder sequentially or individually
   - Review results to gain insights into the job market

## Key Findings Summary

This analysis helps answer critical questions for Data Analysts:

- 💰 **Top Opportunities:** Where are the highest-paying jobs?
- 🎯 **Target Skills:** What skills lead to top-paying positions?
- 📊 **Market Demand:** Which skills are most sought after?
- 💵 **Salary Impact:** Which skills command the highest salaries?
- 🚀 **Career Strategy:** What's the optimal path for skill development?

## Technologies Used

- **SQL:** PostgreSQL
- **Data Format:** CSV
- **Analysis Approach:** Relational database queries with CTEs and joins

## Query Techniques

- **Common Table Expressions (CTEs):** For complex multi-step analysis
- **INNER/LEFT JOINS:** For combining data across multiple tables
- **Aggregation Functions:** COUNT, AVG, ROUND for data summarization
- **GROUP BY & ORDER BY:** For sorting and organizing results
- **WHERE Clauses:** For filtering relevant data

## Future Enhancements

- Add time-based analysis (salary trends over time)
- Include geographic analysis (salary by location)
- Analyze skill combinations and their salary impact
- Create visualization dashboards
- Add job schedule type analysis (full-time vs contract)

## Notes

- All queries focus on Data Analyst positions
- Salary analysis only includes jobs with defined salary information
- Remote position analysis filters for 'Anywhere' location
- Demand metrics are based on job posting frequency

## Contributing

Feel free to modify and extend queries to answer additional business questions or test hypotheses about the job market.

## License

This project is for educational and analytical purposes.

---

**Last Updated:** March 26, 2026
