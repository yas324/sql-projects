# 🏥 Healthcare Analytics Dashboard (MySQL)

## 📌 Overview

This repository contains a collection of MySQL queries and stored procedures designed to analyze and monitor healthcare data. It includes data-driven insights across patient demographics, doctor performance, treatments, lab results, and overall healthcare trends, enabling extraction of KPIs and actionable insights for visualization in BI tools like Power BI, Tableau, or Excel.

---

## 🎯 Objectives

* Track **key KPIs** such as patients, doctors, visits, revenue, and follow-up rates.
* Analyze healthcare trends like **age groups, gender distribution, diagnosis frequency, and lab test results**.
* Evaluate **doctor workload, treatment costs, and specialization strength**.
* Provide **stored procedures as filters** for month-wise visits and year-wise revenue.
* Support **decision-making** in patient care, resource allocation, and financial planning.

---

## 🗂 Database Tables Used

| Table Name    | Description                                                                         |
| ------------- | ----------------------------------------------------------------------------------- |
| **PATIENT**   | Stores patient demographic details such as ID, Name, Age, Gender, State, Blood Type |
| **DOCTOR**    | Contains doctor details including ID, Name, Specialization                          |
| **VISIT**     | Tracks patient visits, visit type, diagnosis, doctor assigned, and visit date       |
| **TREATMENT** | Stores treatment details including treatment name, cost, and linked visit           |
| **LAB**       | Contains lab test details including test name, result, and patient association      |

---

## 📊 Key SQL Queries

| Query        | Purpose                                                                                       |
| ------------ | --------------------------------------------------------------------------------------------- |
| 1 – 5        | KPIs: Total Patients, Doctors, Visits, Avg Age of Patients, Follow-up Rate                    |
| 6 – 10       | KPIs: Avg Treatment Cost, Total Lab Tests, Abnormal Results %, Doctor Workload, Total Revenue |
| 11       | Top 5 Diagnosed Conditions                                                                    |
| 12       | Age Group Wise Patients                                                                       |
| 13       | State Wise Patients                                                                           |
| 14       | Month Wise Visits                                                                             |
| 15       | Specialization Wise Doctors                                                                   |
| 16       | Year Wise Revenue                                                                             |
| 17       | Gender Wise Visits                                                                            |
| 18       | Visit Type Wise Visits                                                                        |
| 19       | Treatment Name Wise Cost                                                                      |
| 20       | Lab Result Wise Visits                                                                        |
| 21       | Blood Type Wise Patients                                                                      |
| SP-01   | Stored Procedure: Month Wise Visits                                                           |
| SP-02   | Stored Procedure: Year Wise Cost                                                              |

---

## 🖼️ Snapshots

Below are output previews of key queries and insights:

