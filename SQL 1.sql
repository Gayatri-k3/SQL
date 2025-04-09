CREATE TABLE airports(id int, airport_country varchar(10), airport_name varchar(15), airport_city varchar(10), airport_type varchar(10), airport_code varchar(5)); 
CREATE TABLE ticket(id int, source_airport varchar(10), destination_airport varchar(15), price bigint, payment boolean, boarding_date datetime); 
CREATE TABLE passenger(id int, passenger_name varchar(10), ph_number int, gender varchar(7), DOB varchar(15));
CREATE TABLE payment_details(paymentID int, passengerID int, class varchar(10), booking_date datetime, payment_status varchar(10));
CREATE TABLE crew(crewID int, crew_name varchar(10), crew_role varchar(10), shift_timing timestamp, airline varchar(10));
ALTER TABLE passenger ADD COLUMN citizenship varchar(10);
ALTER TABLE passenger ADD COLUMN age int;
DESC passenger;
ALTER TABLE passenger DROP citizenship;
ALTER TABLE passenger RENAME COLUMN age TO passenger_age;
ALTER TABLE ticket RENAME COLUMN source_airport TO src_airport;
ALTER TABLE ticket RENAME COLUMN destination_airport TO dest_airport;
desc ticket;
ALTER TABLE payment_details MODIFY Column passengerID bigint;
ALTER TABLE payment_details MODIFY Column paymentID bigint;
ALTER TABLE crew MODIFY Column shift_timing bigint;
desc payment_details;
desc crew;

INSERT INTO airports VALUES (1, 'India', 'Indira_Gandhi', 'New_Delhi', 'Int', 'IND');
INSERT INTO airports VALUES (2, 'India', 'Indira_Gandhi', 'New_Delhi', 'Int', 'IND');
INSERT INTO airports VALUES (3, 'India', 'Indira_Gandhi', 'New_Delhi', 'Int', 'IND');
INSERT INTO airports VALUES (4, 'India', 'Indira_Gandhi', 'New_Delhi', 'Int', 'IND');
INSERT INTO airports VALUES (5, 'India', 'Indira_Gandhi', 'New_Delhi', 'Int', 'IND');
INSERT INTO airports VALUES (6, 'China', 'Indira_Gandhi', 'New_Delhi', 'Int', 'IND');
INSERT INTO airports VALUES (7, 'China', 'Indira_Gandhi', 'New_Delhi', 'Int', 'IND');
INSERT INTO airports VALUES (8, 'China', 'Indira_Gandhi', 'New_Delhi', 'Int', 'IND');
INSERT INTO airports VALUES (9, 'China', 'Indira_Gandhi', 'New_Delhi', 'Int', 'IND');
INSERT INTO airports VALUES (10, 'China', 'Indira_Gandhi', 'New_Delhi', 'Int', 'IND');
INSERT INTO airports VALUES (11, 'Dubai', 'Indira_Gandhi', 'New_Delhi', 'Int', 'IND');
INSERT INTO airports VALUES (12, 'Dubai', 'Indira_Gandhi', 'New_Delhi', 'Int', 'IND');
INSERT INTO airports VALUES (13, 'Dubai', 'Indira_Gandhi', 'New_Delhi', 'Int', 'IND');
INSERT INTO airports VALUES (14, 'Dubai', 'Indira_Gandhi', 'New_Delhi', 'Int', 'IND');
INSERT INTO airports VALUES (15, 'Dubai', 'Indira_Gandhi', 'New_Delhi', 'Int', 'IND');
DROP table fooball_info;

