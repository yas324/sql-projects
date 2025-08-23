# 📊 Insurance Performance Dashboard (MySQL)

This repository contains a collection of MySQL queries and stored procedures designed to analyze and monitor the performance of an insurance branch. It includes data-driven insights across invoices, meetings, opportunities, targets, and achievements.

---

## 🎯 Objectives

- Track **revenue performance** by income class: Cross Sell, New, Renewal
- Analyze **opportunity pipeline** by stage, status, and product group
- Evaluate **achievement vs targets** at invoice and placement level
- Monitor **Account Executive** activities: meetings and invoices
- Measure **conversion ratios** for open and closed deals
- Use **stored procedures** to view filtered performance insights
  
---

## 🧩 Database Tables Used

| Table        | Description                                       |
|--------------|---------------------------------------------------|
| `invoice`    | Contains all invoicing and revenue-related data   |
| `meeting`    | Tracks meetings conducted by Account Executives   |
| `opp`        | Opportunity pipeline data with stage and revenue  |
| `brok_fee`   | Placed achievement values by income class         |
| `ind_bud`    | Budget targets set per income class               |

---

## 🧠 Key SQL Queries

| Query  | Query Purpose                                                |
|----|--------------------------------------------------------------|
| 1  | Invoice count by Account Executive                           |
| 2  | Year-wise meeting count                                      |
| 3.1–3.3 | Target vs Placed vs Invoice by income class (Cross Sell, New, Renewal) |
| 4  | Revenue grouped by opportunity stage                         |
| 5  | Meeting count by Account Executive                           |
| 6  | Top 10 revenue-generating opportunities                      |
| 7–12 | Achievement % for placed and invoice revenue               |
| 13 | Distribution of opportunities by product group               |
| 14–15 | Top 4 open and closed opportunities by revenue            |
| 16–20 | Total, open, closed opportunities & conversion ratios     |
| SP | Stored Procedures to filter invoice and meeting data         |

---

## 📸 Snapshots

Below are output previews of key queries and insights:

| Screenshot        | Description                                                | Preview |
|-------------------|------------------------------------------------------------|---------|
| 📌 **Query 1**     | Invoice Count by Account Executive                         | ![Query 1](https://github.com/yas324/SQL-Project/blob/main/insurance-dashboard/query_01_invoice_count.PNG) |
| 📌 **Query 3.1** | Target vs Placed vs Invoice by income class             | ![Query 3](https://github.com/yas324/SQL-Project/blob/main/insurance-dashboard/query_3.1_income_class_summary.png) |
| 📌 **Query 3.2** | Target vs Placed vs Invoice by income class             | ![Query 3](https://github.com/yas324/SQL-Project/blob/main/insurance-dashboard/query_3.2_income_class_summary.png) |
| 📌 **Query 3.3** | Target vs Placed vs Invoice by income class             | ![Query 3](https://github.com/yas324/SQL-Project/blob/main/insurance-dashboard/query_3.3_income_class_summary.png) |
| 📌 **Query 4**     | Revenue by Opportunity Stage                               | ![Query 4](https://github.com/yas324/SQL-Project/blob/main/insurance-dashboard/query_04_stage_revenue.png) |
| 📌 **Query 5**     | Meeting Count by Account Executive                         | ![Query 5](https://github.com/yas324/SQL-Project/blob/main/insurance-dashboard/query_05_meeting_count.png) |
| 📌 **Query 6**     | Top 10 Opportunities by Revenue                            | ![Query 6](https://github.com/yas324/SQL-Project/blob/main/insurance-dashboard/query_06_top_opportunities.png) |
| 📌 **Query 13**    | Opportunity Distribution by Product Group                  | ![Query 13](https://github.com/yas324/SQL-Project/blob/main/insurance-dashboard/query_13_product_group.png) |
| 📌 **Query 14** | Top 4 Open and Closed Opportunities by Revenue             | ![Query 14](https://github.com/yas324/SQL-Project/blob/main/insurance-dashboard/query_14_top_open.png) |
| 📌 **Query 15** | Top 4 Open and Closed Opportunities by Revenue             | ![Query 15](https://github.com/yas324/SQL-Project/blob/main/insurance-dashboard/query_15_top_closed.png) |
| 📌 **Query 19** | Conversion Ratio (Open vs Closed)                          | ![Query 19-20](https://github.com/yas324/SQL-Project/blob/main/insurance-dashboard/query_19_open_conversion_ratio.png) |
| 📌 **Query 20** | Conversion Ratio (Open vs Closed)                          | ![Query 19-20](https://github.com/yas324/SQL-Project/blob/main/insurance-dashboard/query_20_clsd_conversion_ratio.png) |
| 📌 **Stored Procedures** | Example usage of `CALL Invoices(ID)` | ![Stored Procedure](https://github.com/yas324/SQL-Project/blob/main/insurance-dashboard/1_stored_procedure_usage.png) |
| 📌 **Stored Procedures** | Example usage of `CALL Meetings(ID)` | ![Stored Procedure](https://github.com/yas324/SQL-Project/blob/main/insurance-dashboard/2_stored_procedure_usage.png) |

---
## 🛠️ Tools Used

- **Database**: MySQL
- **Language**: SQL
- **Data Source**: Insurance domain tables (invoice, meeting, opp, ind_bud, brok_fee)
---

## 📌 Key Insights

- ✅ **Cross Sell** achieved **92% of the target invoice amount** but only **78% of placed achievement**, indicating a gap between planning and execution.
- 💡 **Top 4 opportunities** contribute over **45% of total open pipeline revenue**, signaling a strong dependency on few deals.
- 🧩 The **"Negotiation"** stage recorded the **highest revenue closure**, making it the most crucial part of the sales funnel.
- 👨‍💼 **Rajesh Sharma** led in performance with the most **meetings (35)** and **invoices raised (28)**.
- 📈 **New business segment** achieved **85% of its placed target** but underperformed in invoicing, highlighting conversion friction.
- 🔁 **Renewal income class** maintained strong results with **95% placed and invoice target achievement**, showing healthy client retention.
- 📊 **"Term Life"** emerged as the top-performing product group by number of opportunities, indicating high market demand.
- 🎯 The **Open Opportunity Conversion Rate** is **62.5%**, while **Closed Conversion Rate** (Negotiation stage) is **37.5%**, revealing optimization potential in the final sales stages.
- 🔍 A **small set of Account Executives manage the majority of revenue**, suggesting a workload or performance gap across the team.

---
## ✅ How to Use

- Load your data into a MySQL database (tables: `invoice`, `meeting`, `opp`, `ind_bud`, `brok_fee`)
- Run the `Insurance_Branch_Dashboard.sql` for analysis in MySQL Workbench
- Ensure required tables (`invoice`, `meeting`, `opp`, etc.) exist
- Use output in BI tools for visualization if needed
- Use procedures like:
CALL Invoices(4);
CALL Meetings(2);

---
## 🏷 Tags

`#SQL` `#Insurance Analytics` `#MySQL` `#Dashboard` `#Revenue Analysis` `#Opportunity Tracking` `#Data Insights`


--- 
## <img src="https://img.icons8.com/ios-glyphs/30/000000/guest-male.png" alt="Author Icon"/> Author


**Syed Yaseen**  
*Aspiring Data Analyst | Power BI | Excel | SQL | Tableau*

<a href="https://syedyaseen324.carrd.co/">
  <img src="https://github.com/yas324/AboutMe_SyedYaseen/blob/main/Badge%201.png" alt="Badge" width="150">
</a>

⭐ **Don't forget to star the repo if you found it helpful!**

