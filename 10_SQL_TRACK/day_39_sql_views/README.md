# Day 39 – SQL VIEWs (Reusable Analytics Layer)

## VS Code – Zero to Hero | Module 06

### Objective

Design a reusable analytics layer using SQL VIEWs to support reporting, dashboards, and BI tools without rewriting complex JOIN logic.

This day focuses on separating **raw data tables** from **analytics-ready datasets**.

---

## Views Created

### 1) vw_sales_analytics

A base analytics view combining:

- sales (fact table)
- customers (dimension)
- products (dimension)

  **Purpose**

- Provides a clean, join-ready dataset
- Filters only valid (non-NULL key) records
- Intended for dashboards and ad-hoc analysis

---

### 2) vw_region_product_summary

An aggregated analytics view providing:

- Total units sold
- Total revenue
- Grouped by region and product

**Purpose**

- KPI reporting
- Summary-level analytics
- BI-friendly dataset

---

## Key Concepts Practiced

- Analytics layer design
- Reusable SQL logic using VIEWs
- Separation of raw tables and reporting datasets
- Fact–dimension (star schema) thinking
- BI-oriented SQL modeling

---

## Why SQL VIEWs Matter

In real-world analytics systems:

- BI tools connect to VIEWs, not raw tables
- VIEWs reduce query duplication
- Logic is centralized and easier to maintain
- Performance and consistency improve

This mirrors how **Data Analysts, BI Engineers, and Analytics Engineers** work in production systems.

---

## Tools Used

- SQLite
- SQLTools (VS Code)

---

## Next Step

**Day 40 – Indexing & Performance Basics**
