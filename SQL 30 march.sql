CREATE TABLE pkl_info(id int not null unique, team_name varchar(20) not null unique , team_captain varchar(30) not null unique, team_VP varchar(30) not null unique, team_coach varchar(30) not null unique, won_count int, lost_count int, total_no_of_points int, total_matches_played int, avg_win_rate bigint);
CREATE TABLE cosmetic_info(id int not null unique, type_of_cosmetic VARCHAR(20) not null, product_name varchar(20) not null unique, brand varchar(20) not null, price int, quantity_in_ml int, available_in_shop varchar(20), country_origin varchar(20) NOT NULL, suitable_for varchar(20), is_waterproof boolean, is_vegan boolean);
CREATE TABLE MOVIES_INFO(ID INT NOT NULL UNIQUE, MOVIE_NAME VARCHAR(20) NOT NULL UNIQUE, mov_lang varchar(10) not null, actor_male varchar(20) not null, actor_female varchar(20) not null, director varchar(20), budget bigint, release_year int, rating int, box_office_collection bigint);

INSERT INTO pkl_info VALUES
(1, 'Bengal Warriors', 'Maninder Singh', 'Mohammad Nabibakhsh', 'BC Ramesh', 12, 6, 68, 18, 67),
(2, 'Dabang Delhi', 'Naveen Kumar', 'Vijay Malik', 'Krishan Kumar Hooda', 12, 6, 68, 18, 67),
(3, 'UP Yoddha', 'Pardeep Narwal', 'Nitesh Kumar', 'Jasveer Singh', 14, 4, 75, 18, 78),
(4, 'Bengaluru Bulls', 'Pawan Sehrawat', 'Mahender Singh', 'Randhir Singh', 14, 4, 75, 18, 78),
(5, 'Tamil Thalaivas', 'Surjeet Singh', 'Sagar Rathee', 'J Udaya Kumar', 7, 11, 45, 18, 39),
(6, 'Gujarat Giants', 'Sunil Kumar', 'Parvesh Bhainswal', 'Manpreet Singh', 7, 11, 45, 18, 39),
(7, 'Jaipur Pink Panthers', 'Deepak Niwas Hooda', 'Sandeep Dhull', 'Sanjeev Baliyan', 9, 9, 55, 18, 50),
(8, 'Puneri Paltan', 'Nitin Tomar', 'Aslam Inamdar', 'Anup Kumar', 9, 9, 55, 18, 50),
(9, 'Haryana Steelers', 'Vikash Kandola', 'Surender Nada', 'Rakesh Kumar', 16, 2, 90, 18, 89),
(10, 'Patna Pirates', 'Neeraj Kumar', 'Sachin Tanwar', 'Ramakant Sharma', 16, 2, 90, 18, 89),
(11, 'Telugu Titans', 'Rohit Kumar', 'Siddharth Desai', 'Jagadeesh Kumble', 5, 13, 35, 18, 28),
(12, 'U Mumba', 'Fazel Atrachali', 'Abhishek Singh', 'Sanjeev Kumar Baliyan', 5, 13, 35, 18, 28),
(13, 'Mumbai Indians', 'Surinder Singh', 'Harendra Kumar', 'Amit Singh', 10, 8, 58, 18, 56),
(14, 'Chennai Super Kings', 'Shivam Chaudhary', 'Arun Kumar', 'Rajesh Sharma', 10, 8, 58, 18, 56),
(15, 'Rajasthan Royals', 'Sandeep Narwal', 'Rajesh Narwal', 'Srinivas Reddy', 8, 10, 50, 18, 44),
(16, 'Kolkata Riders', 'Manoj Narwal', 'Vikas Chillar', 'Ramesh Powar', 8, 10, 50, 18, 44),
(17, 'Punjab Kings', 'Harjeet Singh', 'Kashish Suri', 'Balwant Singh', 6, 12, 38, 18, 33),
(18, 'Sunrisers Hyderabad', 'Amit Hooda', 'Anil Kumar', 'Surender Singh', 6, 12, 38, 18, 33),
(19, 'Delhi Capitals', 'Vinod Kumar', 'Mahesh Goud', 'Jagdish Kumble', 12, 6, 70, 18, 67),
(20, 'RCB', 'Vishal Mane', 'Shubham Shinde', 'Nilesh Shinde', 12, 6, 70, 18, 67);

