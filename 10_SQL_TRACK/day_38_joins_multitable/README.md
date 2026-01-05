# Day 38 – JOINs & Multi-Table Analytics (SQLite)

## VS Code – Zero to Hero | Module 06

### Objective

Implement multi-table analytics using SQL JOINs and relational modeling concepts inside VS Code with SQLite.

This day focuses on moving from single-table queries to **real-world analytical queries** using fact and dimension tables.

---

## Data Model

### Fact Table

- **sales**
  - order_id
  - order_date
  - quantity
  - revenue
  - customer_id (FK)
  - product_id (FK)

### Dimension Tables

- **customers**

  - customer_id (PK)
  - customer_name
  - region

- **products**
  - product_id (PK)
  - product_name
  - category

---

## What Was Implemented

- Extended existing `sales` table with foreign keys
- Created dimension tables (`customers`, `products`)
- Populated dimension data
- Mapped fact records using foreign keys
- Executed multi-table JOIN queries
- Filtered only analytics-ready records (non-NULL keys)

---

## SQL Concepts Practiced

- Primary Key & Foreign Key thinking
- INNER JOIN for analytical reporting
- LEFT JOIN for data completeness checks
- Fact–Dimension (Star Schema) modeling
- Data quality handling using NULL filters

---

## Key Analytics Queries

- Sales with customer & product attributes
- All customers including those without sales
- Revenue and quantity by region and product

---

## Output Summary

- Clean JOIN output with valid relational mapping
- Only analytics-ready records included
- Result suitable for BI tools (Power BI, Excel, Python)

---

## Professional Insight

In real analytics projects:

- Fact tables often contain partial or unmapped data
- JOIN outputs must filter invalid relationships
- Clean relational logic is critical for dashboards and reporting

This exercise mirrors **real Data Analyst / BI Engineer workflows**.

---

## Next Step

**Day 39 – SQL VIEWs (Reusable Analytics Layer)**
