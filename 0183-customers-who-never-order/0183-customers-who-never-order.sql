# Write your MySQL query statement below

SELECT cu.name as Customers
FROM Customers cu
LEFT JOIN Orders ord
ON ord.customerID = cu.id
WHERE ord.id IS NULL;