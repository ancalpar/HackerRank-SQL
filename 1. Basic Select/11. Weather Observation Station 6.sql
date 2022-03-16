-- https://www.hackerrank.com/challenges/weather-observation-station-6/problem 

SELECT DISTINCT CITY
FROM STATION
WHERE
    CITY LIKE 'a%' OR
    CITY LIKE 'e%' OR
    CITY LIKE 'i%' OR
    CITY LIKE 'o%' OR
    CITY LIKE 'u%';

-- OR

SELECT DISTINCT CITY
FROM STATION
WHERE LEFT(CITY, 1) IN ('a', 'e', 'i', 'o', 'u');
