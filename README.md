# 🚴‍♂️Cyclistic Bike-Share Analysis

## Table of Contents

- [Project Overview](#project-overview)
- [Recommendations](#recommendations)

## Project Overview 
---
This project is part of the **Google Data Analytics Certificate**, where I analyzed bike-share data for a fictional company, *Cyclistic*, to understand user behavior and provide business recommendations. The goal is to determine how casual riders can be converted into annual members, using historical ride data.

## Data Source

Downloaded datasets from Divvy Trip Data. That contained 12 months of ride data from the Cyclistic bike-share system.
| Column Name          | Data Type       |
|----------------------|----------------|
| ride_id             | VARCHAR(255)    |
| rideable_type       | VARCHAR(50)     |
| start_time         | DATETIME        |
| end_time           | DATETIME        |
| start_station_name | VARCHAR(255)    |
| start_station_id   | VARCHAR(50)     |
| end_station_name   | VARCHAR(255)    |
| end_station_id     | VARCHAR(50)     |
| start_lat         | FLOAT           |
| start_lng         | FLOAT           |
| end_lat           | FLOAT           |
| end_lng           | FLOAT           |
| member_casual     | VARCHAR(50)     |

## Tools 
- SQL Server - Data Cleaning and Data Analysis as the data combined is more than 1 million. [Click to preview](Cleandata_bike.sql)
- Tableau - Dashboards [Click to preview](https://github.com/Rodina-Ali/Google-Data-Analytics-Project/blob/main/Dashboard.png?raw=true) 

## Data Cleaning and preparation 
1. Used SQL Server to clean and merge multiple CSV files. [Click to preview](Combinefiles.txt)
2. Removed duplicate records, null values, and inconsistent data. [Click to preview](Cleandata.txt)  
3. Converted timestamps to extract ride duration, day of the week, hour of the day, and months. [Click to preview](Addcolumns.txt)

##  Exploratory Data Analysis (EDA)
-Compared casual riders vs. annual members based on: [Click to preview analysis](Analyisdata.txt)  

-Count of riders 
<p align="center">
    <img src="Overall.png" width="500" height="300">
</p>

-By Month
<p align="center">
    <img src="Bymonth.png" width="500" height="300">
</p>

-Preferred days & times
<p align="center">
    <img src="Byday.png" width="500" height="300">
    <img src="Byhour.png" width="500" height="300">
</p>

-By ride length
<p align="center">
    <img src="Byridelength.png" width="500" height="300">
    <img src="Byridetype.png" width="500" height="300">
</p>

      
Visualized key trends using Tableau.
 [Click to preview](https://github.com/Rodina-Ali/Google-Data-Analytics-Project/blob/main/Dashboard.png?raw=true) 

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