desc pkl_info;
SELECT * FROM PKL_INFO;


select avg(avg_win_rate) from pkl_info;

select sum(total_matches_played) from pkl_info;

select max(won_count) as most_won from pkl_info;

select min(lost_count) as least_lost from pkl_info;

select team_name, min(lost_count) as least_lost from pkl_info group by team_name having least_lost < 5;
select team_captain, max(won_count) as most_won from pkl_info group by team_captain having most_won > 10;






ALTER table pkl_info add column captain_position varchar(10);
update pkl_info set captain_position = 'Raider' where id = 1;
update pkl_info set captain_position = 'Raider' where id = 2;
update pkl_info set captain_position = 'Raider' where id = 3;
update pkl_info set captain_position = 'Defender' where id = 4;
update pkl_info set captain_position = 'Defender' where id = 5;
update pkl_info set captain_position = 'AllRounder' where id = 6;
update pkl_info set captain_position = 'Raider' where id = 7;
update pkl_info set captain_position = 'AllRounder' where id = 8;
update pkl_info set captain_position = 'Defender' where id = 9;
update pkl_info set captain_position = 'Raider' where id = 10;
update pkl_info set captain_position = 'Defender' where id = 11;
update pkl_info set captain_position = 'Raider' where id = 12;
update pkl_info set captain_position = 'AllRounder' where id = 13;
update pkl_info set captain_position = 'Raider' where id = 14;
update pkl_info set captain_position = 'Defender' where id = 15;
update pkl_info set captain_position = 'Raider' where id = 16;
update pkl_info set captain_position = 'AllRounder' where id = 17;
update pkl_info set captain_position = 'Defender' where id = 18;
update pkl_info set captain_position = 'Raider' where id = 19;
update pkl_info set captain_position = 'Defender' where id = 20;


INSERT INTO cosmetic_info VALUES
(1, 'Lipstick', 'Matte Red', 'Maybelline', 499, 5, 'Sephora', 'USA', 'All Skin', TRUE, FALSE),
(2, 'Foundation', 'Fit Me', 'Maybelline', 799, 30, 'Ulta', 'USA', 'Oily Skin', FALSE, FALSE),
(3, 'Mascara', 'Lash Paradise', 'L\'Oreal', 599, 10, 'Walmart', 'France', 'All Skin', TRUE, FALSE),
(4, 'Eyeliner', 'Colossal Kajal', 'Maybelline', 299, 2, 'Amazon', 'USA', 'All Skin', TRUE, FALSE),
(5, 'Lip Balm', 'Baby Lips', 'Maybelline', 199, 4, 'Target', 'USA', 'Dry Lips', FALSE, TRUE),
(6, 'Face Serum', 'Vitamin C Glow', 'The Body Shop', 1299, 50, 'Sephora', 'UK', 'All Skin', FALSE, TRUE),
(7, 'Compact Powder', 'Stay Matte', 'Rimmel', 450, 14, 'Boots', 'UK', 'Oily Skin', FALSE, FALSE),
(8, 'Lipstick', 'Velvet Nude', 'Huda Beauty', 1500, 5, 'Nykaa', 'UAE', 'All Skin', TRUE, TRUE),
(9, 'Blush', 'Peach Glow', 'MAC', 1700, 6, 'Sephora', 'Canada', 'All Skin', FALSE, FALSE),
(10, 'Sunscreen', 'Ultra Sheer', 'Neutrogena', 600, 88, 'Walgreens', 'USA', 'Sensitive Skin', TRUE, TRUE),
(11, 'Moisturizer', 'Hydro Boost', 'Neutrogena', 850, 50, 'Walmart', 'USA', 'Dry Skin', FALSE, TRUE),
(12, 'Makeup Remover', 'Micellar Water', 'Garnier', 350, 125, 'CVS', 'France', 'All Skin', FALSE, TRUE),
(13, 'Hair Serum', 'Argan Oil', 'OGX', 900, 100, 'Amazon', 'USA', 'Dry Hair', FALSE, TRUE),
(14, 'BB Cream', 'Pond\'s Flawless', 'Pond\'s', 299, 18, 'Nykaa', 'India', 'All Skin', FALSE, FALSE),
(15, 'Lip Gloss', 'Crystal Shine', 'Fenty Beauty', 1200, 6, 'Sephora', 'USA', 'All Skin', FALSE, TRUE),
(16, 'Eyeshadow', 'Naked Palette', 'Urban Decay', 4000, 12, 'Sephora', 'USA', 'All Skin', FALSE, FALSE),
(17, 'Nail Polish', 'Ruby Red', 'Sally Hansen', 299, 8, 'Walmart', 'USA', 'All Skin', TRUE, FALSE),
(18, 'Toner', 'Rose Water', 'Kama Ayurveda', 1200, 100, 'Nykaa', 'India', 'All Skin', FALSE, TRUE),
(19, 'Highlighter', 'Golden Hour', 'Becca', 2500, 9, 'Sephora', 'Canada', 'All Skin', FALSE, FALSE),
(20, 'Perfume', 'Bloom', 'Gucci', 6500, 50, 'Sephora', 'Italy', 'All Skin', FALSE, FALSE);

