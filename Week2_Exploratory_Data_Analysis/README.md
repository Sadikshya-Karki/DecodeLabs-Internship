# Week 2: Exploratory Data Analysis (EDA)

Performed exploratory data analysis on the cleaned e-commerce orders dataset (1,200 records) as part of my Data Analytics internship at DecodeLabs.

## Goal
Explore the dataset to uncover patterns, trends, and anomalies in product performance, payment behavior, order status, referral sources, and revenue, in order to support business decisions.

## What was done
- Calculated descriptive statistics (mean, median, min, max, std deviation) for all numeric columns
- Analyzed categorical distributions for Product, OrderStatus, PaymentMethod, ReferralSource, and CouponCode
- Detected outliers in TotalPrice using the IQR method
- Visualized the distribution of TotalPrice with a histogram and boxplot
- Tracked monthly order trends from January 2023 to June 2025
- Calculated total revenue by product
- Computed Pearson correlation between numeric columns and visualized it as a heatmap

## Key findings
- Cancelled and Returned orders together make up 41.4% of all orders, while only 19.3% were successfully Delivered, the most significant issue uncovered in the analysis
- TotalPrice is right-skewed (mean 1053.97 vs median 823.62), meaning a small number of high-value orders pull the average up
- 8 outlier orders were detected above 3330.41, worth reviewing individually
- Instagram is the top referral source (21.6%), and FREESHIP is the most-used coupon
- Printer leads in order count, but Chair generates the highest total revenue
- 25.75% of orders were placed with no coupon at all, a possible area to grow through targeted promotions

## Key learning
Numbers alone do not tell the full story, the real work is connecting statistics to a business explanation. A high mean doesn't always represent the "typical" customer, and a confusing metric like high order count but lower revenue only makes sense once price and quantity are looked at together. Correlation also does not mean causation, so each pattern needs to be treated as a clue, not a conclusion.

## Files
- `Dataset_for_Data_Analytics.xlsx` – cleaned dataset 
- `Project2.ipynb` – EDA process (Python, pandas, matplotlib, seaborn)
- `EDA_Report.pdf` – full analysis report with findings and recommendations

## Tools
Python (pandas, numpy, matplotlib, seaborn), Jupyter Notebook