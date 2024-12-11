# Online Retail Database

## Overview
This project consists of an SQL database named `online_retail`, which contains data related to online retail transactions. The database allows users to perform various queries to analyze sales data, customer behavior, and revenue generation.

## Database Structure
The `online_retail` database includes a single table:

- `online retail`: This table contains fields such as:
  - `StockCode`: Unique identifier for each product.
  - `Description`: Description of the product.
  - `Quantity`: Number of units sold.
  - `UnitPrice`: Price per unit of the product.
  - `CustomerID`: Unique identifier for each customer.
  - `InvoiceNo`: Unique identifier for each transaction.
  - `InvoiceDate`: Date of the transaction.
  - `Country`: Country where the customer is located.

## SQL Queries
Here are some useful SQL queries to extract insights from the database:

1. **Select all records:**
   ```sql
   SELECT * FROM online_retail.`online retail`;
Top 10 products by revenue:

sql


SELECT StockCode, Description, SUM(Quantity * UnitPrice) AS total_revenue 
FROM online_retail.`online retail`  
GROUP BY StockCode, Description 
ORDER BY total_revenue DESC 
LIMIT 10;
Top 5 customers by transaction count:

sql


SELECT CustomerID, COUNT(DISTINCT InvoiceNo) AS transaction_count 
FROM online_retail.`online retail` 
GROUP BY CustomerID 
ORDER BY transaction_count DESC 
LIMIT 5;
Revenue by country:

sql


SELECT Country, SUM(Quantity * UnitPrice) AS TotalRevenue 
FROM online_retail.`online retail` 
GROUP BY Country 
ORDER BY TotalRevenue DESC;
Monthly revenue data:

sql


SELECT YEAR(InvoiceDate) AS year, MONTH(InvoiceDate) AS month, 
SUM(Quantity * UnitPrice) AS total_revenue 
FROM online_retail.`online retail` 
GROUP BY YEAR(InvoiceDate), MONTH(InvoiceDate) 
ORDER BY year, month;
Total items sold and revenue per invoice:

sql


SELECT InvoiceNo, SUM(Quantity) AS total_item_sold, 
SUM(Quantity * UnitPrice) AS total_revenue 
FROM online_retail.`online retail` 
GROUP BY InvoiceNo 
ORDER BY total_revenue DESC;
Getting Started
To use the online_retail database, ensure you have a compatible SQL environment set up. You may import the SQL schema and data into your database management system (DBMS) of choice.
