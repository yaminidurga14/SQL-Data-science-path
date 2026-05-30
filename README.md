# SQL Data Science Practice Scripts

A curated collection of SQL practice files for learning and experimenting with SQL concepts, database design, joins, data manipulation, and transformations.

## Table of Contents

- [Overview](#overview)
- [Repository Contents](#repository-contents)
- [How to Use](#how-to-use)
- [File Summary](#file-summary)
- [Notes](#notes)

## Overview

This repository contains SQL examples and training scripts covering:

- SQL fundamentals
- Data Definition Language (DDL)
- Data Manipulation Language (DML)
- Join operations and relational queries
- Conditional logic and filtering
- Date, string, and numeric transformations

Most files are intended for use with a MySQL-compatible environment, though the patterns apply broadly to other SQL dialects.

## Repository Contents

- `Basic Queries.txt`
- `Conditionals.sql`
- `DDL.sql`
- `Insert_script.sql`
- `Joins_Practise.sql`
- `SQL_basics.sql`
- `SQL_DML.sql`
- `SQL_join.sql`
- `Transformations.sql`
- `CTE.sql`
- `CTE_practise.sql`
- `CTE_questions.sql`
- `SubQueries.sql`
- `Windows_Function.sql`
- `joins_practise_questions.sql`
- `joins_practise_queestions.sql`

## How to Use

1. Open the desired SQL file in your SQL client.
2. Review any `CREATE DATABASE`, `USE`, or table creation statements before executing.
3. Run the script section-by-section to observe results and understand each query.
4. Modify sample values or table structures to practice your own variations.

## File Summary

### `Basic Queries.txt`
A reference file with general SQL query examples and notes. Useful for quick lookup and learning basic syntax.

### `Conditionals.sql`
Contains conditional logic examples for filtering and branching, including `CASE`, `IF`, and complex `WHERE` clauses.

### `DDL.sql`
Demonstrates Data Definition Language statements and a star-schema design for analytics.
Includes sample tables:
- `dim_date`
- `dim_customer`
- `dim_product`
- `dim_store`
- `fact_sales`

### `Insert_script.sql`
Builds and populates a sample analytics database called `Real_Sales`.
Includes inserts for dimension tables and a fact table with sales records.

### `Joins_Practise.sql`
Contains e-commerce sample tables and join exercises for practice with multiple join types.
Includes tables such as customers, employees, categories, products, orders, and order items.

### `SQL_basics.sql`
Provides foundational SQL examples for `SELECT`, filtering, column selection, and basic query patterns.

### `SQL_DML.sql`
Focuses on Data Manipulation Language operations such as `INSERT`, `UPDATE`, `DELETE`, and related select queries.

### `SQL_join.sql`
Offers join practice using customer, order, product, and order item tables.
Includes `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`, and `UNION` patterns.

### `Transformations.sql`
Shows data transformation examples with arithmetic expressions, date functions, string functions, and derived columns.
Covers functions such as `NOW()`, `YEAR()`, `MONTH()`, `DATEDIFF()`, `CONCAT()`, `LENGTH()`, and `LOWER()`.

## Notes

- Use a SQL client that supports MySQL-style syntax to run these scripts reliably.
- Review object creation statements before executing to avoid overwriting existing databases or tables.
- These scripts are designed for learning, so feel free to adapt them for your own practice scenarios.
