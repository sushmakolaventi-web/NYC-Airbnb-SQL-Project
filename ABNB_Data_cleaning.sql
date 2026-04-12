--- Creating a new table for ABNYData_clean
create table ABNYData_clean 
(   id INT,
    name NVARCHAR(255),
    host_id INT,
    host_name NVARCHAR(255),
    neighbourhood_group NVARCHAR(100),
    neighbourhood NVARCHAR(100),
    room_type NVARCHAR(50),
    price DECIMAL(10,2),
    minimum_nights INT,
    availability_365 INT)

    
    -- insert clean data
    insert into ABNYData_clean
    select * from ABNYdata 
    where price > 0  

   -- creating clean data for reviews
   select * into ABNYData_reviews_clean from ABNYData_Reviews
   where number_of_reviews > 0 
   and number_of_reviews is not null

   -- checking the count
   select count(*) as total_rec_before from ABNYData
   select count(*) as total_rec_after from ABNYData_Reviews
   
   -- checking the count
   select count(*) as total_rec_before from ABNYData_Reviews
   select count(*) as total_rec_after from ABNYData_reviews_clean
   
   