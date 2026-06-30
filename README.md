# 📚 Online Book Retail Management System

A SQL Server project that demonstrates the implementation of an **Online Book Retail Management System** using CSV datasets and T-SQL queries. This project showcases practical SQL skills by performing data analysis, inventory management, customer analysis, and sales reporting through a collection of basic and advanced SQL queries.

This repository is intended for **SQL learning**, **interview preparation**, and **portfolio showcasing**.

---

## 📖 Project Overview

The **Online Book Retail Management System** simulates the operations of an online bookstore. The project uses three datasets—**Books**, **Customers**, and **Orders**—to analyze business data and answer real-world business questions using SQL.

The datasets are imported into Microsoft SQL Server from CSV files, and various SQL queries are executed to generate meaningful insights.

---

## ✨ Features

- 📚 Book Inventory Management
- 👤 Customer Management
- 🛒 Order Management
- 📊 Sales & Revenue Analysis
- 📦 Inventory Tracking
- 📈 Customer Purchase Analysis
- 📖 Genre-wise Sales Reporting
- 📉 Stock Availability Analysis

---

## 🛠️ Technologies Used

- Microsoft SQL Server
- T-SQL
- SQL Server Management Studio (SSMS)
- CSV Datasets

---

## 🗄️ Database Tables

### Books
Contains book-related information such as:
- Book ID
- Title
- Author
- Genre
- Price
- Published Year
- Stock

### Customers
Contains customer details including:
- Customer ID
- Name
- City
- Country

### Orders
Stores order information such as:
- Order ID
- Customer ID
- Book ID
- Quantity
- Order Date
- Total Amount

---

## 📋 SQL Concepts Covered

### Basic SQL
- SELECT
- WHERE
- ORDER BY
- DISTINCT
- TOP
- BETWEEN
- Aggregate Functions (`SUM`, `AVG`, `COUNT`)

### Intermediate SQL
- INNER JOIN
- LEFT JOIN
- GROUP BY
- HAVING
- ISNULL

### Business-Oriented Queries
- Retrieve books by genre
- Find books published after a specific year
- List customers from a particular country
- Retrieve orders within a date range
- Calculate total stock available
- Find the most expensive book
- Identify customers ordering multiple quantities
- Retrieve high-value orders
- Display available genres
- Find books with the lowest stock
- Calculate total revenue

### Advanced SQL Queries
- Total books sold by genre
- Average price of books by genre
- Customers with multiple orders
- Most frequently ordered books
- Top expensive books by genre
- Books sold by each author
- Cities with high-spending customers
- Highest spending customer
- Remaining inventory after fulfilling orders

---

## 📁 Repository Structure

```
Online-Book-Retail-Management-System/
│
├── Books.csv
├── Customers.csv
├── Orders.csv
├── Online_Book_Retail_Management_All_Queries.sql
└── README.md
```

---

## 🚀 Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/your-username/Online-Book-Retail-Management-System.git
```

### 2. Open SQL Server Management Studio (SSMS)

Create a new SQL Server database.

### 3. Import the CSV Files

Import the following datasets into your database:

- `Books.csv`
- `Customers.csv`
- `Orders.csv`

You can use:
- SQL Server Import and Export Wizard
- Import Flat File Wizard

### 4. Execute SQL Queries

Run the file:

```
Online_Book_Retail_Management_All_Queries.sql
```

to execute all the SQL queries included in this project.

---

## 🎯 Learning Outcomes

This project demonstrates practical experience with:

- SQL Server
- T-SQL
- Database Design
- Data Import from CSV Files
- Data Retrieval
- Aggregate Functions
- SQL Joins
- GROUP BY & HAVING
- Sales Analysis
- Inventory Management
- Customer Analytics
- Business Reporting

---

## 💼 Use Cases

This project is useful for:

- SQL Interview Preparation
- Database Management Practice
- Learning SQL Server
- College & Academic Projects
- Data Analysis Practice
- GitHub Portfolio Showcase
