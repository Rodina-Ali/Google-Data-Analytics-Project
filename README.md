# 🚴‍♂️Cyclistic Bike-Share Analysis

## Table of Contents

- [Project Overview](#project-overview)
- [Recommendations](#recommendations)

## Project Overview 
---
This project is part of the **Google Data Analytics Certificate**, where I analyzed bike-share data for a fictional company, *Cyclistic*, to understand user behavior and provide business recommendations. The goal is to determine how casual riders can be converted into annual members, using historical ride data.

![Dashboard](Dashboard.png)
## Data Source

Downloaded datasets from Divvy Trip Data. That contained 12 months of ride data from the Cyclistic bike-share system.

## Tools 

- SQL Server - Data Cleaning and Data Analysis [Download link here](link)
- Tableau - Dashboards [Download link here](link) 📉 (:)
  |table|table|
  |-----|-----|
  |table|table|

## Data Cleaning and preparation 
1. Used SQL Server to clean and merge multiple CSV files.
2. Removed duplicate records, null values, and inconsistent data.
3. Converted timestamps to extract ride duration, day of the week, and time of ride.

##  Exploratory Data Analysis (EDA)
-Compared casual riders vs. annual members based on:
        -Average ride duration
        -Preferred days & times
        -Ride types (dock stations vs. dockless)
        [Download link here](Cleandata_bike.sql)
or
        ```SQL
        Select from table
        where 
        ```
        Visualized key trends using R/Python & Tableau.

## Key Insights & Recommendations

📌 Casual riders take longer trips but ride mostly on weekends.
📌 Annual members prefer shorter commutes on weekdays.
📌 Marketing efforts should focus on discounted memberships & loyalty programs for casual users.

## Recommendations

## Limitations 
1️⃣ Data Restrictions – The dataset only includes trip data, meaning we lack demographic information (age, gender, income, etc.), which could provide deeper insights into user behavior.
2️⃣ No User Feedback – The analysis is based purely on ride patterns. We do not have access to customer surveys or qualitative feedback to understand why casual riders don't convert to memberships.
3️⃣ Location Bias – The data is limited to Cyclistic’s operational areas, meaning insights may not generalize to other cities or bike-share programs.
4️⃣ Missing & Inconsistent Data – Some ride records had missing timestamps or incorrect station names, requiring data cleaning and assumptions that may slightly affect accuracy.
5️⃣ Assumption of User Behavior – The analysis assumes that casual riders and members have different riding habits, but external factors like weather, promotions, or city events could also influence ride frequency.
