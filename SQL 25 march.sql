/*1) CREATE 2 TABLES WITH 10 columns(TABLES: Cricket_info, FootBall_info)*/

CREATE TABLE cricket_info(id int, venue varchar(20), team varchar(20), team_rank int, team_captain varchar(20), noOfPlayers int, player_name varchar(20), matches_played int,  player_age int, score_avg varchar(20));
CREATE TABLE football_info(id int, venue varchar(20), team varchar(20), team_rank int, team_captain varchar(20), noOfPlayers int, player_name varchar(20), matches_played int,  player_age int, goal_avg varchar(20));
ALTER table football_info modify column goal_avg varchar(20);
/*2) INSERT 15 data for each table*/
INSERT INTO cricket_info values(1, 'Bengaluru', 'RCB', 2, 'Rajat Patidar', 22, 'Rajat Patidar', 28, 31, '34.71');
INSERT INTO cricket_info VALUES(2, 'Mumbai', 'MI', 4, 'Rohit Sharma', 45, 'Suryakumar Yadav', 85, 60, '42.34');
INSERT INTO cricket_info VALUES(3, 'Chennai', 'CSK', 6, 'MS Dhoni', 50, 'Ruturaj Gaikwad', 95, 65, '51.12');
INSERT INTO cricket_info VALUES(4, 'Delhi', 'DC', 8, 'Rishabh Pant', 33, 'Prithvi Shaw', 75, 49, '37.89');
INSERT INTO cricket_info VALUES(5, 'Kolkata', 'KKR', 10, 'Shreyas Iyer', 40, 'Andre Russell', 78, 55, '39.56');
INSERT INTO cricket_info VALUES(6, 'Hyderabad', 'SRH', 12, 'Kane Williamson', 35, 'Abhishek Sharma', 88, 70, '47.23');
INSERT INTO cricket_info VALUES(7, 'Jaipur', 'RR', 14, 'Sanju Samson', 60, 'Jos Buttler', 110, 80, '53.48');
INSERT INTO cricket_info VALUES(8, 'Punjab', 'PBKS', 16, 'Shikhar Dhawan', 47, 'Liam Livingstone', 84, 62, '41.87');
INSERT INTO cricket_info VALUES(9, 'Ahmedabad', 'GT', 18, 'Hardik Pandya', 55, 'Shubman Gill', 92, 68, '48.56');
INSERT INTO cricket_info VALUES(10, 'Lucknow', 'LSG', 20, 'KL Rahul', 75, 'Quinton de Kock', 102, 90, '54.67');
INSERT INTO cricket_info VALUES(11, 'Pune', 'PWI', 22, 'Steve Smith', 58, 'Robin Uthappa', 89, 72, '43.92');
INSERT INTO cricket_info VALUES(12, 'Chandigarh', 'KP', 24, 'Yuvraj Singh', 44, 'Chris Gayle', 95, 82, '50.34');
INSERT INTO cricket_info VALUES(13, 'Visakhapatnam', 'VVV', 26, 'David Warner', 67, 'Mitchell Marsh', 99, 78, '46.23');
INSERT INTO cricket_info VALUES(14, 'Rajkot', 'RRR', 28, 'Aaron Finch', 52, 'Dinesh Karthik', 77, 56, '39.78');
INSERT INTO cricket_info VALUES(15, 'Nagpur', 'RCB', 30, 'Virat Kohli', 92, 'AB de Villiers', 115, 98, '55.12');
SELECT * FROM CRICKET_INFO;



INSERT INTO football_info VALUES(1, 'Portugal', 'Arsenal', 2, 'Martin Odegaard', 27, 'Martin Odegaard', 185, 26, '0.23 per match');
INSERT INTO football_info VALUES(2, 'Argentina', 'Barcelona', 10, 'Lionel Messi', 34, 'Lionel Messi', 672, 34, '0.86 per match');
INSERT INTO football_info VALUES(3, 'Brazil', 'Real Madrid', 7, 'Cristiano Ronaldo', 36, 'Cristiano Ronaldo', 450, 36, '1.03 per match');
INSERT INTO football_info VALUES(4, 'France', 'Paris Saint-Germain', 10, 'Kylian Mbappe', 23, 'Kylian Mbappe', 201, 23, '0.81 per match');
INSERT INTO football_info VALUES(5, 'Egypt', 'Liverpool', 11, 'Mohamed Salah', 31, 'Mohamed Salah', 186, 31, '0.61 per match');
INSERT INTO football_info VALUES(6, 'Belgium', 'Manchester City', 17, 'Kevin De Bruyne', 32, 'Kevin De Bruyne', 96, 32, '0.30 per match');
INSERT INTO football_info VALUES(7, 'Poland', 'Bayern Munich', 9, 'Robert Lewandowski', 34, 'Robert Lewandowski', 344, 34, '0.92 per match');
INSERT INTO football_info VALUES(8, 'Norway', 'Borussia Dortmund', 9, 'Erling Haaland', 22, 'Erling Haaland', 86, 22, '0.97 per match');
INSERT INTO football_info VALUES(9, 'Spain', 'Atletico Madrid', 7, 'Antoine Griezmann', 32, 'Antoine Griezmann', 145, 32, '0.48 per match');
INSERT INTO football_info VALUES(10, 'England', 'Tottenham Hotspur', 10, 'Harry Kane', 30, 'Harry Kane', 210, 30, '0.66 per match');
INSERT INTO football_info VALUES(11, 'Germany', 'Chelsea', 29, 'Kai Havertz', 24, 'Kai Havertz', 32, 24, '0.23 per match');
INSERT INTO football_info VALUES(12, 'Netherlands', 'Manchester United', 18, 'Bruno Fernandes', 28, 'Bruno Fernandes', 61, 28, '0.35 per match');
INSERT INTO football_info VALUES(13, 'Italy', 'Juventus', 8, 'Paulo Dybala', 29, 'Paulo Dybala', 115, 29, '0.39 per match');
INSERT INTO football_info VALUES(14, 'Senegal', 'Bayern Munich', 10, 'Sadio Mane', 31, 'Sadio Mane', 120, 31, '0.45 per match');
INSERT INTO football_info VALUES(15, 'Sweden', 'AC Milan', 11, 'Zlatan Ibrahimovic', 41, 'Zlatan Ibrahimovic', 511, 41, '0.59 per match');