CREATE TABLE hospital_info (hospital_id INT, hospital_name VARCHAR(20), location VARCHAR(20), total_beds INT, specialty VARCHAR(20), contact_number VARCHAR(15));
INSERT INTO hospital_info VALUES (1, 'AIIMS', 'New Delhi', 2500, 'Multi-Specialty', '+91-11-26588500');
INSERT INTO hospital_info VALUES(2, 'Medanta - The Medicity', 'Gurgaon', 1600, 'Cardiology', '+91-124-4141414');
INSERT INTO hospital_info VALUES(3, 'Fortis Memorial Research Institute', 'Gurgaon', 1000, 'Oncology', '+91-124-4962200');
INSERT INTO hospital_info VALUES(4, 'Max Super Speciality Hospital', 'New Delhi', 800, 'Neurosurgery', '+91-11-26515050');
INSERT INTO hospital_info VALUES(5, 'Apollo Hospitals', 'Chennai', 600, 'Orthopedics', '+91-44-28290200');
INSERT INTO hospital_info VALUES(6, 'Manipal Hospitals', 'Bangalore', 750, 'Nephrology', '+91-80-25023500');
INSERT INTO hospital_info VALUES(7, 'Narayana Health', 'Bangalore', 700, 'Cardiac Surgery', '+91-80-71222222');
INSERT INTO hospital_info VALUES(8, 'Christian Medical College (CMC)', 'Vellore', 900, 'General Medicine', '+91-416-2281000');
INSERT INTO hospital_info VALUES(9, 'Jaslok Hospital and Research Centre', 'Mumbai', 500, 'Gastroenterology', '+91-22-66573333');
INSERT INTO hospital_info VALUES(10, 'Kokilaben Dhirubhai Ambani Hospital', 'Mumbai', 750, 'Oncology', '+91-22-30999999');
INSERT INTO hospital_info VALUES(11, 'Lilavati Hospital and Research Centre', 'Mumbai', 400, 'Neurology', '+91-22-26751000');
INSERT INTO hospital_info VALUES(12, 'Sir Ganga Ram Hospital', 'New Delhi', 675, 'Pulmonology', '+91-11-25750000');
INSERT INTO hospital_info VALUES(13, 'Tata Memorial Hospital', 'Mumbai', 500, 'Cancer Treatment', '+91-22-24177000');
INSERT INTO hospital_info VALUES(14, 'Care Hospitals', 'Hyderabad', 450, 'Urology', '+91-40-30418888');
INSERT INTO hospital_info VALUES(15, 'Amrita Institute of Medical Sciences', 'Kochi', 1200, 'Multi-Specialty', '+91-484-2851234');

SELECT * FROM hospital_info;


CREATE TABLE country_info (country_id INT, country_name VARCHAR(20), continent VARCHAR(20), population INT, capital VARCHAR(20), currency VARCHAR(20));

SELECT * FROM hospital_info WHERE location = 'New Delhi';
SELECT * FROM hospital_info WHERE location = 'bangalore' AND specialty = 'Cardiac Surgery';
SELECT * FROM hospital_info WHERE location = 'Bangalore' OR specialty = 'Cardiology';


INSERT INTO country_info VALUES (1, 'United States', 'North America', 331000000, 'Washington D.C.', 'USD');
INSERT INTO country_info VALUES (2, 'Canada', 'North America', 38000000, 'Ottawa', 'CAD');
INSERT INTO country_info VALUES(3, 'Brazil', 'South America', 212000000, 'Brasilia', 'BRL');
INSERT INTO country_info VALUES(4, 'United Kingdom', 'Europe', 67000000, 'London', 'GBP');
INSERT INTO country_info VALUES(5, 'Germany', 'Europe', 83000000, 'Berlin', 'EUR');
INSERT INTO country_info VALUES(6, 'France', 'Europe', 67000000, 'Paris', 'EUR');
INSERT INTO country_info VALUES(7, 'India', 'Asia', 1390000000, 'New Delhi', 'INR');
INSERT INTO country_info VALUES(8, 'China', 'Asia', 1440000000, 'Beijing', 'CNY');
INSERT INTO country_info VALUES(9, 'Japan', 'Asia', 126000000, 'Tokyo', 'JPY');
INSERT INTO country_info VALUES(10, 'Australia', 'Australia', 25000000, 'Canberra', 'AUD');
INSERT INTO country_info VALUES(11, 'Russia', 'Europe/Asia', 146000000, 'Moscow', 'RUB');
INSERT INTO country_info VALUES(12, 'South Africa', 'Africa', 60000000, 'Pretoria', 'ZAR');
INSERT INTO country_info VALUES(13, 'Egypt', 'Africa', 104000000, 'Cairo', 'EGP');
INSERT INTO country_info VALUES(14, 'Mexico', 'North America', 128000000, 'Mexico City', 'MXN');
INSERT INTO country_info VALUES(15, 'Argentina', 'South America', 45000000, 'Buenos Aires', 'ARS');


