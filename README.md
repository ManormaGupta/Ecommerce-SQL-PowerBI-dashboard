# Ecommerce Database & Power BI Dashboard

An end-to-end Business Analytics project built using MySQL and Power BI. This project covers database design, data insertion, SQL analysis, and an interactive dashboard for an ecommerce business.

## Project Overview

This project simulates an ecommerce business with customers, products, and orders. The goal was to design a relational database, write analytical SQL queries, and visualize key business insights through an interactive Power BI dashboard.

## Tools Used

- MySQL Workbench (database design and querying)
- Power BI (data visualization and dashboard)
- MySQL Connector ODBC (to connect MySQL with Power BI)

## Database Schema

The database (`Ecommerce_db`) consists of three related tables:

**customers**
- customer_id (Primary Key)
- name
- city
- email
- gender

**products**
- product_id (Primary Key)
- product_name
- category
- price
- stock

**orders**
- order_id (Primary Key)
- customer_id (Foreign Key → customers)
- product_id (Foreign Key → products)
- quantity
- order_date
- status

## Key SQL Analysis

- Total sales calculation
- Category wise sales breakdown
- Delivered vs cancelled order counts
- Top customers by order volume and sales value

## Dashboard Features

The Power BI dashboard includes:
<img width="1218" height="680" alt="Screenshot 2026-06-30 054854" src="https://github.com/user-attachments/assets/e2e3695b-1bee-4c75-a6a5-dfc08cd06339" />

- Summary cards: total sales, total orders, delivered orders, total customers, total products
- Bar chart: sales by category
- Donut chart: customer distribution by gender
- Pie chart: delivered vs cancelled orders
- Line chart: order trend by year
- Gauge chart: total sales against target
- Map visual: customer distribution by city
- Table: top customers by sales
- Interactive slicers: city, year, and gender filters

## Key Insights

- Total sales: ₹2,79,900
- Total orders: 12 (10 delivered, 2 cancelled)
- Electronics and Fashion are the top performing categories
- Gungun Singh is the top customer by total sales value
- 
## Files in this Repository

- `Ecommerce_DataBase_Table.sql` — full SQL script (table creation, data insertion, and analysis queries)
- `dashboard.png` — Power BI dashboard preview image

## About Me

I am an aspiring Business Analyst with a background in Life Sciences, currently building hands-on projects in SQL, Power BI, and Python ahead of starting an MBA in Business Analytics and IT. This project reflects my approach to solving business problems end-to-end, from database design to actionable visual insights.

Connect with me on [LinkedIn](https://www.linkedin.com/) or check out more of my work on [GitHub](https://github.com/ManormaGupta).

