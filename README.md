# Jobs_Postings_Analysis_using_SQL
---
## 📊 Overview of the Study
This study analyses the top-paying Data Analyst and Data Scientist jobs across India and the Rest of the World (ROW) using Structured Query Language(SQL). It further explores the skills associated with high-paying roles, in-demand skills by geography and domain, and the top-paying skills across both markets. Finally, the study identifies optimal skills by examining their relationship with job demand and salary levels, providing insights into skills that offer strong career and earning potential.

---
## ❔Problem Statement
You are a Data Analyst at a career training institute, tasked with extracting meaningful insights from a large dataset of job postings. Your manager has asked you to analyse the job market for high-demand careers such as Data Analyst and Data Scientist across India and the Rest of the World (ROW).
Based on your analysis, you are expected to answer a set of business-focused questions related to high-paying jobs, skills, demand, and career opportunities. The following questionnaire outlines the key questions that your analysis should address.
### 1. What are the top-paying jobs based on the high-demand careers across the aforementioned geographies?
#### 1.1) Top-Paying Jobs for Data Scientists in India:
- **Principal-level roles command the highest salary**: The Principal Data Scientist position at GSK has the highest average salary at **204,381**, significantly above the other roles in the dataset.
- The top 10 roles have an average salary of approximately **171,853**, with salaries ranging from **162,500** to **204,381**.
- **Skill requirements vary considerably:** The number of associated skills ranges from 0 to 10. The Data Scientist (all genders) role at HRS with a **162,500** salary has the highest skill count of **10**.
- **Four senior and leadership roles in the top-paying positions:** Titles such as **Principal Data Scientist**, **Staff Engineer - Data Scientist**, **Sr Data Scientist**, and **Head of Data Science, Analytics and BI** appear among the highest-paid positions.
- All 10 positions are full-time, and none of the listings in the supplied dataset indicates **work-from-home availability**, **insurance**, or a **degree requirement**.
#### 1.2) Top-Paying Jobs for Data Analysts in India:
- **Mantys** offers the highest reported salary at **650,000**, for a fully remote **Data Analyst** position. This is the only role offering **work-from-anywhere**.
- **Data Architecture roles dominate the higher-paying positions in the dataset**. Technical Data Architect, Data Architect, and Data Architect - Data Migration roles account for five of the top 10 listings.
- **Bengaluru and Hyderabad are prominent locations among the India-based high-paying roles**. Bosch Group has three listings in Bengaluru, while Eagle Genomics Ltd. has two listings in Hyderabad.
- **Srijan Technologies' Technical Data Architect** - Healthcare role has the highest skill count **20** among the listed jobs, with an average salary of **165,000**.
- **Degree requirements vary:** Only **three of the ten listings** explicitly indicate a degree requirement in the supplied data.
#### 1.3) Top-Paying Jobs for Data Scientists in Rest of the World:
- **East River Electric Power Cooperative, Inc.** offers the highest reported salary at **960,000** for a Data Scientist role based in Madison, South Dakota.
- **High concentration of Senior and leadership positions belongs to high-paying segment**, with titles such as **Staff Data Scientist/Quant Researcher**, **Staff Data Scientist - Business Analytics**, **Applied Data Science or Machine Learning Leader**, and **Data Science Director** appearing among the top-paying roles.
- **Remote opportunities feature prominently:** Two Staff Data Scientist positions at Selby Jennings provides **work-from-anywhere** availability, offering salaries of 550,000 and 525,000 respectively.
- **Skill requirements vary significantly, ranging from 0 to 12** associated skills. The **Data Science Director – Audit role** at **Truist Financial** has the highest skill count at **12**, followed by the Director, Data Scientist role at Analog Devices with **10** skills.
- **Insurance benefits are reported for four of the ten positions**, including roles at East River Electric Power Cooperative, Netflix, Truist Financial, and Linquest Corporation.
#### 1.4) Top-Paying Job for Data Analysts in Rest of the World:
- **Lanit** offers the highest reported salary at **400,000** for a Database Administrator role based in Belarus.
- **Senior and leadership positions dominate the top-paying roles**, with titles including Director of Safety Data Analysis, Head of Data Analytics, Director of Analytics, Head of Infrastructure Management & Data Analytics, and Associate Director - Data Insights.
- **Technology companies feature prominently**, including **Anthropic**, **Meta**, **OpenAI**, and other organisations offering high-paying analytics and data-related positions.
- **Remote opportunities are present:** Meta's Director of Analytics and AT&T's Associate Director - Data Insights are listed as Anywhere with work-from-home availability.
- **Insurance benefits are reported for five of the ten positions**, including roles at Torc Robotics, Care.com, Anthropic, OpenAI, and AT&T.

