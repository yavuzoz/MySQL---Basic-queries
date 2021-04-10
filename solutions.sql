/*# can be be used to comment line#*/
/* soru1*/
SELECT *
FROM CITY
WHERE
    COUNTRYCODE = 'USA'
    AND POPULATION > 100000;
    /*soru 2*/
SELECT NAME FROM CITY WHERE COUNTRYCODE = 'USA' AND POPULATION > 120000;
/*soru 3*/
SELECT * FROM CITY;
/*soru 4*/
SELECT * FROM CITY WHERE ID = 1661;
/*soru 5*/
SELECT * FROM CITY WHERE COUNTRYCODE = 'JPN';
/*soru 6*/
SELECT CITY,STATE FROM STATION;
/*soru 7*/
SELECT DISTINCT(CITY) FROM STATION WHERE (ID%2)=0 
/*soru 8*/
select (count(CITY)-COUNT(DISTINCT CITY)) from STATION;
/*soru 8*/
SELECT DISTINCT(city) FROM station WHERE city RLIKE '[aeiou]$';
/*soru 9*/
SELECT DISTINCT CITY FROM STATION WHERE SUBSTR(CITY,LENGTH(CITY),LENGTH(CITY)) IN ('a','i','e','o','u');
/*soru 10*/
select distinct city from station 
where left(city,1) in ('a','e','i','o','u') 
and right(city, 1) in ('a','e','i','o','u')
/*soru 11*/
SELECT DISTINCT CITY FROM STATION WHERE CITY REGEXP '[^AEIOU]$';
/*soru 12*/
SELECT DISTINCT City
FROM Station
WHERE REGEXP_LIKE(City, '^[^AEIOU].*[^aeiou]$');