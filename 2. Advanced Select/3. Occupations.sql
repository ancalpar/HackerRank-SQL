-- https://www.hackerrank.com/challenges/occupations/problem

SELECT
    MIN(CASE WHEN Occupation = 'Doctor' THEN Name END),
    MIN(CASE WHEN Occupation = 'Professor' THEN Name END),
    MIN(CASE WHEN Occupation = 'Singer' THEN Name END),
    MIN(CASE WHEN Occupation = 'Actor' THEN Name END)
FROM
    (SELECT Name, Occupation,
        ROW_NUMBER() OVER(PARTITION BY Occupation ORDER BY Name) AS R
    FROM OCCUPATIONS) AS O
GROUP BY R;
