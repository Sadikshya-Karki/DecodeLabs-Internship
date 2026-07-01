# Week 1: Data Cleaning & Preparation

Cleaned a raw e-commerce dataset (1,200 records) as part of my Data Analytics internship at DecodeLabs.

## Goal
Take a raw, messy dataset and turn it into a reliable source of truth by identifying and fixing missing values, duplicates, and formatting issues.

## What was done
- Identified and handled missing values (CouponCode had 309 missing, filled with "No Coupon" instead of a statistical average, since a blank value meant no coupon was used, not unknown data)
- Checked and confirmed zero duplicate records (both OrderID and full-row checks)
- Standardized date format to ISO 8601 (YYYY-MM-DD)
- Fixed numeric precision issues in TotalPrice (29 records had floating-point rounding noise)
- Verified text formatting consistency across all categorical columns (no casing or whitespace issues found)

## Result
- 0 missing values remaining
- 0 duplicate records
- 0 incorrectly formatted dates
- All values rounded to consistent 2-decimal precision

## Key learning
A missing value doesn't always mean unknown data, sometimes it means nothing happened. Filling it in the wrong way can create misleading data instead of fixing it. Also learned that "clean" data has to be proven with code, not just assumed.

## Files
- `Dataset_for_Data_Analytics.xlsx` – original raw dataset
- `data_cleaning.ipynb` – cleaning process (Python, pandas)
- `cleaned_dataset.xlsx` – final cleaned dataset
- `Change_Log.pdf` – documentation of changes made and why

## Tools
Python (pandas), Jupyter Notebook