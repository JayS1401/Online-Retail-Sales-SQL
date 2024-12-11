create database online_retail;
use online_retail;
SELECT * FROM online_retail.`online retail`;
select StockCode, Description, sum(Quantity*UnitPrice) as total_revenue from online_retail.`online retail`  group by StockCode,Description order by total_revenue desc limit 10;
select CustomerID , count(Distinct ï»¿InvoiceNo) as transaction_count from online_retail.`online retail` group by CustomerID order by transaction_count desc limit 5;
select Country, sum(Quantity*Unitprice) as TotalRevenue from online_retail.`online retail` group by Country order by TotalRevenue desc;
select year(InvoiceDate) as year, month(InvoiceDate) as month, sum(Quantity*Unitprice) as total_revenue from online_retail.`online retail` group by year(InvoiceDate), month(InvoiceDate) order by year,month;
select ï»¿InvoiceNo, sum(Quantity) as total_item_sold, sum(Quantity*Unitprice) as total_revenue from  online_retail.`online retail` group by ï»¿InvoiceNo order by total_revenue desc;