desc cosmetic_info;
SELECT * FROM cosmetic_info;

ALTER TABLE cosmetic_info add column is_comedogenic boolean;
UPDATE cosmetic_info set is_comedogenic = True WHERE id = 2 ;

update cosmetic_info SET is_comedogenic = FALSE where id IN (1, 3, 4, 5, 6, 9, 10, 11, 12, 13, 15, 16, 17, 18, 19, 20);
update cosmetic_info SET is_comedogenic = TRUE where id IN (7, 8, 14);


select product_name, sum(price) as total_price from cosmetic_info group by product_name having total_price between 500 and 1000;
select type_of_cosmetic, min(quantity_in_ml) as quantity from cosmetic_info group by type_of_cosmetic having quantity < 50;
select type_of_cosmetic, sum(price) as avg_price from cosmetic_info group by type_of_cosmetic having avg_price < 500;
select country_origin, max(price) as high_price from cosmetic_info group by country_origin ;
select country_origin, count(type_of_cosmetic) as most_products_by_Country from cosmetic_info group by country_origin;
select is_comedogenic, count(product_name) as is_comedogenic_product from cosmetic_info group by is_comedogenic;
select is_vegan, count(brand) as vegan_brands from cosmetic_info group by is_vegan;

INSERT INTO MOVIES_INFO VALUES
(1, 'Inception', 'English', 'Leonardo DiCaprio', 'Elliot Page', 'Christopher Nolan', 160000000, 2010, 9, 829000000),
(2, 'Titanic', 'English', 'Leonardo DiCaprio', 'Kate Winslet', 'James Cameron', 200000000, 1997, 9, 2200000000),
(3, 'Interstellar', 'English', 'Matthew McConaughey', 'Anne Hathaway', 'Christopher Nolan', 165000000, 2014, 9, 700000000),
(4, 'The Dark Knight', 'English', 'Christian Bale', 'Maggie Gyllenhaal', 'Christopher Nolan', 185000000, 2008, 9, 1004000000),
(5, 'Avatar', 'English', 'Sam Worthington', 'Zoe Saldana', 'James Cameron', 237000000, 2009, 8, 2920000000),
(6, 'Dangal', 'Hindi', 'Aamir Khan', 'Sakshi Tanwar', 'Nitesh Tiwari', 70000000, 2016, 9, 2000000000),
(7, '3 Idiots', 'Hindi', 'Aamir Khan', 'Kareena Kapoor', 'Rajkumar Hirani', 55000000, 2009, 9, 460000000),
(8, 'Pathaan', 'Hindi', 'Shah Rukh Khan', 'Deepika Padukone', 'Siddharth Anand', 250000000, 2023, 8, 1050000000),
(9, 'Baahubali', 'Telugu', 'Prabhas', 'Anushka Shetty', 'S. S. Rajamouli', 180000000, 2015, 9, 1800000000),
(10, 'RRR', 'Telugu', 'Ram Charan', 'Alia Bhatt', 'S. S. Rajamouli', 550000000, 2022, 9, 1200000000),
(11, 'Pushpa', 'Telugu', 'Allu Arjun', 'Rashmika Mandanna', 'Sukumar', 250000000, 2021, 8, 350000000),
(12, 'Kantara', 'Kannada', 'Rishab Shetty', 'Sapthami Gowda', 'Rishab Shetty', 16000000, 2022, 8, 400000000),
(13, 'K.G.F', 'Kannada', 'Yash', 'Srinidhi Shetty', 'Prashanth Neel', 80000000, 2018, 8, 1200000000),
(14, 'Jailer', 'Tamil', 'Rajinikanth', 'Tamannaah', 'Nelson Dilipkumar', 200000000, 2023, 8, 600000000),
(15, 'Leo', 'Tamil', 'Vijay', 'Trisha', 'Lokesh Kanagaraj', 250000000, 2023, 8, 750000000),
(16, 'Vikram', 'Tamil', 'Kamal Haasan', 'Shivani Narayanan', 'Lokesh Kanagaraj', 200000000, 2022, 9, 900000000),
(17, 'Chennai Express', 'Hindi', 'Shah Rukh Khan', 'Deepika Padukone', 'Rohit Shetty', 75000000, 2013, 7, 420000000),
(18, 'Drishyam', 'Malayalam', 'Mohanlal', 'Meena', 'Jeethu Joseph', 50000000, 2013, 9, 800000000),
(19, 'Kumbalangi Nights', 'Malayalam', 'Fahadh Faasil', 'Anna Ben', 'Madhu C. Narayanan', 6000000, 2019, 8, 130000000),
(20, 'Super 30', 'Hindi', 'Hrithik Roshan', 'Mrunal Thakur', 'Vikas Bahl', 65000000, 2019, 8, 208000000);


