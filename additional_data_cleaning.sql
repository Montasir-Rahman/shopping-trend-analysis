--1. Fixing Data Types
ALTER TABLE shopping_trend
ALTER COLUMN purchase_amount_usd TYPE NUMERIC;

--2. Outlier Detection
SELECT
	MAX(purchase_amount_usd) AS max_pau,
	MIN(purchase_amount_usd) AS min_pau,
	AVG(purchase_amount_usd) AS avg_pau,
	MAX(age) AS max_age,
	MIN(age) AS min_age
FROM 
	shopping_trend;