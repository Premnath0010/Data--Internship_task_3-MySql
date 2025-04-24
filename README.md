# Data_Analyst_Internship_task_3-MySql

# **Objective**
The goal of this project is to demonstrate proficiency in **SQL data analysis** techniques using a structured **E-commerce dataset**. This includes querying, aggregating, joining, creating views, using subqueries, and optimizing queries.

---

# **Tools Used**
- **Database:** MySQL (can also be used with PostgreSQL/SQLite with slight syntax adjustments)
- **Interface:** MySQL Workbench (for running queries and capturing output screenshots)
- **Dataset:** `orders` table from an E-commerce SQL database (manually imported CSV)

---

# *Dataset Description**
The dataset contains information about product orders, including shipment method, customer interaction, pricing, discounts, and delivery performance.
____________________________________________________________________________________
| Column Name             | Data Type       | Description                          |
|-------------------------|-----------------|--------------------------------------|
| ID                      | INT             | Unique Order ID                      |
| Warehouse_block         | VARCHAR(10)     | Warehouse zone                       |
| Mode_of_Shipment        | VARCHAR(20)     | Shipment type (Flight, Ship, etc.)  |
| Customer_care_calls     | INT             | Number of support calls              |
| Customer_rating         | INT             | Customer rating (1–5)                |
| Cost_of_the_Product     | INT             | Price of the product                 |
| Prior_purchases         | INT             | Number of previous purchases         |
| Product_importance      | VARCHAR(15)     | Low / Medium / High                  |
| Gender                  | VARCHAR(10)     | Customer gender                      |
| Discount_offered        | INT             | Discount amount                      |
| Weight_in_gms           | INT             | Product weight                       |
| Reached_on_Time_Y_N     | INT             | 1 = Delayed, 0 = On time             |
_____________________________________________________________________________________

---

# **What’s Included**
- `task3_queries.sql` → SQL queries for:
  - SELECT, WHERE, ORDER BY, GROUP BY
  - Subqueries
  - JOIN (self-join for demo)
  - Aggregate functions (SUM, AVG)
  - Views creation
  - Index optimization

- `screenshots/` → Images of query outputs from MySQL Workbench
- `README.md` → Overview of the task, dataset, and contents
- `ecommerce_orders.csv` (optional) → Source dataset (if submission allows it)

---

# **Interview Prep Questions & Answers**
Included in the `.sql` file and this README:
- Difference between WHERE and HAVING
- SQL JOIN types
- Subqueries and views explained
- Query optimization techniques
- NULL handling strategies

---

# **How to Run**
1. Import the dataset into your MySQL server (via CSV import or `LOAD DATA LOCAL INFILE`)
2. Run `task3_queries.sql` in MySQL Workbench
3. Capture and include screenshots of output