| Screenshot        | Description                                                | Preview |
|-------------------|------------------------------------------------------------|---------|
|**Query 1-5**      | KPIs: Total Patients, Doctors, Visits, Avg Age, Follow-up Rate | ![Query 1–5 KPIs](https://github.com/yas324/sql-projects/blob/main/healthcare-dashboard/query_01_05_kpis.PNG)                                        |
|**Query6-10**           | KPIs: Avg Treatment Cost, Lab Tests, Abnormal %, Doctor Workload, Revenue | ![Query 6–10 KPIs](https://github.com/yas324/sql-projects/blob/main/healthcare-dashboard/query_06_10_kpis.PNG)                                       |
| **Query 11**       | Top 5 Diagnosed Conditions                                                | ![Top Diagnosed Conditions](https://github.com/yas324/sql-projects/blob/main/healthcare-dashboard/query_11_TOP_5_DIAGNOSED_CONDITIONS.PNG)           |
| **Query 12**           | Age Group Wise Patients                                                   | ![Age Group Patients](https://github.com/yas324/sql-projects/blob/main/healthcare-dashboard/query_12_AGE_GROUP_WISE_PATIENTS.PNG)                    |
| **Query 13**               | State Wise Patients                                                       | ![State Patients](https://github.com/yas324/sql-projects/blob/main/healthcare-dashboard/query_13_STATE_WISE_PATIENTS.PNG)                            |
|**Query 14**                  | Month Wise Visits                                                         | ![Month Wise Visits](https://github.com/yas324/sql-projects/blob/main/healthcare-dashboard/query_14_MONTH_WISE_VISITS.PNG)                           |
|**Query 15**         | Specialization Wise Doctors                                               | ![Specialization Doctors](https://github.com/yas324/sql-projects/blob/main/healthcare-dashboard/query_15_SPECIALIZATION_WISE_DOCTORS.PNG)            |
| **Query 16**                  | Year Wise Revenue                                                         | ![Year Wise Revenue](https://github.com/yas324/sql-projects/blob/main/healthcare-dashboard/query_16_YEAR_WISE_REVENUE.PNG)                           |
| **Query 17**                  | Gender Wise Visits                                                        | ![Gender Visits](https://github.com/yas324/sql-projects/blob/main/healthcare-dashboard/query_17_GENDER_WISE_VISITS.PNG)                              |
| **Query 18**            | Visit Type Wise Visits                                                    | ![Visit Type Visits](https://github.com/yas324/sql-projects/blob/main/healthcare-dashboard/query_18_VISIT_TYPE_WISE_VISITS.PNG)                      |
| **Query 19**          | Treatment Name Wise Cost                                                  | ![Treatment Cost](https://github.com/yas324/sql-projects/blob/main/healthcare-dashboard/query_19_TREATMENT_NAME_WISE_COST.PNG)                       |
|**Query 20**                  | Result Wise Visits                                                        | ![Result Wise Visits](https://github.com/yas324/sql-projects/blob/main/healthcare-dashboard/query_20_RESULT_WISE_VISITS.PNG)                         |
|**Query 21**           | Blood Type Wise Patients                                                  | ![Blood Type Patients](https://github.com/yas324/sql-projects/blob/main/healthcare-dashboard/query_21_BLOOD_TYPE_WISE_PATIENTS.PNG)                  |
| **SP-01**   | Stored Procedure – Month Wise Visits                                      | ![Stored Procedure Month Visits](https://github.com/yas324/sql-projects/blob/main/healthcare-dashboard/sp_01_STORED_PROCEDURE_MONTH_WISE_VISITS.PNG) |
| **SP-02**    | Stored Procedure – Year Wise Cost                                      | ![Stored Procedure Month Visits](https://github.com/yas324/sql-projects/blob/main/healthcare-dashboard/sp_02_STORED_PROCEDURE_YEAR_WISE_COST.PNG) |

---

## 🛠️ Tools Used

* **Database**: MySQL
* **Language**: SQL
* **Data Source**: Healthcare domain tables (**Patient, Doctor, Visit, Treatment, Lab**)
* **Platform**: MySQL Workbench 

---

## 📊 Key Insights

* Majority of patients fall into **31–45 and 46–60** age groups.
* **Follow-up Rate** highlights patient care requirements.
* Certain **diagnoses occur frequently**, useful for resource planning.
* **Doctor workload analysis** shows patient distribution per doctor.
* **Revenue trends by year** help monitor financial growth.
* **Lab abnormal results %** highlights patient risk levels.

---

## ✅ How to Use

* Load your data into a MySQL database (tables: `patients`, `doctors`, `appointments`, `treatments`, `lab_tests`)
* Run the `Healthcare_Dashboard.sql` script for analysis in MySQL Workbench
* Ensure all required tables (`patients`, `doctors`, `appointments`, etc.) exist
* Use output in BI tools (Power BI, Tableau, Excel) for interactive visualizations
* Use stored procedures for specific insights, for example:
    ```sql
     CALL VISITS('MARCH');
     CALL COST(2024);
   ```
---

## 🏷️ Tags

`#SQL` `#MySQL` `#SQLQueries` `#Healthcare Analytics` `#Data Analytics` `#Dashboard` `#KPI` `#ETL` 

---

## <img src="https://img.icons8.com/ios-glyphs/30/000000/guest-male.png" alt="Author Icon"/> Author


**Syed Yaseen**  
*Aspiring Data Analyst | Power BI | Excel | SQL | Tableau*

<a href="https://syedyaseen324.carrd.co/">
  <img src="https://github.com/yas324/AboutMe_SyedYaseen/blob/main/Badge%201.png" alt="Badge" width="150">
</a>

⭐ **Don't forget to star the repo if you found it helpful!**



