-- https://www.hackerrank.com/challenges/the-company/problem

SELECT C.company_code, C.founder,
    (Select COUNT(DISTINCT lead_manager_code) FROM Lead_Manager WHERE C.company_code = company_code),
    (Select COUNT(DISTINCT senior_manager_code) FROM Senior_Manager WHERE C.company_code = company_code),
    (Select COUNT(DISTINCT manager_code) FROM Manager WHERE C.company_code = company_code),
    (Select COUNT(DISTINCT employee_code) FROM Employee WHERE C.company_code = company_code)
FROM Company C
ORDER BY C.company_code;
