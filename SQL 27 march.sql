/*1) CREATE 2 TABLES(bmtc_details, tourist_info) with 10 columns.*/
CREATE TABLE bmtc_details(id int, type_of_bus varchar(20), src varchar(20), dest varchar(20), route_num varchar(10), bus_num varchar(10), num_of_stops int, price bigint, start_time time, end_time time);
CREATE TABLE tourist_info(id int, name_of_tourist varchar(20),ph_num varchar(15), mode_of_transportation varchar(15), native varchar(20), destination varchar(20), guide_name varchar(20), vacation_start_date DATE, vacation_end_date date, num_of_vacation_days int);

2) Insert 20 data for each table.

INSERT INTO bmtc_details (id, type_of_bus, src, dest, route_num, bus_num, num_of_stops, price, start_time, end_time) 
VALUES (1, 'AC Volvo', 'Majestic', 'Electronic City', '335E', 'KA01AB1234', 15, 60, '06:30:00', '07:45:00');

INSERT INTO bmtc_details (id, type_of_bus, src, dest, route_num, bus_num, num_of_stops, price, start_time, end_time) 
VALUES (2, 'Electric', 'Silk Board', 'Whitefield', '500C', 'KA02CD5678', 20, 40, '07:00:00', '08:30:00');

INSERT INTO bmtc_details (id, type_of_bus, src, dest, route_num, bus_num, num_of_stops, price, start_time, end_time) 
VALUES (3, 'AC Volvo', 'KR Market', 'Marathahalli', '365', 'KA03EF9012', 18, 55, '07:15:00', '08:45:00');

INSERT INTO bmtc_details (id, type_of_bus, src, dest, route_num, bus_num, num_of_stops, price, start_time, end_time) 
VALUES (4, 'Ordinary', 'Hebbal', 'BTM Layout', '201R', 'KA04GH3456', 25, 30, '06:45:00', '08:15:00');

INSERT INTO bmtc_details (id, type_of_bus, src, dest, route_num, bus_num, num_of_stops, price, start_time, end_time) 
VALUES (5, 'AC Volvo', 'Banashankari', 'Mysore Road', '215', 'KA05IJ7890', 12, 50, '08:00:00', '09:30:00');

INSERT INTO bmtc_details (id, type_of_bus, src, dest, route_num, bus_num, num_of_stops, price, start_time, end_time) 
VALUES (6, 'Non-AC', 'Yeshwanthpur', 'Kengeri', '401', 'KA06KL1234', 22, 35, '09:00:00', '10:45:00');

INSERT INTO bmtc_details (id, type_of_bus, src, dest, route_num, bus_num, num_of_stops, price, start_time, end_time) 
VALUES (7, 'AC Volvo', 'Electronic City', 'Hebbal', '356', 'KA07MN5678', 17, 65, '10:30:00', '12:00:00');

INSERT INTO bmtc_details (id, type_of_bus, src, dest, route_num, bus_num, num_of_stops, price, start_time, end_time) 
VALUES (8, 'Electric', 'Majestic', 'Shivajinagar', '100', 'KA08OP9012', 10, 25, '11:15:00', '12:00:00');

INSERT INTO bmtc_details (id, type_of_bus, src, dest, route_num, bus_num, num_of_stops, price, start_time, end_time) 
VALUES (9, 'AC Volvo', 'Silk Board', 'Hebbal', '600D', 'KA09QR3456', 19, 70, '12:30:00', '14:00:00');

INSERT INTO bmtc_details (id, type_of_bus, src, dest, route_num, bus_num, num_of_stops, price, start_time, end_time) 
VALUES (10, 'Electric', 'KR Puram', 'Jayanagar', '154', 'KA10ST7890', 21, 40, '14:15:00', '15:45:00');

INSERT INTO bmtc_details (id, type_of_bus, src, dest, route_num, bus_num, num_of_stops, price, start_time, end_time) 
VALUES (11, 'AC Volvo', 'Mysore Road', 'Koramangala', '500A', 'KA11UV1234', 14, 60, '15:00:00', '16:30:00');

