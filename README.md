# SQL Data Science Practice Scripts

> A curated collection of SQL practice files for learning and experimenting with SQL concepts, database design, joins, data manipulation, and transformations. This repository is designed for learners at all levels, from SQL beginners to advanced practitioners seeking to strengthen their query optimization and analytical skills.

---

## Table of Contents

- [Overview](#overview)
- [Repository Contents](#repository-contents)
- [Quick Start](#quick-start)
- [File Summary](#file-summary)
- [Tips & Best Practices](#tips--best-practices)

---

## Overview

This repository contains comprehensive SQL examples and training scripts covering:

- SQL fundamentals and best practices: Learn essential SELECT statements, WHERE clauses, and basic filtering techniques
- Data Definition Language (DDL): Schema design, table creation, constraints, and relationship modeling
- Data Manipulation Language (DML): INSERT, UPDATE, DELETE operations with practical examples
- Join operations and relational queries: INNER, LEFT, RIGHT, FULL OUTER joins with multiple practice scenarios
- Conditional logic and filtering: Advanced WHERE clauses, CASE statements, and logical operators
- Date, string, and numeric transformations: Built-in functions for data manipulation and formatting
- Common Table Expressions (CTEs): Recursive and non-recursive CTEs for query organization
- Window functions: Advanced analytics using ROW_NUMBER, RANK, LAG, LEAD, and aggregate functions
- Subqueries and advanced techniques: Scalar subqueries, correlated subqueries, and performance optimization

> **Note:** Most files are intended for use with a **MySQL-compatible environment** (MySQL 5.7+, MySQL 8.0), though the patterns and techniques apply broadly to other SQL dialects including PostgreSQL, SQL Server, and SQLite. Some SQL syntax may require minor adjustments when running on different database systems.

---

## Repository Contents

The files are organized into five learning categories. Each category builds on the previous one, creating a progressive learning path from fundamentals to advanced techniques.

### Beginner & Fundamentals
- `Basic Queries.txt` - Quick reference for SQL query examples and syntax guide. Contains common query patterns and snippets for quick lookup.
- `SQL_basics.sql` - Foundational SQL SELECT statements, filtering techniques, column selection, and basic query patterns suitable for beginners.
- `Conditionals.sql` - Conditional logic examples with CASE expressions, IF statements, and complex WHERE clause logic for advanced filtering.

### Schema & Data Definition
- `DDL.sql` - Data Definition Language statements demonstrating star-schema design with dimension and fact tables. Includes best practices for dimensional modeling used in data warehouses.
- `Insert_script.sql` - Sample data population scripts for the Real_Sales analytics database. Contains complete INSERT statements with realistic business data across all dimension and fact tables.

### Joins & Relationships
- `Joins_Practise.sql` - E-commerce database schema with multiple related tables (customers, employees, categories, products, orders, order_items). Includes hands-on join exercises for practice.
- `SQL_join.sql` - Join operation patterns including INNER JOIN, LEFT JOIN, RIGHT JOIN, FULL OUTER JOIN, and UNION operations with practical examples.
- `joins_practise_questions.sql` - Practice questions focused on join operations with varying complexity levels to test understanding.
- `joins_practise_queestions.sql` - Additional join practice scenarios covering edge cases and advanced join patterns.

### Data Manipulation
- `SQL_DML.sql` - Data Manipulation Language operations including INSERT, UPDATE, DELETE, and MERGE statements. Contains verification SELECT queries to confirm data changes.
- `Transformations.sql` - Data transformation techniques using arithmetic expressions, built-in functions, and derived columns for complex calculations.

### Advanced Queries
- `CTE.sql` - Common Table Expressions fundamentals including non-recursive CTEs and CTE patterns for readable, modular queries
- `CTE_practise.sql` - CTE practice exercises with real-world scenarios for improving query structure and readability
- `CTE_questions.sql` - CTE-based challenges to test understanding of recursive and non-recursive Common Table Expressions
- `SubQueries.sql` - Subquery patterns and techniques including scalar subqueries, correlated subqueries, and various clause applications
- `Windows_Function.sql` - Window functions for advanced analytics including ROW_NUMBER, RANK, DENSE_RANK, LAG, LEAD, and aggregate functions

---

## Quick Start Guide

Follow these steps to begin working with the practice scripts:

1. **Choose a file** from the categories above based on your current learning goals and skill level
2. **Open in your SQL client** (recommended: MySQL Workbench, pgAdmin, DBeaver, or VS Code with SQL extensions)
3. **Review database creation statements**: Check all `CREATE DATABASE`, `USE`, and table creation statements before execution
4. **Execute section-by-section**: Run scripts in logical sections to observe results and understand each query's behavior and output
5. **Experiment and modify**: Change sample values, table structures, and query logic to deepen your understanding
6. **Compare results**: Review query output and explain why results are produced

### System Requirements and Prerequisites
- **SQL Client**: MySQL Workbench (recommended), pgAdmin, DBeaver, Visual Studio Code with SQL extensions, or any compatible SQL IDE
- **Database Server**: MySQL 5.7+ or MySQL 8.0, or any compatible SQL database system
- **Storage**: Approximately 50MB free disk space for sample databases
- **Knowledge**: Basic familiarity with SQL syntax recommended for intermediate/advanced files

---

## Detailed File Summary

### `Basic Queries.txt`
This file serves as a comprehensive quick reference guide for SQL query examples and syntax notes. Contains commonly used query patterns, basic syntax examples, and lookup snippets. Perfect for quick reference while learning new concepts. Includes comments explaining each query's purpose.

**Skill Level**: Beginner | **Duration**: 15-30 minutes

### `Conditionals.sql`
Covers conditional logic in SQL using CASE expressions, IF statements, and complex WHERE clause logic. Demonstrates how to create conditional branching for advanced filtering. Includes examples of simple CASE, searched CASE, and nested conditional logic for multi-level filtering.

**Skill Level**: Beginner to Intermediate | **Duration**: 45-60 minutes

**Key Concepts**:
- CASE WHEN THEN ELSE statements
- IF() function for conditional evaluation
- Complex WHERE clause logic with AND/OR operators
- CASE for multiple conditions

### `DDL.sql`
Demonstrates Data Definition Language statements with a focus on star-schema design for analytics. Shows best practices for dimensional modeling used in data warehouses. Includes creation of dimension tables (temporal, customer, product, store) and fact tables with appropriate keys and relationships.

**Database Schema**:
```
Dimension Tables:
  - dim_date: Temporal dimension with date attributes
  - dim_customer: Customer dimension with demographics
  - dim_product: Product dimension with categorization
  - dim_store: Store location dimension
Fact Table:
  - fact_sales: Central fact table with sales metrics
```

**Skill Level**: Intermediate | **Duration**: 60-90 minutes

### `Insert_script.sql`
Contains complete sample data population scripts for the Real_Sales analytics database. Populates all dimension tables with realistic business data and generates comprehensive fact table records. Essential foundation for practicing queries with meaningful data.

**Skill Level**: Beginner to Intermediate | **Duration**: 30-45 minutes

**Data Generated**:
- 1000+ customer records across multiple regions
- 500+ product records with multiple categories
- 50+ store locations
- 10000+ sales transactions with various attributes

### `Joins_Practise.sql`
Provides a complete e-commerce database schema with multiple related tables for hands-on join practice. Includes practical join exercises of increasing complexity. Demonstrates relationships between customers, employees, product categories, products, orders, and order items.

**Database Tables**:
- `customers`: Customer information and contact details
- `employees`: Staff records with hierarchy
- `categories`: Product categorization
- `products`: Product inventory and pricing
- `orders`: Customer orders and transaction details
- `order_items`: Line-item details for each order

**Skill Level**: Intermediate | **Duration**: 90-120 minutes

### `SQL_basics.sql`
Provides foundational SQL examples covering SELECT statements, filtering techniques, column selection, and basic query patterns. Designed for SQL beginners transitioning from SQL fundamentals. Includes simple queries with increasing complexity.

**Topics Covered**:
- SELECT with specific columns vs. SELECT *
- WHERE clause filtering with single and multiple conditions
- ORDER BY for result sorting
- LIMIT for result restrictions
- Column aliases and computed columns
- NULL handling with IS NULL / IS NOT NULL

**Skill Level**: Beginner | **Duration**: 60-90 minutes

### `SQL_DML.sql`
Focuses on Data Manipulation Language operations including INSERT, UPDATE, DELETE, and verification SELECT queries. Demonstrates how to modify data and verify changes with follow-up queries. Essential for understanding data modification workflows.

**Operations Covered**:
- INSERT INTO statements with single and multiple rows
- UPDATE with WHERE conditions
- DELETE with selective conditions
- SELECT queries to verify modifications
- Transaction concepts for data consistency

**Skill Level**: Intermediate | **Duration**: 60-90 minutes

### `SQL_join.sql`
Offers comprehensive join practice using customer, order, product, and order item tables. Covers all major join types with practical examples and use cases. Includes join performance considerations.

**Join Types Covered**:
- INNER JOIN: Only matching records from both tables
- LEFT JOIN: All records from left table, matching from right
- RIGHT JOIN: All records from right table, matching from left
- FULL OUTER JOIN: All records from both tables
- CROSS JOIN: Cartesian product of both tables
- Self joins for hierarchical data
- Multiple table joins (3+ tables)
- UNION operations for combining result sets

**Skill Level**: Intermediate | **Duration**: 120-150 minutes

### `Transformations.sql`
Shows comprehensive data transformation techniques using arithmetic expressions, built-in functions, and derived columns for complex calculations. Demonstrates formatting, type conversions, and calculated fields.

**Transformation Techniques**:
- Arithmetic expressions: `(price * quantity) AS total`
- Date functions: `NOW()`, `YEAR()`, `MONTH()`, `DATEDIFF()`, `DATE_ADD()`
- String functions: `CONCAT()`, `LENGTH()`, `LOWER()`, `UPPER()`, `SUBSTRING()`
- Numeric functions: `ROUND()`, `FLOOR()`, `CEILING()`, `ABS()`
- Type casting and conversions: `CAST()`, `CONVERT()`
- NULL handling: `COALESCE()`, `IFNULL()`
- Derived columns and alias usage

**Skill Level**: Intermediate | **Duration**: 90-120 minutes

### `CTE.sql`
Introduces Common Table Expressions (CTEs) fundamentals with a focus on non-recursive CTEs. Demonstrates how CTEs improve query readability and maintainability. Shows simple CTE patterns and best practices.

**Topics Covered**:
- CTE syntax and structure (WITH...AS)
- Non-recursive CTEs for query organization
- Multiple CTEs in single query
- Advantages over subqueries (readability, reusability)
- Basic CTE naming conventions

**Skill Level**: Intermediate to Advanced | **Duration**: 60-90 minutes

### `CTE_practise.sql`
Provides CTE practice exercises with real-world scenarios for improving query structure and code readability. Includes exercises progressing from simple to complex CTE usage.

**Practice Scenarios**:
- Sales aggregation with CTEs
- Customer segmentation using CTEs
- Ranking and filtering with CTEs
- Multi-level data hierarchy representation
- Performance optimization using CTEs

**Skill Level**: Intermediate to Advanced | **Duration**: 120-150 minutes

### `CTE_questions.sql`
Contains CTE-based challenges designed to test understanding of both recursive and non-recursive Common Table Expressions. Includes progressive complexity levels for skill development.

**Challenge Types**:
- Non-recursive CTE challenges
- Recursive CTE patterns (hierarchical data)
- Multiple CTE combinations
- Performance considerations
- Real-world business scenarios

**Skill Level**: Advanced | **Duration**: 120-180 minutes

### `SubQueries.sql`
Coverages subquery patterns and techniques including scalar subqueries, correlated subqueries, and subqueries in various clauses. Demonstrates when to use subqueries vs. joins for optimal query performance.

**Subquery Types**:
- Scalar subqueries (single value return)
- Row subqueries (single row, multiple columns)
- Table subqueries (multiple rows and columns)
- Correlated subqueries (referencing outer query)
- Subqueries in SELECT, FROM, WHERE, and HAVING clauses
- IN, EXISTS, ANY, ALL operators with subqueries
- Subquery performance optimization

**Skill Level**: Advanced | **Duration**: 120-150 minutes

### `Windows_Function.sql`
Introduces window functions for advanced analytics including ROW_NUMBER, RANK, DENSE_RANK, LAG, LEAD, and aggregate window functions. Essential for complex analytical queries and reporting.

**Window Functions Covered**:
- Row numbering: ROW_NUMBER(), RANK(), DENSE_RANK()
- Aggregate functions as window functions: SUM(), AVG(), COUNT(), MIN(), MAX()
- Lead/Lag functions: LAG(), LEAD() for time-series analysis
- PARTITION BY for data segmentation
- ORDER BY for window ordering
- FRAME clause for row range specification
- Real-world analytics examples (running totals, year-over-year comparisons)

**Skill Level**: Advanced | **Duration**: 150-180 minutes

### `joins_practise_questions.sql`
Contains progressive practice questions focused on join operations with varying complexity levels. Designed to test and reinforce join understanding through practical exercises.

**Question Categories**:
- Basic joins (INNER, LEFT, RIGHT)
- Complex multi-table joins
- Self joins and hierarchical queries
- Join optimization challenges
- Real-world business scenarios

**Skill Level**: Intermediate to Advanced | **Duration**: 150-200 minutes

### `joins_practise_queestions.sql`
Provides additional join practice scenarios for comprehensive join practice and mastery. Covers edge cases, performance considerations, and advanced join patterns.

**Skill Level**: Intermediate to Advanced | **Duration**: 120-180 minutes

### ❓ `joins_practise_questions.sql`
**Practice questions** focused on join operations with varying complexity levels.

### ❓ `joins_practise_queestions.sql`
**Additional join scenarios** for comprehensive join practice and mastery.

---

## Tips & Best Practices

### Before Running Scripts
1. Always review `CREATE DATABASE` and `DROP TABLE` statements to understand what will be created or removed
2. Check for existing databases/tables that might be overwritten. Back up important data first
3. Ensure your database user has sufficient permissions for DDL and DML operations
4. Test scripts on a development database before running on production systems
5. Read file headers and comments which often contain important setup instructions

### Learning Strategy
1. **Foundation Phase**: Start with `Basic Queries.txt` and `SQL_basics.sql` to understand SELECT statements and basic syntax
2. **Schema Design Phase**: Move to `DDL.sql` and `Insert_script.sql` to understand table design and data relationships
3. **Data Manipulation Phase**: Practice with `SQL_DML.sql` to understand INSERT, UPDATE, DELETE operations
4. **Relationship Phase**: Progress to `Joins_Practise.sql` and `SQL_join.sql` for relational concepts and multiple table queries
5. **Advanced Phase**: Advance to `CTE.sql`, `SubQueries.sql`, and `Windows_Function.sql` for complex analytical queries
6. **Mastery Phase**: Use practice questions (`joins_practise_questions.sql`, `CTE_questions.sql`) to test your comprehensive understanding

### Customization and Experimentation
- Modify table structures and sample data for your own business scenarios
- Adapt queries to your specific database dialect (MySQL, PostgreSQL, SQL Server, etc.)
- Create indexes to explore performance implications and query optimization
- Add EXPLAIN or EXPLAIN ANALYZE to understand query execution plans and identify bottlenecks
- Combine patterns from multiple files to solve complex real-world problems

### Environment Compatibility Notes

| Feature | MySQL 5.7+ | MySQL 8.0+ | PostgreSQL | SQL Server | SQLite |
|---------|-----------|-----------|-----------|-----------|--------|
| Basic Queries | Full | Full | Full | Full | Full |
| DDL Statements | Full | Full | Full | Full | Full |
| DML Operations | Full | Full | Full | Full | Full |
| INNER/LEFT/RIGHT Joins | Full | Full | Full | Full | Full |
| Date Functions | Full | Full | Minor differences | Minor differences | Limited |
| String Functions | Full | Full | Minor differences | Minor differences | Limited |
| Window Functions | Partial (8.0+) | Full | Full | Full | Limited |
| CTEs | Partial (5.7+) | Full | Full | Full | Limited |
| Recursive CTEs | No | Yes | Yes | Yes | Limited |

**Compatibility Notes**:
- **MySQL 5.7**: Most basic queries work; CTEs and window functions limited
- **MySQL 8.0**: Full support for CTEs and window functions; recommended for advanced scripts
- **PostgreSQL**: Excellent support for advanced features; minor syntax differences in functions
- **SQL Server**: Full feature support; syntax differences in date/string functions
- **SQLite**: Basic queries work; limited support for advanced features

---

## Structured Learning Path Recommendation

The following 6-week learning plan provides a progressive approach from SQL fundamentals to advanced analytics:

### **Week 1: SQL Fundamentals**
- **Monday-Tuesday**: `Basic Queries.txt` - Review basic syntax and common patterns
- **Wednesday**: `SQL_basics.sql` - Practice SELECT, filtering, and basic operations
- **Thursday-Friday**: `Conditionals.sql` - Learn conditional logic and complex filtering
- **Practice**: Write 5-10 basic queries without reference materials
- **Expected Outcome**: Comfortable with SELECT, WHERE, ORDER BY, and basic filtering

### **Week 2: Schema Design and Data Modification**
- **Monday**: `DDL.sql` - Study table design and star-schema concepts
- **Tuesday-Wednesday**: `Insert_script.sql` - Understand data population and relationships
- **Thursday-Friday**: `SQL_DML.sql` - Practice INSERT, UPDATE, DELETE operations
- **Practice**: Design a simple 3-table schema for a topic of your choice
- **Expected Outcome**: Understand relational design and data modification patterns

### **Week 3: Join Operations (Critical Foundation)**
- **Monday-Tuesday**: `SQL_join.sql` - Learn all join types with examples
- **Wednesday-Thursday**: `Joins_Practise.sql` - Practice multiple join scenarios
- **Friday**: `joins_practise_questions.sql` - Solve progressive join challenges
- **Practice**: Master joining 2, 3, and 4 tables together
- **Expected Outcome**: Expert-level understanding of all join types and when to use them

### **Week 4: Data Transformations and Subqueries**
- **Monday-Tuesday**: `Transformations.sql` - Learn date, string, and numeric functions
- **Wednesday-Thursday**: `SubQueries.sql` - Study subquery patterns and techniques
- **Friday**: Practice combining transformations with subqueries
- **Practice**: Write 10+ queries using different transformation functions
- **Expected Outcome**: Proficiency with data transformation and subquery techniques

### **Week 5: Common Table Expressions**
- **Monday**: `CTE.sql` - Learn CTE syntax and structure
- **Tuesday-Wednesday**: `CTE_practise.sql` - Practice with real-world scenarios
- **Thursday-Friday**: `CTE_questions.sql` - Solve progressive CTE challenges
- **Practice**: Rewrite 5 complex queries using CTEs instead of subqueries
- **Expected Outcome**: Comfortable writing complex queries with CTEs for improved readability

### **Week 6: Advanced Analytics and Mastery**
- **Monday-Tuesday**: `Windows_Function.sql` - Learn window functions and analytics
- **Wednesday-Thursday**: Advanced practice combining joins, CTEs, and window functions
- **Friday**: `joins_practise_queestions.sql` - Final comprehensive practice
- **Practice**: Write 5 complete analytical queries from business requirements
- **Expected Outcome**: Able to write complex analytical queries using advanced SQL features

### **Recommended Study Pace**
- **Beginner (0-3 months experience)**: Follow the 6-week structured path at a steady pace
- **Intermediate (3-12 months experience)**: Compress weeks 1-3, focus on weeks 4-6
- **Advanced (12+ months experience)**: Use files as reference; focus on Windows_Function.sql and advanced challenges

---

## Important Notes and Guidelines

1. **Learning Approach**: These scripts are designed for active learning and practice. Don't just read them—execute each query, modify values, and observe the results to develop intuition.

2. **Database Selection**: Use MySQL-compatible syntax for best results across all files. PostgreSQL users should note minor function differences.

3. **Optimization Strategy**: Start with correct query execution and gradually explore optimization techniques as you become more comfortable.

4. **Foundation Skills**: Join operations form the critical foundation for all advanced SQL. Master joins completely before moving to advanced topics.

5. **Real-World Application**: Adapt scripts to your own datasets and business scenarios. The best learning comes from solving actual problems.

6. **Backup Before Testing**: Always backup your data before running DDL or DML scripts, especially when first learning.

7. **Performance Awareness**: As you progress, learn to use EXPLAIN/EXPLAIN ANALYZE to understand query performance.

---

## Additional Resources for Further Learning

After completing these practice files, consider:
- Exploring database indexing strategies for query optimization
- Learning query optimization techniques and execution plan analysis
- Studying advanced database concepts like transactions and locking
- Practicing with large datasets to understand performance implications
- Contributing to open-source database projects
- Taking formal database design and optimization courses

---

**Happy Learning and SQL Mastery!**
