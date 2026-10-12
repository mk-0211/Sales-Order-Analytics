# 📊 Sales & Order Management Analytics

A complete, end-to-end **Data Analytics project** built during my internship. This project covers the full data pipeline — from relational database design and advanced SQL modeling to a live Power BI dashboard connected directly to a PostgreSQL backend.

---

## 🗂️ Project Structure

```
Sales_Order_Analytics_Project/
│
├── 01_create_tables.sql          # Schema design — tables, PKs, FKs, constraints
├── 02_insert_sample_data.sql     # Initial sample data
├── 03_crud_and_joins.sql         # CRUD operations and multi-table JOINs
├── 04_business_analytics.sql     # Aggregations, CTEs, Window Functions
├── 05_views_and_optimization.sql # Views and Index optimization
├── 06_advanced_extensions.sql    # Stored Procedures, Triggers, SCD, Partitioning
├── 07_large_sample_data.sql      # Realistic 150+ row dataset (50 customers, 20 products)
└── PowerBI_Tableau_Integration_Guide.md  # How to connect Power BI to PostgreSQL
```

---

## 🛠️ Tech Stack

| Tool | Purpose |
|---|---|
| **PostgreSQL 18** | Relational database engine |
| **pgAdmin 4** | Database management and query execution |
| **Power BI Desktop** | Business Intelligence and data visualization |
| **DAX** | Data Analysis Expressions for Power BI measures |
| **SQL (PostgreSQL dialect)** | Data modeling, querying, and automation |

---

## 🗄️ Database Schema

The database follows a normalized relational design with 5 core tables:

```
customers ──────────── orders ──────────── order_items ──── products
                          │
                       payments
```

### Tables

| Table | Key Columns |
|---|---|
| `customers` | customer_id (PK), name, email, city, signup_date |
| `products` | product_id (PK), product_name, category, price, stock |
| `orders` | order_id (PK), customer_id (FK), order_date, status, total_amount |
| `order_items` | order_item_id (PK), order_id (FK), product_id (FK), quantity, unit_price |
| `payments` | payment_id (PK), order_id (FK), payment_date, amount, payment_status |

---

## 📝 SQL Features Implemented

### Core SQL
- ✅ Normalized schema with **Primary Keys**, **Foreign Keys**, and **CHECK constraints**
- ✅ **CRUD operations** — INSERT, SELECT, UPDATE, DELETE
- ✅ **Multi-table JOINs** — INNER JOIN, LEFT JOIN, 4-table JOIN

### Advanced SQL
- ✅ **CTEs (Common Table Expressions)** for readable, modular queries
- ✅ **Window Functions** — `RANK()`, `LAG()` for ranking and trend analysis
- ✅ **Subqueries** and **CASE expressions** for customer segmentation
- ✅ **Month-over-Month Revenue Growth** using LAG()
- ✅ **Running Total Revenue** using cumulative SUM

### Views & Optimization
- ✅ `v_monthly_sales` — Monthly revenue aggregation view
- ✅ `v_top_products` — Top products by units sold
- ✅ **6 Indexes** on high-frequency JOIN and filter columns
- ✅ `EXPLAIN ANALYZE` for query execution plan analysis

---

## ⚙️ Advanced Extensions

| Feature | Description |
|---|---|
| **Stored Procedure** | `checkout_order()` — Updates stock and marks order as COMPLETED |
| **Audit Trigger** | `trg_audit_orders` — Logs every order status change to `audit_orders` table |
| **Materialized View** | `mv_customer_lifetime_value` — Pre-aggregated CLV for fast BI queries |
| **Table Partitioning** | `orders_partitioned` — RANGE partitioning by `order_date` |
| **SCD Type 2** | Historical price tracking on `products` with `valid_from`, `valid_to`, `is_current` |

---

## 📈 Power BI Dashboard

A **4-page interactive dashboard** connected live to the PostgreSQL database.

### Pages

| Page | Key Visuals |
|---|---|
| **Summary** | Total Revenue KPI, Total Orders, Avg Order Value, Cancellation Rate %, Orders by Status (Donut), Revenue Over Time (Line), Top Customers (Bar) |
| **Sales Analysis** | Revenue by Category (Pie), Top Products by Units Sold, Running Total Revenue (Area), MoM Growth % (Line), Product-Category Matrix |
| **Customer Insights** | Payment Success Rate %, Customer Lifetime Value, Customers by City (Treemap), Customer Tier Distribution |
| **Transaction** | Full Payment Overview Table with conditional formatting |

### DAX Measures Created

```
Total Revenue          Completed Revenue       Total Orders
Avg Order Value        Cancellation Rate %     Total Units Sold
Category Revenue       Payment Success Rate %  Customer Lifetime Value
MoM Growth %           Running Total Revenue   Customer Tier (Segmentation)
```

---

## 🚀 How to Run This Project

### Prerequisites
- PostgreSQL 18+ installed
- pgAdmin 4 installed
- Power BI Desktop installed

### Step 1: Set Up the Database
1. Open **pgAdmin 4**
2. Create a new database called `sales_order_analytics`
3. Open the Query Tool on that database
4. Run the SQL files **in order** (01 → 07)

### Step 2: Connect Power BI
1. Open **Power BI Desktop**
2. Click **Home → Get Data → PostgreSQL database**
3. Enter:
   - Server: `localhost`
   - Database: `sales_order_analytics`
4. Select all tables and views → Click **Load**

> Full connection guide available in `PowerBI_Tableau_Integration_Guide.md`

---

## 📊 Dataset

The project uses a realistic synthetic dataset generated to reflect real-world sales patterns:

| Table | Row Count |
|---|---|
| customers | 50 |
| products | 20 |
| orders | 150 |
| order_items | 150+ |
| payments | 150 |

---

## 🎯 Key Learnings

- Designing normalized relational schemas for production-like use cases
- Writing efficient SQL with CTEs and Window Functions
- Implementing database automation with Triggers and Stored Procedures
- Connecting a live SQL backend to Power BI using DirectQuery
- Building DAX time-intelligence measures for business analytics

---

## 👤 Author

**Muthukumaran P**  
Data Analytics Intern  
[LinkedIn Profile](#) | [GitHub Profile](#)

---

*Built as part of a Data Analytics Internship Project*
