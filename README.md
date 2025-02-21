<img src="logo.png" alt="Logo" width="75">  

# Cyclistic Bike-Share Analysis

## Table of Contents

- [Project Overview](#project-overview)
- [Data Source](data-source)
- [Tools](tools)
- [Data Cleaning and preparation](data-cleaning-and-preparation)
- [Exploratory Data Analysis](exploratory-data-analysis)
- [Key Insights & Recommendations](key-insights-&-recommendations)
- [Recommendations](#recommendations)
- [Limitations](Limitations)

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
 - **Count of riders**
 - **By Month**
 - **Preferred days & times**
 - **By ride length**
 - **By ride Type**
 - 
- **Count of riders:**
<p align="center">
    <img src="Overall.png" width="500" height="300">
</p>
📌 Number of Member users is almost double the number of Casual users.

- **By Month:**
<p align="center">
    <img src="Bymonth.png" width="500" height="300">
</p>
📌 Peak Riding Season: June, July, August, and September have the highest total rides, indicating that warm-weather months drive more cycling activity.
Off-Peak Season: January and December show the lowest ridership, likely due to colder weather affecting outdoor activities.
Members use the service consistently year-round, while casual riders show a strong seasonal trend, increasing significantly in summer due to vacations and outdoor events and sharply declining in winter as they prefer favorable weather conditions. Although the pattern of increase and decline is similar for both groups, the impact is more pronounced among casual riders.
Although Both Groups Show Similar Trends: The overall pattern of increasing rides in warmer months and decreasing in colder months is the same for both members and casual riders, but members remain more consistent.

- **Preferred days & times:**
<p align="center">
    <img src="Byday.png" width="500" height="300">
    <img src="Byhour.png" width="500" height="300">
</p>
📌 Members’ Peak Hours Align with Work Schedule:
    There’s a sharp increase in rides around 8 AM, corresponding to commuting hours.
    A smaller peak appears around 12 PM, indicating lunchtime rides.
    The highest spike occurs around 5-6 PM, representing the end of the workday when people commute home.
Casual Riders Show a Gradual Increase: Unlike members, casual riders steadily increase their rides throughout the day, peaking in the afternoon (likely for leisure or tourism).
Evening Decline: Both groups see a drop in rides after 7 PM, indicating fewer late-night trips.
📌 Casual Riders Prefer Weekends: The yellow bars are highest on Saturdays and Sundays, suggesting that casual riders mainly use the service for recreational purposes.
Members Ride More on Weekdays: The blue bars are consistently high on weekdays, especially Monday to Friday, indicating that members rely on the service for commuting.

- **By ride length:**
<p align="center">
    <img src="Byridelength.png" width="500" height="300">
    <img src="Byridetype.png" width="500" height="300">
</p>
📌 Casual Riders Have Longer Rides: The average ride length for casual riders is 25.15 minutes, which is nearly twice as long as that of members.
Members Take Shorter Trips: The average ride time for members is 12.77 minutes, indicating they likely use the service for quick commutes rather than leisure.
Usage Pattern Insight: Casual riders may take longer trips because they are exploring the city, sightseeing, or using the bikes for recreation. In contrast, members appear to use the service for practical, short-distance transportation.
📌 Members Prefer Electric Bikes: 32.23% of rides by members are on electric bikes, compared to 18.62% for casual riders.
    Classic Bikes Are Popular Among Both Groups: Members use classic bikes for 30.04% of their rides, while casual riders use them 16.64% of the time.
    Electric Scooters Have Low Usage: Both members (1.01%) and casual riders (1.45%) rarely use electric scooters.
Key Insights:
    Electric Bikes Are in Demand: The high percentage of electric bike usage by members suggests they value efficiency and speed.
    Casual Riders Prefer Classic Bikes More Than Electric Ones: Possibly due to pricing differences or for a more leisurely ride.
    Scooters May Need More Promotion or Optimization: Their low adoption rate suggests they are not a significant part of the user experience.

      
Visualized key trends using Tableau.
 [Click to preview](https://github.com/Rodina-Ali/Google-Data-Analytics-Project/blob/main/Dashboard.png?raw=true) 

## Key Insights & Recommendations

📌 Annual members prefer shorter commutes on weekdays.
📌 Marketing efforts should focus on discounted memberships & loyalty programs for casual users.

## Recommendations

## Limitations 
1️⃣ Data Restrictions – The dataset only includes trip data, meaning we lack demographic information (age, gender, income, etc.), which could provide deeper insights into user behavior.
2️⃣ No User Feedback – The analysis is based purely on ride patterns. We do not have access to customer surveys or qualitative feedback to understand why casual riders don't convert to memberships.
3️⃣ Location Bias – The data is limited to Cyclistic’s operational areas, meaning insights may not generalize to other cities or bike-share programs.
4️⃣ Missing & Inconsistent Data – Some ride records had missing timestamps or incorrect station names, requiring data cleaning and assumptions that may slightly affect accuracy.
5️⃣ Assumption of User Behavior – The analysis assumes that casual riders and members have different riding habits, but external factors like weather, promotions, or city events could also influence ride frequency.
