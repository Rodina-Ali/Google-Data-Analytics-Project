--create a table to combine all tables in
CREATE TABLE trips (
    ride_id VARCHAR(255),
    rideable_type VARCHAR(50),
    start_time DATETIME,
    end_time DATETIME,
    start_station_name VARCHAR(255),
    start_station_id VARCHAR(50),
    end_station_name VARCHAR(255),
    end_station_id VARCHAR(50),
    start_lat FLOAT,
    start_lng FLOAT,
    end_lat FLOAT,
    end_lng FLOAT,
    member_casual VARCHAR(50)
);


-- join all tables using union 
INSERT INTO trips
SELECT * FROM tripsjan
UNION
SELECT * FROM tripsfeb
UNION
SELECT * FROM tripsmar
UNION
SELECT * FROM tripsapr
UNION
SELECT * FROM tripsmay
UNION
SELECT * FROM tripsjun
UNION
SELECT * FROM tripsjul
UNION
SELECT * FROM tripsaug
UNION
SELECT * FROM tripssep
UNION
SELECT * FROM tripsoct
UNION
SELECT * FROM tripsnov
UNION
SELECT * FROM tripsdec;

--check which ride_id has duplicates
SELECT 
  ride_id,
  COUNT(*) AS count_of_ride_id
FROM trips
GROUP BY ride_id
HAVING COUNT(*) > 1

--check for any null 
SELECT 
    SUM(CASE WHEN ride_id IS NULL THEN 1 ELSE 0 END) AS ride_id_nulls,
    SUM(CASE WHEN rideable_type IS NULL THEN 1 ELSE 0 END) AS rideable_type_nulls,
    SUM(CASE WHEN start_time IS NULL THEN 1 ELSE 0 END) AS start_time_nulls,
    SUM(CASE WHEN end_time IS NULL THEN 1 ELSE 0 END) AS end_time_nulls,
    SUM(CASE WHEN start_station_name IS NULL THEN 1 ELSE 0 END) AS start_station_name_nulls,
    SUM(CASE WHEN start_station_id IS NULL THEN 1 ELSE 0 END) AS start_station_id_nulls,
    SUM(CASE WHEN end_station_name IS NULL THEN 1 ELSE 0 END) AS end_station_name_nulls,
    SUM(CASE WHEN end_station_id IS NULL THEN 1 ELSE 0 END) AS end_station_id_nulls,
    SUM(CASE WHEN start_lat IS NULL THEN 1 ELSE 0 END) AS start_lat_nulls,
    SUM(CASE WHEN start_lng IS NULL THEN 1 ELSE 0 END) AS start_lng_nulls,
    SUM(CASE WHEN end_lat IS NULL THEN 1 ELSE 0 END) AS end_lat_nulls,
    SUM(CASE WHEN end_lng IS NULL THEN 1 ELSE 0 END) AS end_lng_nulls,
    SUM(CASE WHEN member_casual IS NULL THEN 1 ELSE 0 END) AS member_casual_nulls
FROM trips


--removing unwanted columns too many null values 
ALTER TABLE trips
DROP COLUMN start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng
ALTER TABLE trips
DROP COLUMN ride_id


--add column to calculate ride length
ALTER TABLE trips
ADD ride_length INT;

UPDATE trips
SET ride_length = DATEDIFF(MINUTE, start_time, end_time)



--extract month name
ALTER TABLE trips
ADD months varchar(50)

UPDATE trips
SET months = DATENAME(MONTH, start_time)

--extract day name
ALTER TABLE trips
ADD days varchar(50)
UPDATE trips
SET days = DATENAME(WEEKDAY, start_time)

SELECT TOP 10 *
FROM trips

--add hour 
ALTER TABLE trips
ADD hour_of_day Int
UPDATE trips
SET hour_of_day = DATEPART(HOUR, start_time)

--member vs casual
SELECT
COUNT(rideable_type) AS number_of_people, member_casual
FROM trips
GROUP BY 
member_casual

--rideable types by member
SELECT
COUNT (*) AS number_of_riders, rideable_type, member_casual
FROM trips
GROUP BY 
rideable_type,
member_casual
ORDER BY  number_of_riders DESC 

--Number of rides by months member vs casual 
--Here we can see both ride more during summer season
SELECT COUNT(*) AS number_of_riders, months, member_casual
FROM trips
group by
months, member_casual
order by number_of_riders DESC

--Number of rides by day of the week member vs casual 
--here we can see members are using it more in the weekdays while casual more in the weekends
SELECT COUNT(*) AS number_of_riders, days, member_casual
FROM trips
group by
days, member_casual
order by number_of_riders DESC

--Number of rides by hour of the day member vs casual 
--we can assume that member use it to commute to work wile casual within the day
SELECT COUNT(*) AS number_of_riders, hour_of_day, member_casual
FROM trips
group by
hour_of_day, member_casual
order by number_of_riders DESC

--average ride length member vs casual
--casual tend to use bikes longer than member
SELECT 
AVG(ride_length) AS average_ride_length, member_casual
FROM trips
GROUP BY member_casual
ORDER BY average_ride_length DESC

