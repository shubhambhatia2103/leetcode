# Write your MySQL query statement below
SELECT (
    SELECT DISTINCT Salary AS SecondHighestSalary
    FROM Employee 
    ORDER by Salary DESC 
    LIMIT 1 OFFSET 1
) AS SecondHighestSalary
