
--Total number of listings available?

select count(*) as Total_Listing from ABNYData_clean
-- insight : total number of listings are 48884

-- Price distribution (Min,Max,Avg)
select min(price) as Min_Price, max(price) as Max_price, avg(price) as avg_price 
from ABNYData_clean
-- insight : helps understand pricing distribution

--Number of listings per Neighbourhood group
select neighbourhood_group, count (*) as Numberof_listings from ABNYData_clean
group by neighbourhood_group
order by Numberof_listings Desc
-- Insight : Manhattan has max number of listings

-- Avg price by Neighbourhood Group
select neighbourhood_group, Avg(price) as Avg_price from ABNYData_clean
group by neighbourhood_group
order by Avg_price desc
-- insight : shows which areas are premium Vs affordable

-- Distribution of room types
select room_type, count(*) as Total_Rooms from ABNYData_clean
group by room_type
order by Total_Rooms
-- insight: shows listing type dominance

-- Avg price by roomtype
select room_type,avg(price) as Avg_price from ABNYData_clean
group by room_type
order by Avg_price
-- Insight: Helps understand which property type give high revenue

--Avg availability by neighbourhood group
select neighbourhood_group, avg(availability_365) as avg_availability from ABNYData_clean
group by neighbourhood_group
order by avg_availability desc
-- insight : indicates supply intensity vs demand 

--Listing with highest availability
select * from ABNYData_clean order by availability_365 desc
-- Insight: High availbility indicate low demand

-- Top 10 most reviewed listings
select top 10 ABNYData_clean.id,host_name,neighbourhood_group, number_of_reviews from ABNYData_clean
join ABNYData_reviews_clean on ABNYData_clean.id = ABNYData_reviews_clean.id
order by number_of_reviews desc
-- insight: High review counts indicate high cousttmer demand

--Avg reviews per neighbourhood
select neighbourhood_group, avg(number_of_reviews) as avg_reviews from ABNYData_clean
join ABNYData_reviews_clean on ABNYData_clean.id = ABNYData_reviews_clean.id
group by neighbourhood_group
order by avg_reviews desc
-- insight : shows which area attracts more guest interactions

