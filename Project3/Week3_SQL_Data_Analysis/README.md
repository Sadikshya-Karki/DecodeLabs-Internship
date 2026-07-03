# Week 3: SQL Data Analysis

Performed SQL-based data analysis on the e-commerce orders dataset (1,200 records) as part of my Data Analytics internship at DecodeLabs.

## Goal
Use SQL queries to extract meaningful insights from the dataset by filtering, grouping, sorting, and aggregating data to answer key business questions about product performance, order fulfillment, payment behavior, referral sources, and revenue trends.

## What was done
- Created a MySQL database and imported the dataset using MySQL Workbench
- Wrote 18 SQL queries to explore different aspects of the data
- Used WHERE to filter orders by status, price range, and coupon usage
- Used GROUP BY to group data by product, payment method, referral source, and coupon code
- Used ORDER BY to sort results by order count and revenue
- Applied COUNT, SUM, and AVG to calculate key business metrics
- Used DATE_FORMAT to extract monthly order trends from the Date column
- Used CASE statements inside SUM to compare delivered vs cancelled orders per product

## Key findings
- Total revenue from 1,200 orders is 1,264,761.96 with an average order value of 1053.97
- Cancelled and Returned orders together account for 41.4% of all orders, while only 19.3% were successfully Delivered
- Chair has the highest cancellation rate at 45 cancellations, and Tablet has the highest return rate at 43 returns
- Instagram is the top referral source with 259 orders and the highest total revenue at 275,285.45
- Credit Card generates the highest average order value at 1127.55 per order
- FREESHIP is the most used coupon with 313 orders, confirming free shipping is a strong purchase motivator
- 309 orders were placed without any coupon, an opportunity to grow through targeted promotions
- Phone is the only product where delivered orders exceed cancelled orders

## Key learning
SQL is a declarative language, meaning you define what you want and the database decides how to fetch it. The most important concept was understanding the logical execution order: FROM, WHERE, GROUP BY, HAVING, SELECT, and ORDER BY. This is different from how humans write SQL top to bottom, and confusing the two leads to errors that are hard to debug. Writing 18 queries also made it clear that grouping raw rows with GROUP BY is what turns individual records into actual business intelligence.

## Files
- `Dataset_for_Data_Analytics.xlsx` – original dataset
- `Week3_SQL_Data_Analysis.sql` – all 18 SQL queries written in MySQL Workbench
- `Project3.pdf` – full analysis report with query results and observations

## Tools
MySQL, MySQL Workbench