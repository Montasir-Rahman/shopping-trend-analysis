SELECT
	customer,
	COUNT(*)
FROM shopping_trend
GROUP BY customer
HAVING COUNT(*) > 1;