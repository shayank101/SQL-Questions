/*
query names of city in station table.
they should not be any duplicates
and starts with vowels.
*/

-- method 1 : with MySQL
select distinct city 
from station
where city like 'a%' or city like 'e%' or city like 'i%' or city like 'o%' or city like 'u%' 
order by city

-- method 2 : with : SQL
SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '^[AEIOUaeiou]';
