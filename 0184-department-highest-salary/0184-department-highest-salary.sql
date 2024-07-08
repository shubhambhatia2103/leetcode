SELECT Department.name as Department, Employee.name as Employee, salary
FROM Employee JOIN Department
ON Employee.departmentId = Department.id
WHERE (departmentId, Salary) IN
(SELECT departmentId, MAX(Salary)
FROM Employee 
GROUP BY departmentId)