/*3) By using alter add 2 columns*/
ALTER TABLE football_info
ADD COLUMN position varchar(50),
ADD COLUMN nationality varchar(50);
ALTER TABLE FOOTBALL_INFO DROP COLUMN positioN;
ALTER TABLE FOOTBALL_INFO DROP COLUMN NATIONALITY;

ALTER TABLE cricket_info
ADD COLUMN player_role varchar(50),
ADD COLUMN highest_score int;


/*4) Rename 4 columns*/
ALTER TABLE cricket_info
RENAME COLUMN venue TO location,
RENAME COLUMN noOfPlayers TO total_players,
RENAME COLUMN matches_played TO games_played,
RENAME COLUMN score_avg TO average_score;

ALTER TABLE football_info
RENAME COLUMN venue TO location,
RENAME COLUMN noOfPlayers TO total_players,
RENAME COLUMN matches_played TO games_played,
RENAME COLUMN goal_avg TO average_goals;




/*5) update 5 data for each table using AND, OR, IN, NOT IN*/
UPDATE cricket_info
SET team_rank = 1
WHERE team = 'RCB' AND location = 'Bengaluru';

UPDATE cricket_info
SET average_score = '40.00'
WHERE team = 'CSK' OR player_name = 'MS Dhoni';

UPDATE cricket_info
SET player_age = 30
WHERE player_name IN ('Virat Kohli', 'AB de Villiers');

UPDATE cricket_info
SET team_captain = 'Shreyas Iyer'
WHERE team NOT IN ('MI', 'CSK', 'SRH');

UPDATE cricket_info
SET total_players = 11
WHERE location IN ('Mumbai', 'Chennai') AND team_rank <= 5;





UPDATE football_info
SET team_rank = 1
WHERE team = 'Arsenal' AND location = 'Portugal';

UPDATE football_info
SET average_goals = '0.50 per match'
WHERE team = 'Barcelona' OR player_name = 'Lionel Messi';

UPDATE football_info
SET player_age = 28
WHERE player_name IN ('Cristiano Ronaldo', 'Erling Haaland');

UPDATE football_info
SET team_captain = 'Harry Kane'
WHERE team NOT IN ('Real Madrid', 'PSG', 'Liverpool');

UPDATE football_info
SET total_players = 22
WHERE location IN ('England', 'Germany') AND team_rank <= 5;


/*6) delete 3 data for each table.*/

DELETE FROM cricket_info
WHERE player_name IN ('MS Dhoni', 'AB de Villiers');

DELETE FROM cricket_info
WHERE location = 'Mumbai' OR team_rank > 10;

DELETE FROM cricket_info
WHERE player_name IN ('MS Dhoni', 'AB de Villiers');

DELETE FROM football_info
WHERE player_name = 'Cristiano Ronaldo' AND team = 'Real Madrid';

DELETE FROM football_info
WHERE location = 'England' OR team_rank > 5;

DELETE FROM football_info
WHERE player_name IN ('Lionel Messi', 'Harry Kane');



/*7) Fetch the data using Where, AND, OR, IN, NOT IN, BETWEEN, NOT BETWEEN,
LIKE, NOT LIKE.*/
SELECT * FROM cricket_info
WHERE player_name LIKE 'Vira%' AND team NOT IN ('MI', 'CSK', 'SRH');

SELECT * FROM cricket_info
WHERE player_name IN ('Virat Kohli', 'AB de Villiers') AND player_age NOT BETWEEN 20 AND 30;

SELECT * FROM cricket_info
WHERE team = 'RCB' AND team_rank BETWEEN 1 AND 5 OR location = 'Mumbai';


SELECT * FROM football_info
WHERE team = 'Arsenal' AND team_rank BETWEEN 1 AND 5 OR location = 'Portugal';

SELECT * FROM football_info
WHERE player_name IN ('Cristiano Ronaldo', 'Lionel Messi') AND player_age NOT BETWEEN 25 AND 30;

SELECT * FROM football_info
WHERE player_name LIKE 'Lion%' AND team NOT IN ('Barcelona', 'PSG', 'Liverpool');