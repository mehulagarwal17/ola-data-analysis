Create database Ola;
Use Ola;

#Q!. Retrieve all successful bookings
create View successful_Bookings As
SELECT 	* from bookings
WHERE booking_status = 'Success';

Select * from successful_Bookings;

#Q2. Find the average ride distance for each vehicle type
 create view ride_distance_for_each_vehicle As
 SELECT Vehicle_Type, AVG(Ride_Distance)
 as avg_distance FROM bookings
 GROUP BY Vehicle_Type;
 
 Select * from ride_distance_for_each_vehicle;
 
 #Q3. Get the total number of cancelled ride by customers
 
create view cancelled_ride_by_customers As
select count(*) from bookings 
where Booking_Status = 'Canceled by Customer';

select * from cancelled_ride_by_customers;

#Q4. List the top 5 customers who booked the highest number of rides

Create view top_5_customers as
select Customer_ID,COUNT(Booking_ID) as total_rides
from bookings
group by Customer_ID
order by total_rides DESC LIMIT 5;

select * from top_5_customers;

#Q5. Get the number of rides canceled by drivers due to personal and car related issues

create view canceled_by_drivers_P_C_issues as
select COUNT(*) from bookings
where Canceled_Rides_by_Driver = 'Personal & Car related issue';

select * from canceled_by_drivers_P_C_issues;

#Q6. Find the maximum and minimum driver ratings for Prime Sedan bookings

create view max_and_minimum_driver_rating_for_sedan as
select MAX(Driver_Ratings) as max_rating, MIN(Driver_Ratings) as min_rating from bookings where Vehicle_Type = 'Prime Sedan';

select * from max_and_minimum_driver_rating_for_sedan;

#Q7. Retreive all rides where payment was made using UPI

select * from bookings where Payment_Method = 'UPI';

#Q8. Find the average customer rating per vehicle type

select Vehicle_Type, AVG(Customer_Rating) as avg_cust_rating from bookings GROUP BY Vehicle_Type;

#Q9. Calculate the total booking value of rides completed successfully

create view total_booking_value as 
select SUM(Booking_Value) as total_value from bookings where Booking_Status = 'Success';

select * from total_booking_value;

#Q10. List all incomplete rides along with the reason

create view incomplete_rides as
select Booking_ID, Incomplete_Rides_Reason from bookings 
where Incomplete_Rides = 'Yes'

select * from incomplete_rides;