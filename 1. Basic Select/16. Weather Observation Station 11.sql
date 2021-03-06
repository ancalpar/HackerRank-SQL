-- https://www.hackerrank.com/challenges/weather-observation-station-11/problem

SELECT DISTINCT CITY
FROM STATION
WHERE
    LEFT(CITY, 1) NOT IN ('a', 'e', 'i', 'u', 'o') OR
    RIGHT(CITY, 1) NOT IN ('a', 'e', 'i', 'u', 'o');