### 2) What are the skills associated with top-paying jobs based on high-demand careers in aforementioned geographies?
#### 2.1) Top skills for Data Scientists in India:
- **Python is the most consistently represented skill**, appearing across KONE, Micron Technology, Shell, HRS, Target, Carousell Group, and Gartner. This makes Python the most prominent programming language across the high-paying Data Scientist roles analysed.
- **SQL is another highly recurring skill**, appearing in roles at KONE, Micron Technology, Target, Carousell Group, and HRS. Its repeated presence highlights the importance of data querying and data management capabilities.
- The **AI Data Scientist** role at Shell has the broadest technology stack in the supplied data, covering **Python, Java, R, Shell, Go, C++, Express, Excel, Kubernetes, and Databricks**.
- **Cloud platforms & Machine/Deep Learning frameworks** are strongly represented, with **AWS, Azure, and GCP** appearing across multiple high-paying roles. HRS, in particular, requires exposure to multiple cloud platforms, while **TensorFlow, PyTorch, Keras, and Scikit-learn** appear across roles at Micron Technology, Carousell Group, HRS, and Gartner.
- **Senior leadership roles require broader cross-functional technology exposure:** Carousell Group's Head of Data Science, Analytics & BI combines data engineering, machine learning, and BI technologies, rather than focusing on a single programming language or framework.
#### 2.2) Top skills for Data Analysts in Rest of the World:
- **SQL is the most frequently occurring skill**, appearing across 5 distinct job postings, including roles at Srijan Technologies, Bosch Group, Eagle Genomics, Deutsche Bank, and ACA Group.
- **Python is another key skill**, appearing in 3 high-paying Data Analyst/Data Architect roles at Srijan Technologies, Bosch Group, and Eagle Genomics.
- **Database technologies & Cloud Platforms are highly prominent**, with skills such as Oracle, MongoDB, MySQL, PostgreSQL, SQL Server, NoSQL, and Snowflake appearing across multiple roles. AWS and Azure appear in several higher-paying positions. Eagle Genomics and Bosch Group both include multiple cloud and data-platform technologies.
- **Big-data technologies are strongly represented in the higher-paying Data Analyst roles**, including Spark, Hadoop, Databricks, PySpark, Kafka, and Airflow.
- **Traditional analytics skills remain relevant at lower salary levels:** Deutsche Bank and ACA Group roles combine SQL, Excel, Power BI, and Azure, while Zscaler combines Snowflake, Excel, and Tableau.
#### 2.3) Top skills for Data Scientists in Rest of the World:
- **Python is the most consistently recurring skill**, appearing across several high-paying roles including Staff Data Scientist, Netflix Data Scientist, Director of Data Science, Data Scientist in East River Electric Power Cooperative, Inc.
- **SQL is another core skill, appearing in Staff Data Scientist**, Netflix, Shelby Jennings, and Linquest Corporation roles, highlighting the importance of data querying and analytical capabilities.
- **Multiple programming languages are represented in senior roles**, including Java, R, C++, C, Go, and Python. This suggests that some high-paying positions require broader software and analytical programming capabilities.
- **Machine learning, Big Data and AI technologies** are prominent in specialised roles. Some companies also list TensorFlow, PyTorch, and scikit-learn, while Netflix combines data science with Spark.
- **Senior-level roles tend to require broader technical stacks**. For example, the Yeti Coolers Director, Data Science & Advanced Analytics role combines Python, R, AWS, PySpark, Hadoop, Tableau.
#### 2.4) Top skills for Data Analysts in Rest of the World:
- **SQL and Python are the most recurring technical skills**, appearing across multiple high-paying roles including Torc Robotics, Anthropic, Care.com, and AT&T.
- **R is also frequently represented**, particularly in senior and leadership-oriented analytics roles at Torc Robotics, Illuminate Mission Solutions, Care.com, and AT&T.
- **Business intelligence and visualisation tools are highly relevant**, with Tableau and Power BI appearing across several roles. Excel is also common, particularly in senior analytics and management positions.
- **Advanced data engineering technologies** appear in higher-level roles. Torc Robotics includes Spark and Airflow, while AT&T lists Databricks, PySpark, Pandas, Jupyter, AWS, and Azure.
- **Leadership-level analytics roles require broader skill sets**. For example, the AT&T Associate Director – Data Insights role combines SQL, Python, R, cloud platforms, Databricks, PySpark, Pandas, Jupyter, Excel, Tableau, and Power BI.

