**NYC-Airbnb-SQL-Project**
SQL analysis of NYC Airbnb dataset to uncover pricing and demand trends

**NYC Airbnb Data Analysis using SQL**

**Project Overview**
This project performs SQL-based analysis on NYC Airbnb data to uncover insights related to pricing trends, customer demand, and listing availability. The goal is to identify patterns that can help hosts optimize pricing and improve listing performance.

---

**Objective** 
To analyze Airbnb data and identify trends in pricing, customer demand, and listing performance.

---

 **Dataset**
- Listings dataset: Contains property details such as price, room type, and availability
- Reviews dataset: Contains review counts and activity

---
**Business Questions**

- Which neighborhoods have the highest and lowest prices?
- Which room types are most common and most profitable?
- Do cheaper listings receive more reviews (higher demand)?
- How does availability impact booking demand?
- Which listings generate the highest estimated revenue?
---

 **Data Cleaning**
- Removed null and zero prices
- Handled missing review values
- Removed duplicates
- Filtered unrealistic values (price, availability)

---

**Exploratory Data Analysis (EDA)**

**Key Questions**
- Which neighborhoods are most expensive?
- Which room types are most common?
- How does price impact demand?
- Which listings generate highest revenue?

---

**Key Insights**

- Manhattan has the highest average price, indicating a premium rental market driven by high demand and central location advantages.
- Budget listings receive more reviews, suggesting higher booking frequency and stronger demand for affordable stays.
- Entire home/apartment listings generate higher estimated revenue compared to shared or private rooms.
- Listings with high availability often indicate lower demand or reduced booking frequency.

---

**Tools Used**
- SQL Server
- SSMS

---
**SQL Skills Demonstrated**

- Data cleaning (handling null values, duplicates, and outliers)
- Joins (combining listings and reviews tables)
- Aggregations (AVG, COUNT, SUM)
- GROUP BY and filtering
- CASE statements for price segmentation

**Project Structure**

01_data_cleaning.sql  
02_eda.sql  

---

**Conclusion**
This analysis helps identify:
- High-demand price ranges for Airbnb listings
- Profitable neighborhoods for investment
- Pricing strategies to maximize bookings

