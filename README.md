# SQL Scripts Overview

This repository contains SQL practice scripts covering SQL basics, DDL, DML, joins, conditionals, and data transformations.

## Files

### `Basic Queries.txt`
- Contains general SQL query examples and notes.
- Not a SQL script file, but useful for quick reference and query ideas.

### `Conditionals.sql`
- Demonstrates SQL conditional logic and filtering.
- Likely contains examples for `CASE`, `IF`, or `WHERE` conditions (file header indicates conditionals).

### `DDL.sql`
- Data Definition Language examples.
- Creates and manages database objects.
- Includes `CREATE DATABASE`, `USE`, plus table creation examples for a sales star schema:
  - `dim_date`
  - `dim_customer`
  - `dim_product`
  - `dim_store`
  - `fact_sales`
- Includes notes on DDL command types and data types.

### `Insert_script.sql`
- Builds and populates a sample analytics database called `Real_Sales`.
- Creates dimension tables and a fact table.
- Inserts sample data for dates, customers, products, stores, and sales.

### `Joins_Practise.sql`
- Creates sample e-commerce tables such as customers, employees, categories, products, orders, and order items.
- Includes many join-related exercises and sample data.
- Useful for practicing `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`, `FULL JOIN`, and `UNION` concepts.

### `SQL_basics.sql`
- Contains basic query examples against the `real_sales` database.
- Demonstrates `SELECT`, column selection, `LIMIT`, `WHERE`, `AND`, `OR`, `IN`, and `NULL` filtering.
- Good for learning foundational SQL query syntax and row filtering.

### `SQL_DML.sql`
- Not yet inspected directly, but likely contains Data Manipulation Language examples such as `INSERT`, `UPDATE`, `DELETE`, and `SELECT`.

### `SQL_join.sql`
- Provides join practice with sample tables for customers, orders, products, and order items.
- Includes insert statements and join queries for `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`, and a `UNION` alternative for full joins.
- Includes edge-case rows for invalid foreign keys.

### `Transformations.sql`
- Demonstrates query transformations and expressions.
- Includes numeric calculations, rounding, and derived columns.
- Covers date functions such as `NOW()`, `UTC_TIMESTAMP()`, `YEAR()`, `MONTH()`, `DAYNAME()`, `ADDDATE()`, `SUBDATE()`, `DATEDIFF()`, `CAST()`, and `DATE_FORMAT()`.
- Shows string functions like `CONCAT()`, `LENGTH()`, and `LOWER()`.

## Notes

- Scripts in this repository are useful for practice with SQL syntax, database design, joins, filtering, and data transformations.
- Run each file in a SQL client that supports the syntax used (MySQL-style functions appear throughout these scripts).
- Some scripts include sample database and table creation statements that may overwrite existing objects, so review before execution.