### 3) What are the in-demand skills for job postings based on high-demand career opportunities across the geographies?
#### 3.1) Top In-demand skills for Data Scientists in India
- **Python** is the most in-demand skill, appearing in 9,276 job postings, significantly ahead of every other skill in the dataset.
- **SQL** ranks second with 6,380 postings, highlighting the continued importance of database querying and data manipulation across Data Analyst and Data Scientist roles.
- **R** appears in 4,341 postings, making it another major programming language for analytics and statistical work.
- **Tableau** is the most represented BI and visualisation tool, appearing in 2,431 postings, indicating strong demand for data visualisation and reporting capabilities.
- **Cloud and Big data skills** are highly relevant, with AWS (2,582) and Azure (2,112) appearing frequently in job requirements. **Big-data technologies** remain important, with Spark (2,396) and Hadoop (1,784) appearing across thousands of job postings. 

<p align="center"><img width="480" height="324" alt="Most In-Demand Skills Across Data Roles" src="https://github.com/user-attachments/assets/359e1da0-376d-4b18-8501-9aad1fda3754" />

#### 3.2) Top In-demand skills for Data Analysts in India
- **SQL is the most in-demand skill**, appearing in 3,167 job postings, highlighting its importance for querying, managing, and analysing data.
- **Python ranks second with 2,207 postings**, demonstrating strong demand for programming and analytical automation skills.
- **Excel remains highly relevant**, appearing in 2,118 postings, indicating that traditional spreadsheet-based analysis continues to be an important part of Data Analyst roles.
- **Tableau (1,673) and Power BI (1,285)** show strong demand for data visualisation and business intelligence capabilities.
- **PowerPoint (374)** indicates that communication and presentation of analytical findings are also relevant skills for Data Analysts.

<p align="center"><img width="480" height="324" alt="Most In-Demand Skills for Data Analyst Roles" src="https://github.com/user-attachments/assets/bbdce445-0c51-47de-82d0-65bf6f3b71cc" />

#### 3.3) Top In-demand skills for Data Scientists in Rest of the World.
- **Python** is the most in-demand skill, appearing in 104,739 job postings, significantly ahead of all other skills.
- **SQL** ranks second with 72,794 postings, highlighting the importance of database querying and data manipulation across data-related roles.
- **R** appears in 55,413 postings, demonstrating strong demand for statistical computing and analytics.
- **Tableau** appears in 27,082 postings, reflecting strong demand for data visualisation and business intelligence. **Cloud platforms are also highly relevant**, with AWS (23,728) and Azure (19,585) appearing frequently in job requirements.
- **Excel** is present in 16,139 postings, showing that traditional spreadsheet-based analysis continues to be relevant alongside modern data technologies.

<p align="center"><img width="480" height="324" alt="Most In-Demand Skills Across Data Roles (1)" src="https://github.com/user-attachments/assets/0acc17ba-700c-4e98-be94-b9c013821e05" />

#### 3.4) Top In-demand skills for Data Analysts in Rest of the World.
- **SQL is the most in-demand skill**, appearing in 89,458 job postings, making it the strongest technical requirement in the dataset.
- **Excel ranks second** with 64,910 postings, showing that spreadsheet-based analysis remains highly relevant across Data Analyst roles.
- **Python is highly demanded**, with 55,117 postings. This indicates strong demand for programming and automation capabilities alongside traditional analytics.
- **Visualisation tools like Tableau & Power BI** have strong market demand, appearing in 44,879 & 38,181 postings respectively, highlighting the importance of data visualisation and dashboarding.
- **Presentation and productivity tools also matter**. PowerPoint (13,474) and Word (13,294) appear in thousands of postings, suggesting that communication and documentation are complementary skills for analytics professionals.

<p align="center"><img width="480" height="324" alt="Most In-Demand Skills for Data Analyst Roles (1)" src="https://github.com/user-attachments/assets/be848611-ca82-454a-81d2-687b5cd51583" />

