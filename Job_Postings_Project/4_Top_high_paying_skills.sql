/*
What are the top high paid skills for Data Analyst & Data Scientist jobs across India & ROW?
- Categorise the top 10 skills based on average yearly salary aggregation.
*/
-- Query 4.1: Top high paying skills for Data Scientist jobs in India.

SELECT sk.skills,
       ROUND(AVG(jb.salary_year_avg),0) AS Salary_Avg
FROM job_postings_fact AS jb
LEFT JOIN skills_job_dim AS skjb ON jb.job_id = skjb.job_id
INNER JOIN skills_dim AS sk ON skjb.skill_id = sk.skill_id
WHERE jb.job_country = ('India') AND jb.job_title_short= 'Data Scientist' AND jb.salary_year_avg IS NOT NULL
GROUP BY sk.skills
ORDER BY Salary_Avg DESC
LIMIT 10;

-- Query 4.2: Top high paying skills for Data Analyst jobs in India.

SELECT sk.skills,
       ROUND(AVG(jb.salary_year_avg),0) AS Salary_Avg
FROM job_postings_fact AS jb
LEFT JOIN skills_job_dim AS skjb ON jb.job_id = skjb.job_id
INNER JOIN skills_dim AS sk ON skjb.skill_id = sk.skill_id
WHERE jb.job_country = ('India') AND jb.job_title_short= 'Data Analyst' AND jb.salary_year_avg IS NOT NULL
      AND jb.job_work_from_home = True
GROUP BY sk.skills
ORDER BY Salary_Avg DESC
LIMIT 10;

-- Query 4.3: Top high paying skills for Data Scientist jobs in Rest of the World.

SELECT sk.skills,
       ROUND(AVG(jb.salary_year_avg),0) AS Salary_Avg
FROM job_postings_fact AS jb
LEFT JOIN skills_job_dim AS skjb ON jb.job_id = skjb.job_id
INNER JOIN skills_dim AS sk ON skjb.skill_id = sk.skill_id
WHERE (jb.job_country NOT IN ('India')) AND jb.job_title_short= 'Data Scientist'AND jb.salary_year_avg IS NOT NULL
GROUP BY sk.skills
ORDER BY Salary_Avg DESC
LIMIT 10;

-- Query 4.3: Top high paying skills for Data Analyst jobs in Rest of the World.

SELECT sk.skills,
       ROUND(AVG(jb.salary_year_avg),0) AS Salary_Avg
FROM job_postings_fact AS jb
LEFT JOIN skills_job_dim AS skjb ON jb.job_id = skjb.job_id
INNER JOIN skills_dim AS sk ON skjb.skill_id = sk.skill_id
WHERE (jb.job_country NOT IN ('India')) AND (jb.job_title_short= 'Data Analyst') AND jb.salary_year_avg IS NOT NULL
GROUP BY sk.skills
ORDER BY Salary_Avg DESC
LIMIT 10;