SELECT * FROM country_info;


SELECT * FROM country_info WHERE (continent = 'Asia');

SELECT * FROM hospital_info WHERE (location = 'New_Delhi') OR (total_beds = 500)AND (specialty = 'Oncology');
INSERT INTO scam_info VALUES (1, 'Ponzi Scheme', 'United States', 2008, 65000000000, 'Financial Fraud');
INSERT INTO scam_info VALUES(2, 'Crypto Scam', 'Japan', 2018, 500000000, 'Online Fraud');
INSERT INTO scam_info VALUES(3, 'Fake Lottery', 'India', 2015, 15000000, 'Lottery Fraud');
INSERT INTO scam_info VALUES(4, 'Banking Scam', 'United Kingdom', 2010, 200000000, 'Financial Fraud');
INSERT INTO scam_info VALUES(5, 'Credit Card Fraud', 'Brazil', 2020, 50000000, 'Identity Theft');
INSERT INTO scam_info VALUES(6, 'Tax Fraud', 'Germany', 2019, 80000000, 'Corporate Fraud');
INSERT INTO scam_info VALUES(7, 'Online Job Scam', 'Canada', 2017, 2000000, 'Employment Fraud');
INSERT INTO scam_info VALUES(8, 'Investment Scam', 'Russia', 2016, 100000000, 'Financial Fraud');
INSERT INTO scam_info VALUES(9, 'Insurance Scam', 'Australia', 2021, 25000000, 'Insurance Fraud');
INSERT INTO scam_info VALUES(10, 'Email Phishing', 'France', 2014, 5000000, 'Cyber Fraud');
INSERT INTO scam_info VALUES(11, 'Fake Charity', 'South Africa', 2013, 10000000, 'Charity Fraud');
INSERT INTO scam_info VALUES(12, 'Real Estate Scam', 'Mexico', 2012, 75000000, 'Property Fraud');
INSERT INTO scam_info VALUES(13, 'Forex Scam', 'Singapore', 2011, 6500000, 'Financial Fraud');
INSERT INTO scam_info VALUES(14, 'Fake Degree Scam', 'China', 2018, 9000000, 'Education Fraud');
INSERT INTO scam_info VALUES(15, 'Romance Scam', 'Argentina', 2022, 5000000, 'Online Fraud');
SELECT * FROM scam_info;

SELECT * FROM hospital_info;

DELETE FROM hospital_info WHERE hospital_id = 7;
SELECT * FROM hospital_info WHERE hospital_id between 2 and 5;
DELETE FROM hospital_info WHERE hospital_id between 2 and 5;


select * from cricket_info;
select * from football_info;

select COUNT(*) AS NO_OF_TEAMS from FOOTBALL_INFO;

SELECT SUM(GAMES_PLAYED) AS TOTAL_GAMES FROM FOOTBALL_INFO;
select MAX(TEAM_RANK) AS LAST_RANK from FOOTBALL_INFO;

select MIN(TEAM_RANK) AS TOP_RANK from FOOTBALL_INFO;

SELECT AVG(TOTAL_PLAYERS) AS AVG_PLAYERS FROM FOOTBALL_INFO;

SELECT UPPER(PLAYER_NAME) FROM football_info;

SELECT TEAM, LENGTH(TEAM) FROM FOOTBALL_INFO;

SELECT SUM(noOfPlayers) FROM FOOTBALL_INFO WHERE ID < 5;


DROP TABLE FOOTBALL_INFO;

select sum(matches_played), team from football_info group by team;
select count(venue), player_name from football_info group by player_name;

select min(team_rank), team from football_info group by team;

select min(team_rank) as highest_rank, team from football_info group by team having highest_rank>5;

create table dynasties_of_India(id int not null unique, dyn_name varchar(30) not null unique, ruler_name varchar(30), ruler_age int not null, capital varchar(20) not null,check (ruler_age>18));
desc dynasties_of_India;
insert into dynasties_of_India values
(1, 'Maurya', 'Chandragupta maurya', 20, 'pata;iputra'),
(2, 'Chalukya', 'Jayasimha', 34, 'Badami'),
(3, 'Pallava', 'SimhaVishnu', 19, 'Kanchipuram');
select * from dynasties_of_India;