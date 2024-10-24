# create table country
create table country (Id INT PRIMARY KEY  ,Country_name varchar (30) ,Population int not null,Area varchar(30) not null
);
DESC country;

# Create  table named Persons 
create table Persons (Id INT PRIMARY KEY ,F_name varchar (30) not null,L_name  varchar (30) not null,
Population int not null,Rating float(10,2) not null, Country_Id CHAR (10) not null  unique ,Country_name varchar(30));

DESC Persons ;

# insert 10 rows into each tables 

INSERT INTO country (Id ,Country_name ,Population ,Area )
VALUES (1,'India',12000000,'Asia');
INSERT INTO country (Id ,Country_name ,Population ,Area )
VALUES (2,'USA',10000000,'North america');
INSERT INTO country (Id ,Country_name ,Population ,Area )
VALUES (3,'Canada',500000,'North america');
INSERT INTO country (Id ,Country_name ,Population ,Area )
VALUES (4,'Australia',2000000,'North east '), (5,'China',500000,'Asia');
INSERT INTO country (Id ,Country_name ,Population ,Area )
VALUES (6,null,15000000,'Asia'), (7,'Bhutan',500000,'Asia');
INSERT INTO country (Id ,Country_name ,Population ,Area )
VALUES (8,'New zealand',20000000,'North east'), (9,'United Kingdom',14000000,'Europe'),(10,'Germany',25000000,'Europe');
select * from country;


insert into persons (Id,F_name,L_name,Population,Rating,Country_Id,Country_name) values (1,'Ajay','Cr',14000000,4.0,'IN','India');
insert into persons (Id,F_name,L_name,Population,Rating,Country_Id,Country_name) values 
(2,'Albert','John',25000000,3.8,'GER','Germany'),(3,'Jerin','Joseph',14000000,4.8,'UK','United Kingdom'),(4,'Catherine','john',2000000,5.0,'AUS','Australia'),
(5,'shangu','shenz',500000,3.5,'CHI','China'),(6,'shangan','sheen',15000000,4.5,'BT',null),(7,'Nathan','cris',10000000,5.0,'US','USA'),
(8,'Fernades','Dcruz',500000,4.8,'CAN','Canada'),(9,'Cristina','Maria',20000000,4.2,'NYZ','New zealand'),(10,'John','Jacob',25000000,3.9,'DEN','Denmark');
select * from persons;


#1.List the distinct country names from the Persons table 
SELECT DISTINCT Country_name FROM Persons;

#2.Select first names and last names from the Persons table with aliases. 
SELECT F_name AS first_name ,L_name as Last_name from persons;

#3.Find all persons with a rating greater than 4.0.
select F_name,Rating from persons where  Rating>4.0 ;
 
#4.Find countries with a population greater than 10 lakhs. 

select Country_name,Population from country where Population>1000000 ;

#5.Find persons who are from 'USA' or have a rating greater than 4.5. 

SELECT F_name,Country_name,Rating FROM Persons WHERE Country_name ='USA' OR Rating > 4.5;

#6.Find all persons where the country name is NULL. 

SELECT * FROM persons WHERE Country_name IS NULL;


#7.Find all persons from the countries 'USA', 'Canada', and 'UK'. 
SELECT * FROM persons WHERE Country_name in ('USA', 'Canada','UK ');

#8.Find all persons not from the countries 'India' and 'Australia'.
SELECT * FROM Persons WHERE Country_name not in ('India','Australia');

#9.Find all countries with a population between 5 lakhs and 20 lakhs. 
select * from country where Population between 500000 and 2000000 ;

#10.Find all countries whose names do not start with 'C'.

select * from country WHERE  Country_name NOT LIKE "C%";