# Write your MySQL query statement below

SELECT eu.unique_id, e.name
from Employees e
left join EmployeeUNI eu
on e.id = eu.id;