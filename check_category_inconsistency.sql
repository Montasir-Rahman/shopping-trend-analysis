--1. Checking Genders
SELECT DISTINCT gender FROM shopping_trend
ORDER BY gender;

--2. Checking Item Purchased
SELECT DISTINCT item_purchased FROM shopping_trend
ORDER BY item_purchased;

--3. Checking Category
SELECT DISTINCT category FROM shopping_trend
ORDER BY category;

--4. Checcking Location 
SELECT DISTINCT location FROM shopping_trend
ORDER BY location;

--5. Checking Size
SELECT DISTINCT size FROM shopping_trend
ORDER BY size;

--6. Checking Color
SELECT DISTINCT color FROM shopping_trend
ORDER BY color;

--7. Checking Season
SELECT DISTINCT season FROM shopping_trend
ORDER BY season;

--8. Checking Payment Method
SELECT DISTINCT payment_method FROM shopping_trend
ORDER BY payment_method;

--9. Checking Shipping Type
SELECT DISTINCT shipping_type FROM shopping_trend
ORDER BY shipping_type;

--10. Checking Preferred Payment Method
SELECT DISTINCT preferred_payment_method FROM shopping_trend
ORDER BY preferred_payment_method;

--11. Checking Frequency of Purchases
SELECT DISTINCT frequency_of_purchases FROM shopping_trend
ORDER BY frequency_of_purchases;

--Resolve Bi-Weekly vs. Fortnightly and Every 3 Month Vs. Quaterly