### 4) What are high-paying skills for job postings based on high-demand career opportunities across the geographies?
#### 4.1) Top High Paying skills of Data Scientists in India
- **Express** has the highest average salary at 170,500, making it the highest-paid skill in this dataset.
- **Looker** ranks second with an average salary of 166,420, suggesting that BI and data-visualisation expertise can be associated with higher-paying roles.
- **Jira** is associated with an average salary of 161,858, indicating that project and workflow management tools appear in relatively well-paid roles.
- **BigQuery** has an average salary of 160,000, highlighting the value of cloud-based data warehousing skills.
- **The salary range is relatively concentrated**, from 157,500 to 170,500. This suggests that skills are all associated with comparatively high-paying positions, while the differences between individual skills are relatively modest.

<p align="center"><img width="480" height="324" alt="Average Salary by Skill" src="https://github.com/user-attachments/assets/945838d5-205b-4058-a749-e5871ed17b34" />

#### 4.2) Top High Paying skills of Data Analysts in India.
- **PostgreSQL, GitLab, PySpark, MySQL, and Linux** share the highest average salary at 165,000, making them the top-paying skills in this dataset.
- **Neo4j and GDPR follow closely with an average salary of 163,782**, indicating that specialised database and compliance knowledge is associated with high-paying roles.
- **Airflow has an average salary of 138,088**, highlighting the relevance of workflow orchestration and data-pipeline management skills.
- **Database technologies dominate the list**, with PostgreSQL, MySQL, Neo4j, and MongoDB all appearing among the top skills.
- **Data engineering skills are strongly represented**, particularly PySpark, Airflow, and Databricks, suggesting that data-pipeline and large-scale processing capabilities contribute to higher-paying roles.

<p align="center"><img width="480" height="324" alt="Average Salary by Skill (1)" src="https://github.com/user-attachments/assets/5231cfef-c9dd-436f-a3f2-6bfd4b3f201e" />

#### 4.3) Top High Paying skills of Data Scientists in Rest of the World
- **Asana has the highest average salary at 215,477**, making it the top skill in this dataset by average salary.
- **Airtable ranks second with an average salary of 201,143**, indicating that roles requiring modern collaboration and database-management platforms can be highly compensated.
- **Watson averages 192,403**, placing AI-related technology among the higher-paying skills in the dataset.
- **Red Hat records an average salary of 189,500**, reflecting the value of enterprise Linux and open-source technology expertise.
- **Elixir has an average salary of 170,824**, showing that specialised programming languages can be associated with higher-paying technical roles

<p align="center"><img width="480" height="324" alt="Average Salary by Skill (2)" src="https://github.com/user-attachments/assets/e89e9cc5-a02a-4966-bb75-0bd6679b096e" />

#### 4.4) Top High Paying skills of Data Analysts in Rest of the World
- **SVN has the highest average salary, at 400,000**, substantially above all other skills in the dataset.
- **Solidity ranks second, with an average salary of 179,000**, showing a relatively high salary association with blockchain-oriented skills.
- **Couchbase records 160,515**, placing it third and highlighting demand for specialised database technologies.
- **Golang averages 155,000**, indicating strong salary levels for roles involving modern backend and systems programming.
- **MXNet has an average salary of 149,000**, representing machine-learning framework expertise.

  <p align="center"><img width="480" height="324" alt="Average Salary by Skill (3)" src="https://github.com/user-attachments/assets/31c26f68-8197-4171-a5a2-2b50c4a695ba" />