desc movies_info;

alter table movies_info drop column supporting_actor;
alter table movies_info add column supporting_actor varchar(30) not null ;
update movies_info set supporting_actor = 'tom holland' where id = 1;
update movies_info set supporting_actor = 'kate winslet' where id = 2;
update movies_info set supporting_actor = 'anne hathaway' where id = 3;
update movies_info set supporting_actor = 'maggie gyllenhaal' where id = 4;
update movies_info set supporting_actor = 'zoe saldana' where id = 5;
update movies_info set supporting_actor = 'Geeta Phogat' where id = 6;
update movies_info set supporting_actor = 'sakshi tanwar' where id = 7;
update movies_info set supporting_actor = 'deepika padukone' where id = 8;
update movies_info set supporting_actor = 'anushka shetty' where id = 9;
update movies_info set supporting_actor = 'alia bhatt' where id = 10;
update movies_info set supporting_actor = 'rashmika mandanna' where id = 11;
update movies_info set supporting_actor = 'sapthami gowda' where id = 12;
update movies_info set supporting_actor = 'srinidhi shetty' where id = 13;
update movies_info set supporting_actor = 'tamannaah' where id = 14;
update movies_info set supporting_actor = 'trisha' where id = 15;
update movies_info set supporting_actor = 'shivani narayanan' where id = 16;
update movies_info set supporting_actor = 'deepika padukone' where id = 17;
update movies_info set supporting_actor = 'meena' where id = 18;
update movies_info set supporting_actor = 'anna ben' where id = 19;
update movies_info set supporting_actor = 'mrunal thakur' where id = 20;

select * from movies_info;
select movie_name, max(box_office_collection) as maximum_collection from movies_info  group by movie_name having maximum_collection > 900000000;
select director, count(director) as num_movies_directed from movies_info group by director having num_movies_directed > 2;
select mov_lang, count(actor_female) as num_of_actorsf_by_language from movies_info group by mov_lang ;
select director, sum(box_office_collection) as highest_collection_director from movies_info group by director;

