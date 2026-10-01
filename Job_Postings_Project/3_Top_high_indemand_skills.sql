/*
What are the top in-demand skills for Data Analyst & Data Scientist jobs across India & ROW?
- Categorise the top 10 skills based on count of job postings.
*/

-- Query 3.1: Top in-demand skills for Data Scientist jobs in India.

SELECT sk.skills,
       COUNT(jb.Job_ID) AS Count_Jobs
FROM job_postings_fact AS jb
LEFT JOIN skills_job_dim AS skjb ON jb.job_id = skjb.job_id
LEFT JOIN skills_dim AS sk ON skjb.skill_id = sk.skill_id
WHERE jb.job_country = ('India') AND jb.job_title_short= 'Data Scientist'
GROUP BY sk.skills
ORDER BY Count_Jobs DESC
LIMIT 10;

-- Query 3.2: Top in-demand skills for Data Analyst jobs in India.

SELECT sk.skills,
       COUNT(jb.Job_ID) AS Count_Jobs
FROM job_postings_fact AS jb
LEFT JOIN skills_job_dim AS skjb ON jb.job_id = skjb.job_id
LEFT JOIN skills_dim AS sk ON skjb.skill_id = sk.skill_id
WHERE jb.job_country = ('India') AND jb.job_title_short= 'Data Analyst'
GROUP BY sk.skills
ORDER BY Count_Jobs DESC
LIMIT 10;

-- Query 3.3: Top in-demand skills for Data Scientist jobs in Rest of the world.

SELECT sk.skills,
       COUNT(jb.Job_ID) AS Count_Jobs
FROM job_postings_fact AS jb
LEFT JOIN skills_job_dim AS skjb ON jb.job_id = skjb.job_id
LEFT JOIN skills_dim AS sk ON skjb.skill_id = sk.skill_id
WHERE (jb.job_country NOT IN ('India')) AND jb.job_title_short= 'Data Scientist'
GROUP BY sk.skills
ORDER BY Count_Jobs DESC
LIMIT 10;

-- Query 3.4: Top in-demand skills for Data Analyst jobs in Rest of the world.

SELECT sk.skills,
       COUNT(jb.Job_ID) AS Count_Jobs
FROM job_postings_fact AS jb
LEFT JOIN skills_job_dim AS skjb ON jb.job_id = skjb.job_id
LEFT JOIN skills_dim AS sk ON skjb.skill_id = sk.skill_id
WHERE (jb.job_country NOT IN ('India')) AND (jb.job_title_short= 'Data Analyst')
GROUP BY sk.skills
ORDER BY Count_Jobs DESC
LIMIT 10;