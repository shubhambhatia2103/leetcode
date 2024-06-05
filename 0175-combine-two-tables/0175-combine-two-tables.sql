# Write your MySQL query statement below

SELECT er.firstName, er.lastName, ad.city, ad.state   
FROM Person er
LEFT JOIN Address ad
ON er.personId = ad.personId
