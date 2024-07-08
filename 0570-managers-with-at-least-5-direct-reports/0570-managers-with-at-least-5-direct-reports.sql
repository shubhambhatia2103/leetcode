# Write your MySQL query statement below

SELECT name from Employee where id in
(SELECT managerId FROM Employee group by managerID having (COUNT(DISTINCT ID)) >=5)