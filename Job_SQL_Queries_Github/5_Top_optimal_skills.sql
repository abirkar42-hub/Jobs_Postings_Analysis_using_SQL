/*
What are the optimal skills for Data Analyst & Data Scientist jobs across India & ROW?
- Categorise the optimal skills based on jobs counts and average yearly salary aggregation for Data Scientists & Data Analysts
*/

-- Query 5.1: Top 10 optimal skills for Data Scientist jobs in India.

SELECT sk.skill_id,
       sk.skills,
       COUNT(jb.Job_ID) AS Count_Jobs,
       AVG(salary_year_avg) AS Average_Salary
FROM job_postings_fact AS jb
INNER JOIN skills_job_dim AS skjb ON jb.job_id = skjb.job_id
INNER JOIN skills_dim AS sk ON skjb.skill_id = sk.skill_id
WHERE (jb.job_country = ('India')) AND jb.job_title_short= 'Data Scientist' AND jb.salary_year_avg IS NOT NULL  
GROUP BY sk.skill_id, sk.skills 
ORDER BY Count_Jobs DESC, Average_Salary DESC
LIMIT 10;

-- Query 5.2: Top 10 optimal skills for Data Analyst jobs in India.

SELECT sk.skill_id,
       sk.skills,
       COUNT(jb.Job_ID) AS Count_Jobs,
       AVG(salary_year_avg) AS Average_Salary
FROM job_postings_fact AS jb
INNER JOIN skills_job_dim AS skjb ON jb.job_id = skjb.job_id
INNER JOIN skills_dim AS sk ON skjb.skill_id = sk.skill_id
WHERE (jb.job_country = ('India')) AND jb.job_title_short= 'Data Analyst' AND jb.salary_year_avg IS NOT NULL  
GROUP BY sk.skill_id, sk.skills 
ORDER BY Count_Jobs DESC, Average_Salary DESC
LIMIT 10;

-- Query 5.3: Top 10 optimal skills for Data Scientist jobs in India.

SELECT sk.skill_id,
       sk.skills,
       COUNT(jb.Job_ID) AS Count_Jobs,
       AVG(salary_year_avg) AS Average_Salary
FROM job_postings_fact AS jb
INNER JOIN skills_job_dim AS skjb ON jb.job_id = skjb.job_id
INNER JOIN skills_dim AS sk ON skjb.skill_id = sk.skill_id
WHERE (jb.job_country NOT IN ('India')) AND jb.job_title_short= 'Data Scientist' AND jb.salary_year_avg IS NOT NULL  
GROUP BY sk.skill_id, sk.skills 
ORDER BY Count_Jobs DESC, Average_Salary DESC
LIMIT 10;

-- Query 5.4: Top 10 optimal skills for Data Analyst jobs in India.
SELECT sk.skill_id,
       sk.skills,
       COUNT(jb.Job_ID) AS Count_Jobs,
       AVG(salary_year_avg) AS Average_Salary
FROM job_postings_fact AS jb
INNER JOIN skills_job_dim AS skjb ON jb.job_id = skjb.job_id
INNER JOIN skills_dim AS sk ON skjb.skill_id = sk.skill_id
WHERE (jb.job_country NOT IN ('India')) AND jb.job_title_short= 'Data Analyst' AND jb.salary_year_avg IS NOT NULL  
GROUP BY sk.skill_id, sk.skills 
ORDER BY Count_Jobs DESC, Average_Salary DESC
LIMIT 10;