INSERT INTO bmtc_details (id, type_of_bus, src, dest, route_num, bus_num, num_of_stops, price, start_time, end_time) 
VALUES (12, 'Ordinary', 'Whitefield', 'Silk Board', '342', 'KA12WX5678', 18, 30, '16:45:00', '18:15:00');

INSERT INTO bmtc_details (id, type_of_bus, src, dest, route_num, bus_num, num_of_stops, price, start_time, end_time) 
VALUES (13, 'AC Volvo', 'Marathahalli', 'Majestic', '333E', 'KA13YZ9012', 16, 55, '17:30:00', '19:00:00');

INSERT INTO bmtc_details (id, type_of_bus, src, dest, route_num, bus_num, num_of_stops, price, start_time, end_time) 
VALUES (14, 'Non-AC', 'Jayanagar', 'Electronic City', '365A', 'KA14AB3456', 23, 45, '18:15:00', '20:00:00');

INSERT INTO bmtc_details (id, type_of_bus, src, dest, route_num, bus_num, num_of_stops, price, start_time, end_time) 
VALUES (15, 'AC Volvo', 'Banashankari', 'BTM Layout', '500B', 'KA15CD7890', 11, 50, '19:00:00', '20:30:00');

INSERT INTO bmtc_details (id, type_of_bus, src, dest, route_num, bus_num, num_of_stops, price, start_time, end_time) 
VALUES (16, 'Electric', 'Hebbal', 'Yelahanka', '290', 'KA16EF1234', 13, 20, '20:15:00', '21:00:00');

INSERT INTO bmtc_details (id, type_of_bus, src, dest, route_num, bus_num, num_of_stops, price, start_time, end_time) 
VALUES (17, 'AC Volvo', 'BTM Layout', 'Electronic City', '600', 'KA17GH5678', 17, 65, '21:30:00', '23:00:00');

INSERT INTO bmtc_details (id, type_of_bus, src, dest, route_num, bus_num, num_of_stops, price, start_time, end_time) 
VALUES (18, 'Electric', 'Koramangala', 'Majestic', '201G', 'KA18IJ9012', 22, 35, '22:00:00', '23:45:00');

INSERT INTO bmtc_details (id, type_of_bus, src, dest, route_num, bus_num, num_of_stops, price, start_time, end_time) 
VALUES (19, 'AC Volvo', 'Mysore Road', 'Yeshwanthpur', '401K', 'KA19KL3456', 15, 55, '23:15:00', '00:45:00');

INSERT INTO bmtc_details (id, type_of_bus, src, dest, route_num, bus_num, num_of_stops, price, start_time, end_time) 
VALUES (20, 'Ordinary', 'KR Market', 'Banashankari', '222', 'KA20MN7890', 9, 25, '05:30:00', '06:15:00');




INSERT INTO tourist_info (id, name_of_tourist, ph_num, mode_of_transportation, native, destination, guide_name, vacation_start_date, vacation_end_date, num_of_vacation_days) 
VALUES (1, 'Shah Rukh Khan', 9876543210, 'Flight', 'Mumbai', 'Dubai', 'Rajesh', '2025-06-10', '2025-06-15', 5);

INSERT INTO tourist_info (id, name_of_tourist, ph_num, mode_of_transportation, native, destination, guide_name, vacation_start_date, vacation_end_date, num_of_vacation_days) 
VALUES (2, 'Amitabh Bachchan', 9123456789, 'Train', 'Allahabad', 'Kolkata', 'Suresh', '2025-07-01', '2025-07-07', 6);

INSERT INTO tourist_info (id, name_of_tourist, ph_num, mode_of_transportation, native, destination, guide_name, vacation_start_date, vacation_end_date, num_of_vacation_days) 
VALUES (3, 'Priyanka Chopra', 8765432109, 'Bus', 'Bareilly', 'Goa', 'Manoj', '2025-05-20', '2025-05-25', 5);

INSERT INTO tourist_info (id, name_of_tourist, ph_num, mode_of_transportation, native, destination, guide_name, vacation_start_date, vacation_end_date, num_of_vacation_days) 
VALUES (4, 'Alia Bhatt', 7890123456, 'Car', 'Mumbai', 'Pondicherry', 'Vikram', '2025-08-10', '2025-08-15', 5);

