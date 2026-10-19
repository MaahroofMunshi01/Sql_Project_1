# SQL Project - 1: Data Digger

## 📌 Project Overview

**Data Digger** is a beginner-level SQL project developed using MySQL. The main objective of this project is to practice SQL queries for creating databases and tables, inserting records, updating and deleting data, filtering records, sorting data, and performing aggregate calculations.

This project focuses on managing customer information, orders, product details, and order details using relational database concepts.

## 🎯 Objectives

- Create and manage a database using MySQL.
- Create tables with primary keys and foreign key constraints.
- Insert, retrieve, update, and delete records.
- Filter and sort data using `WHERE`, `BETWEEN`, and `ORDER BY`.
- Perform aggregate calculations using `SUM()`, `AVG()`, `MAX()`, `MIN()`, and `COUNT()`.
- Retrieve recent orders using date functions.
- Understand relationships between multiple tables.

## 🛠️ Technologies Used

- **Database:** MySQL
- **Tool:** MySQL Workbench
- **Language:** SQL

## 🗂️ Database Structure

The project uses the `rnw` database and contains four main tables.

| Table Name | Description |
|---|---|
| `tbl_Customers` | Stores customer ID, name, email, and address. |
| `tbl_Orders` | Stores order ID, customer ID, order date, and total amount. |
| `tbl_Products` | Stores product ID, product name, price, and stock quantity. |
| `tbl_orderdetails` | Stores order details, product IDs, quantities, and subtotals. |

### Table Relationships

- `tbl_Customers` → `tbl_Orders`: One customer can place multiple orders.
- `tbl_Orders` → `tbl_orderdetails`: One order can contain multiple order-detail records.
- `tbl_Products` → `tbl_orderdetails`: A product can appear in multiple order details.

Primary and foreign keys help maintain relationships and data integrity across the tables.

## 💻 SQL Concepts Covered

### 1. Database and Table Management
- `CREATE DATABASE`
- `USE`
- `CREATE TABLE`
- Primary keys and foreign keys
- `AUTO_INCREMENT`

### 2. Data Manipulation
- `INSERT INTO`
- `UPDATE`
- `DELETE`

### 3. Data Retrieval and Filtering
- `SELECT`
- `WHERE`
- `BETWEEN`
- `ORDER BY`
- `LIMIT`

### 4. Aggregate Functions
- `SUM()` – Calculates total revenue from order details.
- `AVG()` – Calculates the average order amount.
- `MAX()` – Finds the highest price or amount.
- `MIN()` – Finds the lowest price or amount.
- `COUNT()` – Counts matching records.

### 5. Date Functions
- `CURDATE()`
- `INTERVAL`
- Date filtering for orders placed within the last 30 days.

## 📊 Key Operations Performed

- Retrieved all customer records and filtered customers by name.
- Updated a customer's address and deleted a customer using their ID.
- Retrieved orders placed by a specific customer.
- Updated and deleted orders.
- Calculated average, highest, and lowest order amounts.
- Sorted products by price in descending order.
- Updated product prices and removed out-of-stock products.
- Retrieved products within a specified price range.
- Retrieved order details for a specific order.
- Calculated total revenue from order-detail subtotals.
- Retrieved the top three order-detail records by quantity.
- Counted sales records for products.

## 🚀 How to Run the Project

1. Install and open MySQL Workbench.
2. Connect to your MySQL server.
3. Create a new SQL script.
4. Copy the SQL queries from the project into the script.
5. Execute the queries in the correct order, starting with database and table creation.
6. Run the `SELECT` queries to verify the results.

**Note:** Run the script in the correct sequence because the tables use foreign key relationships. Also, some queries modify or delete records, so execute them carefully.

## 📚 Learning Outcomes

Through this project, I practiced:

- Writing basic and intermediate SQL queries.
- Understanding relational database design.
- Working with primary and foreign keys.
- Managing records across related tables.
- Using aggregate functions for data analysis.
- Filtering and sorting data to extract useful information.

## 👨‍💻 Author

**Maahroof Munshi**

## ⭐ Conclusion

Data Digger is a practical SQL learning project that demonstrates fundamental database management and data analysis operations using MySQL. It provides a foundation for developing more advanced SQL projects and working with real-world datasets.
