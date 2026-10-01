/*
What are the top 10 Data Analyst & Data Scientist jobs across India & ROW?
- Catgorise the top 10 jobs based on Average Yearly Salary.
- Remove the blanks from Average Yearly Salary.
- Understand the reasons of being in Top 10.
*/

-- Query 1.1: Top 10 Data Scientist jobs in India based on Average Salary

SELECT jb.job_title_short AS Job_Title,
       jb.job_id AS Job_ID,
       jb.job_title AS Job_Titles,
       jb.salary_year_avg AS Average_Salary,
       com.name AS Company_Name,
       jb.job_location AS Job_Location,
       jb.job_schedule_type AS Schedule_Type,
       jb.job_work_from_home AS WFH,
       jb.job_health_insurance AS Insurance,
       jb.job_no_degree_mention AS Degree,
       COUNT(sk.skills) AS Skill_Count    
FROM job_postings_fact AS jb
LEFT JOIN skills_job_dim AS skjb ON jb.job_id=skjb.job_id
LEFT JOIN company_dim AS com ON jb.company_id=com.company_id
LEFT JOIN skills_dim AS sk ON skjb.skill_id=sk.skill_id
WHERE (job_title_short = 'Data Scientist') AND
(job_country = 'India') AND (salary_year_avg IS NOT NULL)
GROUP BY jb.Job_ID,Job_Title,Company_Name,WFH,Insurance,Schedule_Type,Job_Location,Degree,Average_Salary
ORDER BY Average_Salary DESC,Skill_Count DESC
LIMIT 10;

--Query 1.2: Top 10 Data Analyst jobs in India based on Average Salary

SELECT jb.job_title_short AS Job_Title,
       jb.job_id AS Job_ID,
       jb.job_title AS Job_Titles,
       jb.salary_year_avg AS Average_Salary,
       com.name AS Company_Name,
       jb.job_location AS Job_Location,
       jb.job_schedule_type AS Schedule_Type,
       jb.job_work_from_home AS WFH,
       jb.job_health_insurance AS Insurance,
       jb.job_no_degree_mention AS Degree,
       COUNT(sk.skills) AS Skill_Count    
FROM job_postings_fact AS jb
LEFT JOIN skills_job_dim AS skjb ON jb.job_id=skjb.job_id
LEFT JOIN company_dim AS com ON jb.company_id=com.company_id
LEFT JOIN skills_dim AS sk ON skjb.skill_id=sk.skill_id
WHERE (job_title_short = 'Data Analyst') AND
(job_country = 'India') AND (salary_year_avg IS NOT NULL)
GROUP BY jb.Job_ID,Job_Title,Company_Name,WFH,Insurance,Schedule_Type,Job_Location,Degree,Average_Salary
ORDER BY Average_Salary DESC,Skill_Count DESC
LIMIT 10;

----Query 1.3: Top 10 Data Scientist jobs in Rest of the World based on Average Salary

SELECT jb.job_title_short AS Job_Title,
       jb.job_id AS Job_ID,
       jb.job_title AS Job_Titles,
       jb.salary_year_avg AS Average_Salary,
       com.name AS Company_Name,
       jb.job_location AS Job_Location,
       jb.job_schedule_type AS Schedule_Type,
       jb.job_work_from_home AS WFH,
       jb.job_health_insurance AS Insurance,
       jb.job_no_degree_mention AS Degree,
       COUNT(sk.skills) AS Skill_Count    
FROM job_postings_fact AS jb
LEFT JOIN skills_job_dim AS skjb ON jb.job_id=skjb.job_id
LEFT JOIN company_dim AS com ON jb.company_id=com.company_id
LEFT JOIN skills_dim AS sk ON skjb.skill_id=sk.skill_id
WHERE (job_title_short = 'Data Scientist') AND
(job_country NOT IN ('India')) AND (salary_year_avg IS NOT NULL)
GROUP BY jb.Job_ID,Job_Title,Company_Name,WFH,Insurance,Schedule_Type,Job_Location,Degree,Average_Salary
ORDER BY Average_Salary DESC,Skill_Count DESC
LIMIT 10;

------Query 1.4: Top 10 Data Analyst jobs in Rest of the World based on Average Salary

SELECT jb.job_title_short AS Job_Title,
       jb.job_id AS Job_ID,
       jb.job_title AS Job_Titles,
       jb.salary_year_avg AS Average_Salary,
       com.name AS Company_Name,
       jb.job_location AS Job_Location,
       jb.job_schedule_type AS Schedule_Type,
       jb.job_work_from_home AS WFH,
       jb.job_health_insurance AS Insurance,
       jb.job_no_degree_mention AS Degree,
       COUNT(sk.skills) AS Skill_Count    
FROM job_postings_fact AS jb
LEFT JOIN skills_job_dim AS skjb ON jb.job_id=skjb.job_id
LEFT JOIN company_dim AS com ON jb.company_id=com.company_id
LEFT JOIN skills_dim AS sk ON skjb.skill_id=sk.skill_id
WHERE (job_title_short = 'Data Analyst') AND
(job_country NOT IN ('India')) AND (salary_year_avg IS NOT NULL)
GROUP BY jb.Job_ID,Job_Title,Company_Name,WFH,Insurance,Schedule_Type,Job_Location,Degree,Average_Salary
ORDER BY Average_Salary DESC,Skill_Count DESC
LIMIT 10;




