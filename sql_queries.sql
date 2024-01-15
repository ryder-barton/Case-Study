--This query counts the number of times members and casuals rode a type of bike in a single month

SELECT
    COUNT(CASE WHEN member_casual = 'member' AND rideable_type = 'docked_bike' THEN 1 END) AS member_docked_count,
    COUNT(CASE WHEN member_casual = 'casual' AND rideable_type = 'docked_bike' THEN 1 END) AS casual_docked_count,
    COUNT(CASE WHEN member_casual = 'member' AND rideable_type = 'classic_bike' THEN 1 END) AS member_classic_count,
    COUNT(CASE WHEN member_casual = 'casual' AND rideable_type = 'classic_bike' THEN 1 END) AS casual_classic_count,
    COUNT(CASE WHEN member_casual = 'member' AND rideable_type = 'electric_bike' THEN 1 END) AS member_electric_count,
    COUNT(CASE WHEN member_casual = 'casual' AND rideable_type = 'electric_bike' THEN 1 END) AS casual_electric_count
FROM
    `smiling
-breaker-410021.Cyclistic_Dataset.Dec2023`


--This query is long but it combined all the months tables into a single table, allowing all the data to be combined into one place.

create table smiling-breaker-410021.Cyclistic_Dataset.all_rides2023 as
select
    ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng, member_casual
from
    smiling
-breaker-410021.Cyclistic_Dataset.April2023
union all

select
    ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng, member_casual
from
    smiling
-breaker-410021.Cyclistic_Dataset.Aug2023
union all

select
    ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng, member_casual
from
    `smiling
-breaker-410021.Cyclistic_Dataset.Aug2023-part2`
union all

select
    ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng, member_casual
from
    smiling
-breaker-410021.Cyclistic_Dataset.Dec2023
union all

select
    ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng, member_casual
from
    smiling
-breaker-410021.Cyclistic_Dataset.Feb2023
union all

select
    ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng, member_casual
from
    smiling
-breaker-410021.Cyclistic_Dataset.Jan2023
union all

select
    ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng, member_casual
from
    smiling
-breaker-410021.Cyclistic_Dataset.July2023
union all

select
    ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng, member_casual
from
    `smiling
-breaker-410021.Cyclistic_Dataset.July2023-part2`
union all

select
    ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng, member_casual
from
    smiling
-breaker-410021.Cyclistic_Dataset.June2023
union all

select
    ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng, member_casual
from
    `smiling
-breaker-410021.Cyclistic_Dataset.June2023-part2`
union all

select
    ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng, member_casual
from
    smiling
-breaker-410021.Cyclistic_Dataset.March2023
union all

select
    ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng, member_casual
from
    smiling
-breaker-410021.Cyclistic_Dataset.May2023
union all

select
    ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng, member_casual
from
    `smiling
-breaker-410021.Cyclistic_Dataset.May2023-part2`
union all

select
    ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng, member_casual
from
    smiling
-breaker-410021.Cyclistic_Dataset.Nov2023
union all

select
    ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng, member_casual
from
    smiling
-breaker-410021.Cyclistic_Dataset.Oct2023
union all

select
    ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng, member_casual
from
    `smiling
-breaker-410021.Cyclistic_Dataset.Oct2023-part2`
union all

select
    ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng, member_casual
from
    smiling
-breaker-410021.Cyclistic_Dataset.Sep2023
union all

select
    ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng, member_casual
from
    `smiling
-breaker-410021.Cyclistic_Dataset.Sep2023-part2`;


--This query counted the number the number of times members or casuals visited a particular station throughout the year.

SELECT start_station_name, COUNT(*) AS start_count
FROM smiling
-breaker-410021.Cyclistic_Dataset.all_rides2023
where member_casual = 'casual'
GROUP BY member_casual, start_station_name
ORDER BY start_count DESC
limit 11;


--This query creates a new table to insert combined data into

create table smiling-breaker-410021.Cyclistic_Dataset.Oct_Combined_Times
(
  started_at timestamp,
  ended_at timestamp,
  member_casual string
);


--This query inserts the data into the new table. 
--Make sure to run part 1 and 2 through the query

insert into smiling

-breaker-410021.Cyclistic_Dataset.Oct_Combined_Times
(started_at, ended_at, member_casual)
select started_at, ended_at, member_casual
from
    `smiling
-breaker-410021.Cyclistic_Dataset.Oct2023-part2`


--This query takes the average fo the combined data.
--Make sure to run twice for member and casual.

select avg(ended_at - started_at)
from smiling
-breaker-410021.Cyclistic_Dataset.Dec2023
where
member_casual = 'casual'


























