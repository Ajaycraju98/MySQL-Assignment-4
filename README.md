# MySQL-Assignment-4
This  Assignment explains about the Querying data in MySQL
In this table there are two tables  named Country, Persons .The different data are retrived using the select funcion.

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