INSERT INTO tourist_info (id, name_of_tourist, ph_num, mode_of_transportation, native, destination, guide_name, vacation_start_date, vacation_end_date, num_of_vacation_days) 
VALUES (5, 'Ranbir Kapoor', 8901234567, 'Train', 'Mumbai', 'Udaipur', 'Arjun', '2025-09-05', '2025-09-12', 7);

INSERT INTO tourist_info (id, name_of_tourist, ph_num, mode_of_transportation, native, destination, guide_name, vacation_start_date, vacation_end_date, num_of_vacation_days) 
VALUES (6, 'Deepika Padukone', 9012345678, 'Flight', 'Bangalore', 'Paris', 'Ravi', '2025-10-15', '2025-10-22', 7);

INSERT INTO tourist_info (id, name_of_tourist, ph_num, mode_of_transportation, native, destination, guide_name, vacation_start_date, vacation_end_date, num_of_vacation_days) 
VALUES (7, 'Salman Khan', 7654321098, 'Bus', 'Indore', 'Jaipur', 'Santosh', '2025-11-01', '2025-11-06', 5);

INSERT INTO tourist_info (id, name_of_tourist, ph_num, mode_of_transportation, native, destination, guide_name, vacation_start_date, vacation_end_date, num_of_vacation_days) 
VALUES (8, 'Katrina Kaif', 6543210987, 'Car', 'Mumbai', 'Manali', 'Ramesh', '2025-12-10', '2025-12-14', 4);

INSERT INTO tourist_info (id, name_of_tourist, ph_num, mode_of_transportation, native, destination, guide_name, vacation_start_date, vacation_end_date, num_of_vacation_days) 
VALUES (9, 'Hrithik Roshan', 5432109876, 'Train', 'Mumbai', 'Shimla', 'Ganesh', '2025-07-20', '2025-07-25', 5);

INSERT INTO tourist_info (id, name_of_tourist, ph_num, mode_of_transportation, native, destination, guide_name, vacation_start_date, vacation_end_date, num_of_vacation_days) 
VALUES (10, 'Anushka Sharma', 4321098765, 'Flight', 'Bangalore', 'Maldives', 'Sunil', '2025-08-15', '2025-08-20', 5);

INSERT INTO tourist_info (id, name_of_tourist, ph_num, mode_of_transportation, native, destination, guide_name, vacation_start_date, vacation_end_date, num_of_vacation_days) 
VALUES (11, 'Varun Dhawan', 3210987654, 'Bus', 'Mumbai', 'Agra', 'Mahesh', '2025-06-25', '2025-06-30', 5);

INSERT INTO tourist_info (id, name_of_tourist, ph_num, mode_of_transportation, native, destination, guide_name, vacation_start_date, vacation_end_date, num_of_vacation_days) 
VALUES (12, 'Kareena Kapoor', 2109876543, 'Train', 'Mumbai', 'New Delhi', 'Krishna', '2025-09-01', '2025-09-04', 3);

INSERT INTO tourist_info (id, name_of_tourist, ph_num, mode_of_transportation, native, destination, guide_name, vacation_start_date, vacation_end_date, num_of_vacation_days) 
VALUES (13, 'Ranveer Singh', 1098765432, 'Flight', 'Mumbai', 'Switzerland', 'Bikash', '2025-10-05', '2025-10-12', 7);

INSERT INTO tourist_info (id, name_of_tourist, ph_num, mode_of_transportation, native, destination, guide_name, vacation_start_date, vacation_end_date, num_of_vacation_days) 
VALUES (14, 'Ajay Devgn', 9988776655, 'Bus', 'Mumbai', 'Jaisalmer', 'Suraj', '2025-07-10', '2025-07-15', 5);

INSERT INTO tourist_info (id, name_of_tourist, ph_num, mode_of_transportation, native, destination, guide_name, vacation_start_date, vacation_end_date, num_of_vacation_days) 
VALUES (15, 'Jacqueline Fernandez', 8877665544, 'Car', 'Sri Lanka', 'Goa', 'Harpreet', '2025-08-18', '2025-08-22', 4);

