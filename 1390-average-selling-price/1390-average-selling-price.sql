# Write your MySQL query statement below

SELECT t1.product_id, IFNULL(ROUND(SUM(t1.price * t2.units)/SUM(t2.units), 2),0) AS average_price
FROM Prices t1
LEFT JOIN UnitsSold t2
ON t1.product_id = t2.product_id
AND t2.purchase_date >= t1.start_date AND
t2.purchase_date <= t1.end_date
GROUp By t1.product_id