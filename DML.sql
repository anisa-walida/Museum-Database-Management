Insert into Art Values(000001,'Johannes Vermeer','Girl with a Pearl Earring',500000,'Painting',1665,date '2022-05-30','on display','Oil Painting');
Insert into Art Values(000002,'Leonard da Vinci','The Last Supper',1000000,'Painting',1498,date '2020-05-30','On loan','Renesance');
Insert into Art Values(000003,'Michelangelo','David',500000,'Sculpture',1504,date '2017-03-01','On display','Renesance');
Insert into Art Values(000004,'Alexandros of Antioch','Venus de Milo',900000,'Sculpture',-150,date '2022-05-30','On display','Greek and Roman');
Insert into Art Values(000005,'Grant Wood','American Gothic',600000,'Painting',1840,date '2012-05-17','ArtShop','American Gallery');
Insert into Art Values(000006,'Andokedes','Terracota Amphora',500000,'Pottery',-530,date '2022-05-25','on loan','Greek and Roman');
Insert into Art Values(000007,'Marcel Duchamp','Fountain',1000000,'Sculpture',1917,date '2010-07-30','On Display','Modern');
Insert into Art Values(000008,'Unknown','Magical Stela',800000,'Curving',-360,date '2017-03-01','On display','Egyptian Art');
Insert into Art Values(000009,'Ambrogio Lorenzetti','The Effect of Good Government',300000,'Fresco',1330,date '2022-05-30','Artshop','Medieval Art');
Insert into Art Values(000010,'Sanford Robinson Gifford','A Gorge in the Mountains',70000000,'Painting',1868,date '2012-05-17','ArtShop','American Gallery');

Insert into ArtistInfo Values(00001,'Sanford Robinson Gifford',1823,'Painter');
Insert into ArtistInfo Values(00002,'Ambrogio Lorenzetti',1290,'Painter');
Insert into ArtistInfo Values(00003,'Marcel Duchamp',1887,'Painter');
Insert into ArtistInfo Values(00004,'Andokedes',-515,'Vase Painter');
Insert into ArtistInfo Values(00005,'Grant Wood',1891,'Painter');
Insert into ArtistInfo Values(00006,'Alexandros of Antioch',-130,'Sculptor');
Insert into ArtistInfo Values(00007,'Michelangelo',1475,'Sculptor');
Insert into ArtistInfo Values(00008,'Leonard da Vinci',1452,'Painter');
Insert into ArtistInfo Values(00009,'Johannes Vermeer',1632,'Painter');
Insert into ArtistInfo Values(000010,'Vincent van Gogh',1853,'Painter');

Insert into location Values(000001,'Girl with a Pearl Earring',870005,'9th','Painting','Oil Painting');
Insert into location Values(000002,'The Last Supper',870009,'6th','Painting','Renesance');
Insert into location Values(000003,'David',870017,'3rd','Sculpture','Renesance');
Insert into location Values(000004,'Venus de Milo',870111,'1st','Sculpture','Greek and Roman');
Insert into location Values(000005,'American Gothic',870999,'6th','Painting','American Gallery');
Insert into location Values(000006,'Terracota Amphora',870001,'5th','Pottery','Greek and Roman');
Insert into location Values(000007,'Fountain',870003,'3rd','Sculpture','Modern');
Insert into location Values(000008,'Magical Stela',870190,'2nd','Sculpture','Egyptian Art');
Insert into location Values(000009,'Ambrogio Lorenzetti',870890,'8th','Painting','Medieval Art');
Insert into location Values(000010,'Sanford Robinson Gifford',870067,'5th','Pottery','American Gallery');

Insert into Onloan Values(132001,000001,'Girl with a Pearl Earring',NULL,NULL,6500);
Insert into Onloan Values(135090,000002,'The Last Supper',NULL,date '2023-05-04',9000);
Insert into Onloan Values(137893,000003,'David',date '2014-10-07',date '2014-09-07',8609);
Insert into Onloan Values(135556,000004,'Venus de Milo',date '2022-01-22',date '2021-12-22',9076);
Insert into Onloan Values(132278,000005,'American Gothic',date '2019-03-16',date '2019-02-16',7743);
Insert into Onloan Values(138900,000006,'Terracota Amphora',NULL,'2023-05-04',8700);
Insert into Onloan Values(130009,000007,'Fountain',NULL,NULL,3400);
Insert into Onloan Values(136668,000008,'Magical Stela',date '2010-06-19',date '2010-05-19',8543);
Insert into Onloan Values(134274,000009,'Ambrogio Lorenzetti',NULL,NULL,0008);
Insert into Onloan Values(135299,000010,'Sanford Robinson Gifford',NULL,NULL,4522);

