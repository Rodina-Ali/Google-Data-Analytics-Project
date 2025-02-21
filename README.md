<img src="logo.png" alt="Logo" width="75">  

## Project Background

Cyclistic is a bike-share company operating in a metropolitan area, aiming to increase annual memberships by understanding user behavior. This analysis explores ride trends, identifies key differences between casual riders and members, and provides actionable recommendations to boost membership conversions.

Insights and recommendations are provided on the following key areas:

Key Comparisons: Casual Riders vs. Annual Members

   - Total Count of Riders: Analyzed the proportion of casual vs. member riders.
   - Monthly Trends: Identified seasonal patterns in ridership across the year.
   - Preferred Days & Times: Determined peak usage times for each rider type.
   - Ride Length: Compared average trip durations for casual and member riders.
   - Ride Type: Examined the most commonly used bike types by each group.

The SQL queries used to inspect and clean the data for this analysis can be found [here](Cleandata.txt).

Targeted SQL queries regarding various business questions can be found [here](Analyisdata.txt).

An interactive Tableau dashboard used to report and explore ride trends can be found [here](Dashboard.png).

## Data Source Structure

Downloaded 12 months of ride data from Divvy Trip Data, with each month's data stored in separate files from the Cyclistic bike-share system.
All CSV files share the same structure. The SQL queries used to merge these files into a single table can be found [here](Combinefiles.txt).


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

## Executive Summary
---
Overview of Findings
Our analysis of Cyclistic’s bike-share data reveals key differences between casual riders and annual members, providing insights to drive membership growth. Casual riders tend to take longer trips and ride more frequently on weekends, whereas members use the service for shorter, routine trips, often during weekdays. Targeted promotions, such as weekend discounts and location-based membership campaigns, could effectively convert casual riders into long-term subscribers, increasing overall revenue and user retention.

![Dashboard](Dashboard.png)

## Insights Deep Dive
---
1. Total Count of Riders

    - Casual riders account for approximately 40% of total rides, while members contribute 60% of all trips.
        Analysis: Despite fewer casual riders, they make up a significant portion of overall usage, highlighting a key opportunity for membership growth.
    <p align="center">
    <img src="Overall.png" width="500" height="300">
</p>

2. Monthly Trends
    - The busiest months are June to September, where casual ridership spikes by 50%, while member usage remains steady.
    - Casual ridership declines sharply in winter (January-February), dropping by nearly 40% compared to peak summer months.
    - Member ridership fluctuates less throughout the year, as members rely on bikes for commuting.
    - Promotions or discounts in colder months could help stabilize ridership among casual users.
   <p align="center">
    <img src="Bymonth.png" width="500" height="300">
</p>
      
3. Preferred Days & Times
    - Casual riders are most active on weekends, making up 70% of all Saturday and Sunday rides.
    - Members primarily ride on weekdays during peak commuting hours (7 AM – 9 AM & 5 PM – 7 PM).
    - Afternoon rides (12 PM – 6 PM) are the most popular time for casual users, suggesting recreational use.
   <p align="center">
    <img src="Byday.png" width="500" height="300">
    <img src="Byhour.png" width="500" height="300">
   </p>

4. Ride Length
    - Casual riders take significantly longer rides, averaging 25–30 minutes, compared to 12–15 minutes for members.
    - Casual users take more exploratory rides, while members use bikes for short-distance commutes.
    - The difference in ride length suggests that casual riders could be incentivized with time-based promotions.
   <p align="center">
    <img src="Byridelength.png" width="500" height="300">
</p>

6. Ride Type
    - Members are more likely to use electric bikes, whereas casual riders prefer classic bikes.
    - Casual users are more likely to pick up docked bikes from tourist-heavy stations.
    - The demand for electric bikes has grown steadily among members, suggesting a need for fleet expansion.
    - Increasing electric bike availability in high-traffic stations could further improve user satisfaction and ride efficiency.
   <p align="center">
    <img src="Byridetype.png" width="500" height="300">
</p>

## Recommendations

Based on the insights and findings above, we recommend that the Cyclistic Marketing Team consider the following actions to increase membership conversions and optimize bike usage:

1. **Observation:** Casual riders take significantly longer trips, especially on weekends, compared to members.  
   **Recommendation:** Introduce time-based discounts or membership perks for longer rides to incentivize casual users to subscribe.

2. **Observation:** Casual ridership spikes during summer months (June – September) but declines sharply in winter.  
   **Recommendation:** Implement seasonal promotions during colder months, such as discounted winter memberships or bundled ride packages, to maintain engagement year-round.

3. **Observation:** Casual riders primarily use docked classic bikes, whereas members favor electric bikes for commuting.  
   **Recommendation:** Expand electric bike availability in high-demand areas and offer electric bike discounts for members to encourage sign-ups.

4. **Observation:** Casual riders frequent tourist-heavy stations and take more weekend rides, while members use bikes consistently for commuting.  
   **Recommendation:** Launch location-based advertising and weekend pass incentives near popular casual rider stations to drive conversions.

5. **Observation:** Peak riding times for casual users are afternoons and weekends, whereas members ride during morning and evening rush hours.  
   **Recommendation:** Develop targeted marketing campaigns for casual users on weekends and afternoons, highlighting membership benefits such as priority access and discounted rates.

6. **Observation:** Need to investigate further.  
   **Recommendation:** Identify which stations are hotspots for casual riders vs. members. Determine whether some stations have seasonal variations.


## Assumptions and Caveats

Throughout this analysis, multiple assumptions were made to address data challenges and ensure consistency. The following assumptions and limitations should be considered:

   - Missing Station Names: A significant number of rides had null values for both start station name and end station name. These records were removed from the analysis, as their inclusion could skew station-level insights.
   - Missing Latitude and Longitude Data: Many trips were missing geospatial coordinates (latitude and longitude) for start and end stations. These records were dropped, limiting the ability to conduct a full geospatial analysis.
   - Lack of User Demographics: The dataset does not contain age, gender, or other demographic details, limiting the ability to conduct targeted user segmentation analysis.

### Impact of These Assumptions

   - Station-level analysis is incomplete due to missing geospatial data.
   - Geospatial insights are limited to stations with valid latitude/longitude information.
   - Findings on seasonal trends and peak usage times may be biased by missing data points.
   - Marketing and user behavior insights are constrained due to the lack of user demographics (e.g., age, gender, and income level). This prevents deeper segmentation and a better understanding of different rider groups.

  


