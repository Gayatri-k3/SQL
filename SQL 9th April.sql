Create table stud_info ( stud_id int primary key, name varchar(30), college varchar(30), branch varchar(20), blood_grp varchar(3), check (stud_id<16));
create table clg_info( clg_id int primary key, clg_name varchar(30), location varchar(30), affiliation varchar(30), stud_id int, foreign key (stud_id) references stud_info(stud_id) on delete cascade, check (stud_id<=16));

drop table stud_info;

Insert into stud_info values
(1, 'Gayatri', 'AGMR', 'CSE', 'O+'),
(2, 'Shivani', 'AGMR', 'CSE', 'A+'),
(3, 'Srushti', 'Malnad CET', 'ISE', 'O+'),
(4, 'Gowsika', 'RVCE', 'CSE', 'B+'),
(5, 'Abhishek', 'AGMR', 'CSE', 'AB+'),
(6, 'Venkatesh', 'AGMR', 'CSE', 'A-'),
(7, 'Manoj', 'AGMR', 'CSE', 'B-'),
(8, 'Ansar', 'AGMR', 'CSE', 'AB-'),
(9, 'Tarun', 'AGMR', 'ECE', 'O+'),
(10, 'Rajat', 'BIT', 'CSE', 'O-'),
(11, 'Lohit', 'RVCE', 'CSE', 'O+'),
(12, 'Ujwal', 'JSS', 'AIML', 'AB-'),
(13, 'Harsha','PES', 'AIML', 'O+'),
(14, 'Ravi', 'JSS', 'AIML', 'B+'),
(15, 'Lavanya', 'PES','CSE','A+');


INSERT INTO clg_info VALUES
(1,'AGMR', 'Varur', 'VTU', 1),
(2, 'BMSE', 'Banglore', 'VTU', 2),
(3, 'RVCE', 'Banglore', 'VTU', 4),
(4, 'MSRIT', 'Banglore', 'VTU', 8),
(5, 'PES', 'Banglore', 'Autonomous', 7),
(6, 'NITK', 'Surathkal', 'Autonomous', 3),
(7, 'DSCE', 'Banglore', 'VTU', 5),
(8, 'NMAM', 'Belgaum', 'VTU', 6),
(9, 'JSS', 'Mysore', 'Autonomous', 9),
(10, 'Basaveshwar Engineering Clg', 'Bagalkot', 'VTU', 10),
(11, 'CMRIT', 'Banglore', 'VTU', 11),
(12, 'Jain CET', 'Hubli', 'VTU', 12),
(13, 'B.I.T', 'Davangare', 'VTU', 13),
(14, 'Coorg Institute of Technology', 'Kodagu', 'VTU', 14),
(15, 'ATME', 'Mysore', 'VTU', 15);


alter table stud_info add column attendance bigint;
update stud_info set attendance = 85 where stud_id = 1;
update stud_info set attendance = 80 where stud_id = 2;
update stud_info set attendance = 75 where stud_id = 3;
update stud_info set attendance = 70 where stud_id = 4;
update stud_info set attendance = 90 where stud_id = 5;

alter table stud_info rename column name TO stud_name;
alter table stud_info rename column college TO clg;
alter table stud_info rename column branch TO engg_branch;

alter table stud_info modify column stud_id bigint;
alter table stud_info modify column clg varchar(50);
alter table stud_info modify column engg_branch varchar(30);

delete from stud_info where stud_name  = "Ujwal";
delete from stud_info where stud_name = 'Lavanya';
delete from stud_info where engg_branch = 'ECE';
delete from stud_info where blood_grp = 'O+';





























Alter table clg_info modify column clg_id bigint;
Alter table clg_info modify column stud_id bigint;
Alter table clg_info modify column affiliation enum( 'VTU', 'Autonomous');

Update clg_info set no_of_branches = 15 where collegeid = 1;
Update clg_info set no_of_branches = 10 where collegeid = 2;
Update clg_info set no_of_branches = 7 where collegeid = 4;
Update clg_info set no_of_branches = 4 where collegeid = 3;
Update clg_info set no_of_branches = 2 where collegeid = 15;

Delete from clg_info where collegeid = 1;
Delete from clg_info where college_name = 'CMRIT';
Delete from clg_info where collegeid = 3;
Delete from clg_info where college_name = 'NMAM';

Select count(*) from clg_info where location = 'Bangalore' and affiliation = 'Autonomous';

Select max(no_of_branches) from college_info where no_of_branches in (1, 5, 4, 3, 15);

Select min(no_of_branches) from college_info where no_of_branches not in (1, 5, 4, 3, 15);

Select * from clg_info where studid between 2 and 8;
Select * from clg_info where studid not between 1 and 15;

Select avg(studid) from college_info;
Select sum(no_of_branches) from college_info;