Insert into Repairs Values(240009,000001,870005,'Abul kader',date '2010-02-19', date '2010-01-19', date '2010-02-19',500,3000,'Frame Repair');
Insert into Repairs Values(246660,000002,870009,'Shamsur Rahman',date '2011-04-06',date '2011-03-06', date '2011-05-01',500,10000,'Frame Repair');
Insert into Repairs Values(245789,000003,870017,'Nilima Ghosh',date '2013-09-18',date '2013-08-18', date '2013-09-11',300,1000,'Plaster');
Insert into Repairs Values(243671,000004,870111,'Rana Hasan',date '2013-12-27',date '2013-11-27', date '2013-12-25',700,20000,'Plaster');
Insert into Repairs Values(240000,000005,870999,'Mannan Mia',date '2014-01-23',date '2013-12-23', date '2014-01-31',100,800,'Frame Repair');
Insert into Repairs Values(243314,000002,870009,'Shamsur Rahman',date '2014-03-11',date '2014-02-11', date '2014-03-11',900,5000,'Frame Repair');
Insert into Repairs Values(242456,000003,870017,'Nilima Ghosh',date '2019-08-30',date '2019-07-30', date '2019-10-13',300,9000,'Plaster');
Insert into Repairs Values(244451,000008,870190,'Ahad Munshi',date '2021-04-12',date '2011-03-12', date '2021-04-12',500,3000,'Recarving and Cleaning');
Insert into Repairs Values(248510,000005,870999,'Mannan Mia',date '2022-09-17',date '2022-08-17', date '2022-09-24',500,1230,'Frame Repair');
Insert into Repairs Values(245019,000004,870111,'Rana hasan',date'2023-03-03',date '2023-02-03', date '2023-03-11',900,900,'Plaster');

/*Updating a value in Art Table*/
update art set Artist='Andokides' where AID='0000006';

/* Counting Number of Gallery in Art Table*/
select count(Gallery) as Number_of_Gallery from Art;

/*Counting Number of Distinct Gallery in Art Table*/
select count(distinct Gallery) as Number_of_Gallery from Art;

/*Average Cost of Labour in Repairs Table*/
select avg(costoflabour) from Repairs;

/*Total Sum of Cost of Repair in Repairs Table*/
select sum(costofrepair) from Repairs;

/*Maximum Monetary Value of an Art*/
select max(MonetaryValue) from Art;

/*Minimum Monetary Valur of an Art*/
select min(MonetaryValue) from Art;

/*Average Monetary Value of Each Type*/
select Type,avg(MonetaryValue) from Art group by Type;

/*Finding some Record of location table where locaiton Id(LID)>=870067 */
select * from location where lid> some(select lid from location where lid>=870067);

/*Finding out if all the LID in Location table id greater than 870000*/
select * from location where lid> all(select lid from location where lid<870000);

/*Finding records from Onloan where Art Id(AID)>=5 and where the string 'Sculpture' exists in Art table */
select * from Onloan where aid>=5 and exists(select * from art where type like '%Sculpture%');

/*Finding Artist from Artist Table who created the Art having Repair Id(RID) 243671*/
select Artist from art where AId=(select AID from Location where LID=(select LID from repairs where RID=243671));

/*Finding the record of Arts in Renesance Gallery in 'Painting' Section*/
select * from art where Gallery='Renesance' and AId in (select AID from location where section like '%Painting%')

/*Art title begining with A*/
SELECT * FROM Art WHERE title LIKE 'A%';

/*Art title ending with a*/
SELECT * FROM Art WHERE title LIKE '%a';

/*Artist Name containing V & v*/
SELECT * FROM Artist WHERE NAME LIKE '%V%v%';

/*Art title having 5 letters*/
SELECT * FROM art WHERE title LIKE '_____';

/*Joining table Art and location where Aid<=7*/
select * from Art natural join LOCATION  where aid<=7;

/*Showing title and section of arts by joining table Art and Location*/
select Title,section from art join LOCATION   on art.aid=LOCATION.aid;

/*Left outer join of art and onloan table*/
select title ,TrackingID  from ART  left outer join ONLOAN  using(aid);

/*Right outer join of location and onloan table*/
select Gallery ,TrackingID  from LOCATION right outer join ONLOAN  using(aid);

/*Full outer join of location and onloan table*/
select dept_name,course_name from dept full outer join course using(dept_id);

/*Create View of Art table with the Atribute AID and title*/
create view dept_details as select AID,title from ART ;