INSERT INTO tourist_info (id, name_of_tourist, ph_num, mode_of_transportation, native, destination, guide_name, vacation_start_date, vacation_end_date, num_of_vacation_days) 
VALUES (16, 'Saif Ali Khan', 7766554433, 'Train', 'Bhopal', 'Lucknow', 'Dinesh', '2025-11-20', '2025-11-24', 4);

INSERT INTO tourist_info (id, name_of_tourist, ph_num, mode_of_transportation, native, destination, guide_name, vacation_start_date, vacation_end_date, num_of_vacation_days) 
VALUES (17, 'Sara Ali Khan', 6655443322, 'Flight', 'Mumbai', 'Dubai', 'Vivek', '2025-12-01', '2025-12-06', 5);

INSERT INTO tourist_info (id, name_of_tourist, ph_num, mode_of_transportation, native, destination, guide_name, vacation_start_date, vacation_end_date, num_of_vacation_days) 
VALUES (18, 'Nora Fatehi', 5544332211, 'Bus', 'Canada', 'Kerala', 'Omkar', '2025-09-12', '2025-09-15', 3);

INSERT INTO tourist_info (id, name_of_tourist, ph_num, mode_of_transportation, native, destination, guide_name, vacation_start_date, vacation_end_date, num_of_vacation_days) 
VALUES (19, 'Rajkummar Rao', 4433221100, 'Car', 'Gurgaon', 'Darjeeling', 'Nikhil', '2025-10-25', '2025-10-30', 5);

INSERT INTO tourist_info (id, name_of_tourist, ph_num, mode_of_transportation, native, destination, guide_name, vacation_start_date, vacation_end_date, num_of_vacation_days) 
VALUES (20, 'Pankaj Tripathi', 3322110099, 'Train', 'Bihar', 'Varanasi', 'Shankar', '2025-07-05', '2025-07-08', 3);


SELECT SUM(num_of_stops) AS total_stops FROM bmtc_details;

SELECT AVG(price) AS average_price FROM bmtc_details;

SELECT MAX(price) AS max_price, MIN(price) AS min_price FROM bmtc_details;

SELECT COUNT(bus_num) AS total_buses FROM bmtc_details;

SELECT MIN(start_time) AS earliest_start, MAX(start_time) AS latest_start FROM bmtc_details;



SELECT COUNT(id) AS total_tourists FROM tourist_info;

SELECT AVG(num_of_vacation_days) AS average_vacation_days FROM tourist_info;

SELECT MAX(num_of_vacation_days) AS max_vacation_days, MIN(num_of_vacation_days) AS min_vacation_days FROM tourist_info;

SELECT mode_of_transportation, COUNT(mode_of_transportation) AS count 
FROM tourist_info 
GROUP BY mode_of_transportation;

SELECT MIN(vacation_start_date) AS earliest_vacation, MAX(vacation_start_date) AS latest_vacation FROM tourist_info;



SELECT type_of_bus, COUNT(*) AS total_buses 
FROM bmtc_details 
GROUP BY type_of_bus;

SELECT route_num, SUM(price) AS total_revenue 
FROM bmtc_details 
GROUP BY route_num;

SELECT src, COUNT(*) AS bus_count 
FROM bmtc_details 
GROUP BY src 
HAVING COUNT(*) > 2;

SELECT type_of_bus, AVG(price) AS avg_price 
FROM bmtc_details 
GROUP BY type_of_bus 
HAVING AVG(price) > 50;



SELECT native, COUNT(*) AS tourist_count 
FROM tourist_info 
GROUP BY native;

SELECT destination, AVG(num_of_vacation_days) AS avg_vacation_days 
FROM tourist_info 
GROUP BY destination;

SELECT mode_of_transportation, COUNT(*) AS transport_count 
FROM tourist_info 
GROUP BY mode_of_transportation 
HAVING COUNT(*) > 3;

SELECT guide_name, COUNT(*) AS tourist_count 
FROM tourist_info 
GROUP BY guide_name 
HAVING COUNT(*) > 2;
