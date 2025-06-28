# 💼 Finance SQL Analytics Dashboard

This project focuses on exploring financial data through SQL queries, covering change-over-time trends, cumulative analysis, performance evaluations, and part-to-whole breakdowns. It also includes optional Power BI visualizations for enhanced business insights.

---

## 🧭 Project Goals

- Understand income and expense trends over time
- Analyze cumulative budget usage and account balances
- Evaluate performance metrics like budget variance and transaction volumes
- Derive insights into how income and expenses are distributed across accounts and categories
- Build reusable SQL scripts and stored procedures for reporting

---

## 🗂️ Folder Structure

---

## 🛠️ Database Schema (ERD)

**Tables:**

- `Accounts(AccountID, AccountName, ...)`
- `Transactions(TxnID, AccountID, TxnDate, Amount, Type, CategoryID)`
- `MonthlyBudgets(AccountID, Month, BudgetAmount)`
- `Categories(CategoryID, CategoryName)`
- `Payments(PaymentID, AccountID, Amount, Date, Mode)`

📌 ERD Image:  
![ERD](./visuals/erd.png)

---

## 🧪 Sample Data

**Transactions Table Preview:**

| TxnID | AccountID | TxnDate   | Amount | Type    | CategoryID |
|-------|-----------|-----------|--------|---------|------------|
| 1     | 1001      | 2024-01-05| 1000   | Income  | 1          |
| 2     | 1001      | 2024-01-12| 450    | Expense | 3          |

Sample insert scripts are available in:  
📂 `schema/insert_sample_data.sql`

---

## 🧠 SQL Insights by Analysis Type

### 📈 Part 1: Change Over Time Trends
- Monthly income and expense trends
- Top 5 highest spending months (per account)
- Year-on-year change in income and expenses

📄 File: `queries/time_trends.sql`

### 🔄 Part 2: Cumulative Analysis
- Cumulative expense/income per account
- Cumulative balance tracking
- Cumulative budget utilization

📄 File: `queries/cumulative_analysis.sql`

### 📊 Part 3: Performance Analysis
- Accounts exceeding budgets
- Avg. expense per transaction (by category)
- Most active accounts in last 6 months
- Budget vs. actual spending variance

📄 File: `queries/performance.sql`

### 🧩 Part 4: Part-to-Whole Breakdown
- % of total expenses by category
- Income share by account
- Top 3 expense categories

📄 File: `queries/part_to_whole.sql`

---

## 🧾 Stored Procedure

Reusable stored procedure for monthly expense reports:

📂 `stored_procedures/sp_MonthlyExpenseReport.sql`

---

## 📊 Power BI Dashboard (Optional)

Includes charts and visuals such as:

- Income & expense trend lines
- Budget vs. actual gauges
- Expense breakdown pie charts
- Cumulative income/expense tables

📁 File: `visuals/dashboard.pbix`

---

## 🚀 How to Use

1. Clone this repo:
   ```bash
   git clone https://github.com/your-username/finance-sql-analytics.git
2. Load table creation and sample data scripts:

From schema/create_tables.sql and insert_sample_data.sql

3. Explore insights:

Use SQL Server Management Studio (SSMS) to run queries from /queries/

4. Optional:

Load dashboard.pbix into Power BI for visualization

📌 Tools Used

SQL Server (T-SQL)

Power BI for dashboarding

GitHub for version control and collaboration



🙋‍♂️ Author

Rakib Ahmed

Data Analyst | SQL Enthusiast | Power BI Developer

📧 www.linkedin.com/in/rkahmed

📫 Email: rakib429395.@gmail.com
