--1. Dropping the table if it exists (optional)
DROP TABLE IF EXISTS shopping_trend;

--2. Creating the table
CREATE TABLE shopping_trend (
	customer INT,
	age INT,
	gender VARCHAR,
	item_purchased VARCHAR,
	category VARCHAR,
	purchase_amount_usd INT,
	location VARCHAR,
	size VARCHAR,
	color VARCHAR,
	season VARCHAR,
	review_rating NUMERIC,
	subscription_status VARCHAR,
	payment_method VARCHAR,
	shipping_type VARCHAR,
	discount_applied VARCHAR,
	promo_code_used VARCHAR,
	previous_purchases INT,
	preferred_payment_method VARCHAR,
	frequency_of_purchases VARCHAR
);

--3. Importing CSV data to the table
COPY shopping_trend (customer, age, gender, item_purchased, category, purchase_amount_usd, location, size, color, season, review_rating, subscription_status, payment_method, shipping_type, discount_applied, promo_code_used, previous_purchases, preferred_payment_method, frequency_of_purchases)
FROM 'C:\Program Files\PostgreSQL\17\data\shopping_trends.csv'
DELIMITER ','
CSV HEADER;