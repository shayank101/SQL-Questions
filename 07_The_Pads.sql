/*
1. Query an alphabetically ordered list of all names in OCCUPATIONS, immediately followed by the first letter of each profession as a parenthetical (i.e.: enclosed in parentheses). For example: AnActorName(A), ADoctorName(D), AProfessorName(P), and ASingerName(S).

2. Query the number of ocurrences of each occupation in OCCUPATIONS. Sort the occurrences in ascending order, and output them in the following format:

Enter your query here.

2 queries
1 : use concat order by name then occupation
2 : use concat and count order by count then profession

Table : Occupations
Variable : name, occupation
*/

















SELECT CONCAT(name,'(',SUBSTR(occupation,1,1),')')
FROM OCCUPATIONS
ORDER BY name, occupation;

SELECT CONCAT('There are a total of ', COUNT(occupation),' ' ,LOWER(occupation),'s.')
FROM OCCUPATIONS
GROUP BY occupation
ORDER BY COUNT(occupation), occupation;