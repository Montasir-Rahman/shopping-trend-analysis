--1. Replacing Bi-Weekly with Fortnightly
UPDATE 
	shopping_trend
SET
	frequency_of_purchases = 'Fortnightly'
WHERE
	frequency_of_purchases = 'Bi-Weekly';

--2. Replacing Every 3 Months with Quarterly
UPDATE
	shopping_trend
SET
	frequency_of_purchases = 'Quarterly'
WHERE
	frequency_of_purchases = 'Every 3 Months';