### 5) What are the optimal skills based on job counts and average salary for high-demand career opportunities across the geographies?
#### 5.1) Top optimal jobs for Data Scientists in India:
- **Python shows the strongest overall balance:** Python appears in 64 jobs, the highest count, with an average salary of 123,813. It combines the broadest demand with a relatively high salary.
- **SQL has high demand and solid salary.** SQL appears in 49 jobs with an average salary of 117,684. Its combination of strong demand and competitive pay makes it an important foundational skill.
- **R has good balance of demand and salary** R appears in 30 jobs and averages 119,291. It has lower demand than Python and SQL but maintains a competitive salary level.
- **Spark has moderate demand and lower salary** Spark appears in 23 jobs with an average salary of 112,130. Its demand is meaningful, but the salary is below several other skills.
- **Python and SQL provide the strongest combination of job availability and competitive salary**, while PyTorch, Azure, and TensorFlow show higher average salaries but fewer opportunities. This suggests a skill strategy where Python/SQL provide broad market coverage, complemented by cloud, BI, or specialised ML skills for additional specialisation.
#### 5.2) Top optimal jobs for Data Analysts in India:
- **SQL has the highest job demand**. SQL appears in 46 job postings, the highest count among the listed skills, with an average salary of 92,984. This indicates that SQL has broad demand while maintaining a solid salary level.
- **Excel has a strong demand but a lower average salary**. Excel appears in 39 jobs, making it the second most common skill. However, its average salary of 88,519 is among the lower values in the dataset, suggesting that high demand does not necessarily correspond to higher salary levels.
- **Python provides a strong balance of demand and salary**. Python appears in 36 job postings and has an average salary of 95,933. Its relatively high job counts combined with a competitive salary made it an important technical skill in the dataset.
- **Spark has the highest average salary among the listed skills**. Spark appears in only 11 job postings, but its average salary is 118,332, the highest among all ten skills. This shows a strong salary association despite relatively limited job volume.
- **The comparison reveals a clear trade-off between job volume and salary association.** SQL, Excel, and Python have the highest job counts, indicating broad demand, while Spark, Power BI, and Oracle have fewer associated postings but higher average salaries. This suggests that widely used foundational skills can provide broader job coverage, while specialised technical and analytics skills may be associated with higher salary levels.
#### 5.3) Top optimal jobs for Data Scientists in Rest of the World:
- **Python has the highest job demand. Python appears in 4,248 job postings**, the highest count in the dataset, with an average salary of 138,264. This demonstrates strong market demand combined with a competitive salary association.
- **SQL combines very high demand with a slightly higher salary than Python**. SQL appears in 3,102 postings and has an average salary of 138,758. Although its job count is lower than Python, its average salary is slightly higher.
- **Spark has fewer postings but one of the highest average salaries**. Spark appears in 923 job postings, while its average salary reaches 145,203. This indicates a strong salary association for a more specialised big-data technology.
- **TensorFlow combines relatively low demand with high salary association**. TensorFlow appears in 625 postings and has an average salary of 144,010. Its job count is much lower than Python and SQL, but its average salary is considerably higher.
- **Specialised technologies show a salary premium despite lower demand**. A clear pattern appears when comparing job volume with salary. Python, SQL, and R dominate in job count, while Spark, TensorFlow, and AWS have fewer associated postings but higher average salaries. This suggests that specialised technical skills can be associated with higher-paying opportunities even when their overall job volume is lower.
#### 5.4) Top optimal jobs for Data Analysts in Rest of the World:
- **SQL has the highest demand.** SQL appears in 3,036 job postings, the highest among the listed skills, with an average salary of 96,468. This highlights SQL as a widely required skill across Data Analyst roles.
- **Excel has the second-highest job volume**. Excel appears in 2,104 postings, making it the second most frequently requested skill. However, its average salary of 86,380 is considerably lower than SQL and Python.
- **Python combines strong demand with a higher salary association**. Python appears in 1,803 job postings and has an average salary of 101,593, the highest average salary among the three most frequently requested skills.
- **Word has lower demand and the lowest average salary**. Word appears in 517 postings and has an average salary of 82,934, the lowest among the listed skills. Its lower salary association contrasts with more technical skills such as Python and R.
- **Technical and analytical skills show stronger salary associations**. The dataset shows a general pattern where SQL, Python, Tableau, and R combine substantial job demand with relatively strong salary associations. In contrast, Word, PowerPoint, and Excel have lower average salaries despite their presence across many postings.


**Note:** Generative-AI tool (ChatGPT) is used to build the bar graphs.

---
## 🔨Tools Used
- **Post-Gre SQL**: Used to run queries for analysis.
- **ChatGPT**: Used to create the bar graphs for visualisation.
---
## 📝Acknowledgement
- **Data Source:** 📊[**Download / Access the Dataset**](https://drive.google.com/drive/folders/1egWenKd_r3LRpdCf4SsqTeFZ1ZdY3DNx)
- **Inspiration:** ▶️ [**SQL for Data Analytics - Learn SQL in 4 Hours**](https://youtu.be/7mz73uXD9DA)
- **License:** ✍️[MIT License](LICENSE).












  
  



