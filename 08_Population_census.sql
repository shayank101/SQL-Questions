/*
Basic Joins

Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns.


scroll down for Solution
*/












SELECT SUM(CITY.population)
FROM CITY
JOIN COUNTRY 
ON CITY.CountryCode = COUNTRY.Code
WHERE continent = 'Asia';