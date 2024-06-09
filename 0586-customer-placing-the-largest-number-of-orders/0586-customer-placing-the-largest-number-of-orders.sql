
SELECT customer_number
FROM Orders
GROUP BY customer_number
ORDER by COUNT(*) DESC limit 1;