# Write your MySQL query statement below
SELECT Class
From Courses
GROUP BY Class
HAVING COUNT(student) >= 5;

