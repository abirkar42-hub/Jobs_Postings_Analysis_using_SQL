/*
What are the top skills associated with high paying Data Analyst & Data Scientist jobs across India & ROW?
- Catgorise the top 10 jobs based on Average Yearly Salary.
- Remove the blanks from Average Yearly Salary.
- Extract the skills associated with top high paying jobs.
*/

-- Query 2.1: Top skills for 10 high payings jobs in Data Scientist across India based on Average Salary

SELECT Top_jobs.*,
       sm.skills    
FROM (SELECT jb.job_title_short AS Job_Title,
       jb.job_id AS Job_ID,
       jb.job_title AS Job_Titles,
       jb.salary_year_avg AS Average_Salary,
       com.name AS Company_Name,
       jb.job_location AS Job_Location,
       jb.job_schedule_type AS Schedule_Type,
       jb.job_work_from_home AS WFH,
       jb.job_health_insurance AS Insurance,
       jb.job_no_degree_mention AS Degree    
FROM job_postings_fact AS jb
LEFT JOIN company_dim AS com ON jb.company_id=com.company_id
WHERE (job_title_short = 'Data Scientist') AND
(job_country = 'India') AND (salary_year_avg IS NOT NULL)
ORDER BY Average_Salary DESC
LIMIT 10
)AS Top_Jobs
LEFT JOIN skills_job_dim AS sj ON Top_Jobs.Job_ID=sj.Job_ID
INNER JOIN skills_dim AS sm ON sj.skill_id=sm.skill_id
ORDER BY Top_Jobs.Average_Salary DESC;

-- Query 2.2: Top skills for 10 high payings jobs in Data Analyst across India based on Average Salary

SELECT Top_jobs.*,
       sm.skills    
FROM (SELECT jb.job_title_short AS Job_Title,
       jb.job_id AS Job_ID,
       jb.job_title AS Job_Titles,
       jb.salary_year_avg AS Average_Salary,
       com.name AS Company_Name,
       jb.job_location AS Job_Location,
       jb.job_schedule_type AS Schedule_Type,
       jb.job_work_from_home AS WFH,
       jb.job_health_insurance AS Insurance,
       jb.job_no_degree_mention AS Degree    
FROM job_postings_fact AS jb
LEFT JOIN company_dim AS com ON jb.company_id=com.company_id
WHERE (job_title_short = 'Data Analyst') AND
(job_country = 'India') AND (salary_year_avg IS NOT NULL)
ORDER BY Average_Salary DESC
LIMIT 10
)AS Top_Jobs
LEFT JOIN skills_job_dim AS sj ON Top_Jobs.Job_ID=sj.Job_ID
INNER JOIN skills_dim AS sm ON sj.skill_id=sm.skill_id
ORDER BY Top_Jobs.Average_Salary DESC;


-- Query 2.3: Top skills for 10 high payings jobs in Data Scientist across ROW based on Average Salary

SELECT Top_jobs.*,
       sm.skills    
FROM (SELECT jb.job_title_short AS Job_Title,
       jb.job_id AS Job_ID,
       jb.job_title AS Job_Titles,
       jb.salary_year_avg AS Average_Salary,
       com.name AS Company_Name,
       jb.job_location AS Job_Location,
       jb.job_schedule_type AS Schedule_Type,
       jb.job_work_from_home AS WFH,
       jb.job_health_insurance AS Insurance,
       jb.job_no_degree_mention AS Degree    
FROM job_postings_fact AS jb
LEFT JOIN company_dim AS com ON jb.company_id=com.company_id
WHERE (job_title_short = 'Data Scientist') AND
(job_country NOT IN ('India')) AND (salary_year_avg IS NOT NULL)
ORDER BY Average_Salary DESC
LIMIT 10
)AS Top_Jobs
LEFT JOIN skills_job_dim AS sj ON Top_Jobs.Job_ID=sj.Job_ID
INNER JOIN skills_dim AS sm ON sj.skill_id=sm.skill_id
ORDER BY Top_Jobs.Average_Salary DESC;

-- Query 2.4: Top skills for 10 high payings jobs in Data Analyst across ROW based on Average Salary

SELECT Top_jobs.*,
       sm.skills    
FROM (SELECT jb.job_title_short AS Job_Title,
       jb.job_id AS Job_ID,
       jb.job_title AS Job_Titles,
       jb.salary_year_avg AS Average_Salary,
       com.name AS Company_Name,
       jb.job_location AS Job_Location,
       jb.job_schedule_type AS Schedule_Type,
       jb.job_work_from_home AS WFH,
       jb.job_health_insurance AS Insurance,
       jb.job_no_degree_mention AS Degree    
FROM job_postings_fact AS jb
LEFT JOIN company_dim AS com ON jb.company_id=com.company_id
WHERE (job_title_short = 'Data Analyst') AND
(job_country NOT IN ('India')) AND (salary_year_avg IS NOT NULL)
ORDER BY Average_Salary DESC
LIMIT 10
)AS Top_Jobs
LEFT JOIN skills_job_dim AS sj ON Top_Jobs.Job_ID=sj.Job_ID
INNER JOIN skills_dim AS sm ON sj.skill_id=sm.skill_id
ORDER BY Top_Jobs.Average_Salary DESC;

