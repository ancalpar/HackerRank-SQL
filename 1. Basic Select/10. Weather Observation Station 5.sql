-- https://www.hackerrank.com/challenges/weather-observation-station-5/problem

SELECT MIN(CITY), LENGTH(CITY) AS LEN
FROM STATION
GROUP BY LENGTH(CITY)
HAVING LEN IN 
        ((SELECT MAX(LENGTH(CITY)) FROM STATION),
        (SELECT MIN(LENGTH(CITY)) FROM STATION));
        
-- OR

(SELECT CITY, LENGTH(CITY) AS LEN
FROM STATION
ORDER BY LEN ASC, CITY ASC
LIMIT 1)
UNION
(SELECT CITY, LENGTH(CITY) AS LEN
FROM STATION
ORDER BY LEN DESC, CITY ASC
LIMIT 1);
