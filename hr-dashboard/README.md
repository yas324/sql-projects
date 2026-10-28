# 👥 HR Analytics Dashboard (MySQL)

## 📌 Overview

This repository contains a collection of MySQL queries designed to analyze and monitor HR data. It includes data-driven insights across employee demographics, attrition, work-life balance, compensation, tenure, and promotion trends, enabling extraction of KPIs and actionable insights for visualization in BI tools like Power BI, Tableau, or Excel.

---

## 🎯 Objectives

* Track **key KPIs** such as total employees, attrition rate, retention rate, average age, and average hourly rate.
* Analyze HR trends like **department-wise attrition, job role-wise attrition, age groups, gender distribution, and marital status**.
* Evaluate **work-life balance, monthly income, and years since last promotion** against employee attrition.
* Provide **gender-wise KPI cards** (Male vs. Female) for workforce equity analysis.
* Support **decision-making** in employee retention, compensation planning, and workforce management.

---

## 🗂 Database Tables Used

| Table Name | Description                                                                                                                                                                                                  |
| ---------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| **HR**     | Stores employee details such as Employee ID, Age, Age Bucket, Gender, Marital Status, Department, Job Role, Attrition, Hourly Rate, Monthly Income, Income Band, Total Working Years, Years Since Last Promotion, WLB Category, Job Satisfaction, and Performance Rating |

---

## 📊 Key SQL Queries

| Query  | Purpose                                                    |
| ------ | ---------------------------------------------------------- |
| 1      | Department Wise Attrition Rate                             |
| 2      | Average Hourly Rate of Male Research Scientist             |
| 3      | Attrition Rate Vs Monthly Income Stats                     |
| 4      | Average Working Years for Each Department                  |
| 5      | Job Role Vs Work Life Balance                              |
| 6      | Attrition Rate Vs Year Since Last Promotion Relation       |
| 7      | Gender Wise Headcount                                      |
| 8      | Age Bucket Wise Headcount                                  |
| 9      | Marital Status Wise Headcount                              |
| 10     | Job Role Wise Monthly Income                               |
| 11     | Job Role Wise Attrition Rate                               |
| 12     | Overall KPI Cards                                          |
| 13     | Male KPI Cards                                             |
| 14     | Female KPI Cards                                           |

---

## 🖼️ Snapshots

Below are output previews of key queries and insights:

| Screenshot   | Description                                              | Preview |
|--------------|----------------------------------------------------------|---------|
| **Query 1**  | Department Wise Attrition Rate                           | ![Department Wise Attrition Rate](https://raw.githubusercontent.com/yas324/sql-projects/main/hr-dashboard/query_1_Department_wise_Attrition_rate.PNG)|
| **Query 2**  | Average Hourly Rate of Male Research Scientist           | ![Average Hourly Rate of Male Research Scientist](https://raw.githubusercontent.com/yas324/sql-projects/main/hr-dashboard/query_2_Average_Hourly_rate_of_Male_Research_Scientist.PNG) |
| **Query 3**  | Attrition Rate Vs Monthly Income Stats                   | ![Attrition Rate Vs Monthly Income Stats](https://raw.githubusercontent.com/yas324/sql-projects/main/hr-dashboard/query_3_Attrition_rate_Vs_Monthly_income_stats.PNG) |
| **Query 4**  | Average Working Years for Each Department                | ![Average Working Years by Department](https://raw.githubusercontent.com/yas324/sql-projects/main/hr-dashboard/query_4_Average_working_years_for_each_Department.PNG) |
| **Query 5**  | Job Role Vs Work Life Balance                            | ![Job Role Vs Work Life Balance](https://raw.githubusercontent.com/yas324/sql-projects/main/hr-dashboard/query_5_Job_Role_Vs_Work_life_balance.PNG) |
| **Query 6**  | Attrition Rate Vs Year Since Last Promotion Relation     | ![Attrition Rate Vs Year Since Last Promotion](https://raw.githubusercontent.com/yas324/sql-projects/main/hr-dashboard/query_6_Attrition_rate_Vs_Year_since_last_promotion_relation.PNG) |
| **Query 7**  | Gender Wise Headcount                                    | ![Gender Wise Headcount](https://raw.githubusercontent.com/yas324/sql-projects/main/hr-dashboard/query_7_Gender_wise_Headcount.PNG) |
| **Query 8**  | Age Bucket Wise Headcount                                | ![Age Bucket Wise Headcount](https://raw.githubusercontent.com/yas324/sql-projects/main/hr-dashboard/query_8_Age_Bucket_Wise_HeadCount.PNG) |
| **Query 9**  | Marital Status Wise Headcount                            | ![Marital Status Wise Headcount](https://raw.githubusercontent.com/yas324/sql-projects/main/hr-dashboard/query_9_Marital_Status_wise_Headcount.PNG) |
| **Query 10** | Job Role Wise Monthly Income                             | ![Job Role Wise Monthly Income](https://raw.githubusercontent.com/yas324/sql-projects/main/hr-dashboard/query_10_Job_Role_Wise_Monthly_Income.PNG) |
| **Query 11** | Job Role Wise Attrition Rate                             | ![Job Role Wise Attrition Rate](https://raw.githubusercontent.com/yas324/sql-projects/main/hr-dashboard/query_11_JobRole_wise_Attrition_rate.PNG) |
| **Query 12** | Overall KPI Cards                                        | ![Overall KPI Cards](https://raw.githubusercontent.com/yas324/sql-projects/main/hr-dashboard/query_12_Overall_KPI_Cards.PNG) |
| **Query 13** | Male KPI Cards                                           | ![Male KPI Cards](https://raw.githubusercontent.com/yas324/sql-projects/main/hr-dashboard/query_13_Male_KPI_Cards.PNG) |
| **Query 14** | Female KPI Cards                                         | ![Female KPI Cards](https://raw.githubusercontent.com/yas324/sql-projects/main/hr-dashboard/query_14_Female_KPI_Cards.PNG) |


---

## 🛠️ Tools Used

* **Database**: MySQL
* **Language**: SQL
* **Data Source**: HR domain table (**HR** – 50,000 employee records)
* **Platform**: MySQL Workbench 

---

## 📊 Key Insights

* Overall **Attrition Rate is 50.21%** (25,105 employees left out of 50,000), with a **Retention Rate of 49.79%**.
* **Research & Development** has the highest department attrition (**51.21%**), while **Hardware** has the lowest (**49.44%**).
* **Human Resources** has the highest job role attrition (**50.57%**), while **Research Scientist** has the lowest (**48.91%**).
* Employees in the **Very High** income band show the highest attrition (**51.15%**), suggesting pay alone does not drive retention.
* Attrition peaks at **77.78%** for employees with a very long gap since last promotion (37 years).
* The **45+** age group is the largest workforce segment (**17,412** employees).
* **Manager** (132.78 M) and **Sales Executive** (132.04 M) roles lead in total monthly income.
* **Female attrition (50.36%)** is slightly higher than **Male attrition (50.06%)**, while average annual income is almost equal (**312.63 K** vs **311.75 K**).
* **Software** has the highest average working years (**20.65**), followed closely by **Sales** (**20.62**).

---

## ✅ How to Use

* Load your HR data into a MySQL database (table: `hr`)
* Run the `HR_Analytics_Queries.sql` script for analysis in MySQL Workbench
* Ensure the required columns (`Department`, `JobRole`, `Gender`, `Attrition`, `HourlyRate`, `MonthlyIncome`, `Income Band`, `WLB Category`, etc.) exist in the table
* Use output in BI tools (Power BI, Tableau, Excel) for interactive visualizations
* Use the queries for specific insights, for example:
    ```sql
     -- Department wise Attrition rate
     SELECT
        Department,
        COUNT(*) AS Total_Employees,
        COUNT(CASE WHEN attrition = 'Yes' THEN 1 END) AS Employees_Left,
        CONCAT(ROUND((COUNT(CASE WHEN attrition = 'Yes' THEN 1 END) /
        COUNT(*)) * 100,2),'%') AS Attrition_Rate
     FROM hr
     GROUP BY department
     ORDER BY Attrition_Rate DESC;
   ```
---

## 🏷️ Tags

`#SQL` `#MySQL` `#SQLQueries` `#HR Analytics` `#Attrition Analysis` `#Data Analytics` `#Dashboard` `#KPI` `#ETL` 

---

## <img src="https://img.icons8.com/ios-glyphs/30/000000/guest-male.png" alt="Author Icon"/> Author


**Syed Yaseen**  
*Aspiring Data Analyst | Power BI | Excel | SQL | Tableau*

<a href="https://syedyaseen324.carrd.co/">
  <img src="https://github.com/yas324/AboutMe_SyedYaseen/blob/main/Badge%201.png" alt="Badge" width="150">
</a>

⭐ **Don't forget to star the repo if you found it helpful!**
