-- Retrieve all orders for a specific product
SELECT * 
FROM SalesData
WHERE Product = 'Macbook Pro Laptop';

-- Calculate the total sales for each product
SELECT product, SUM(quantity_ordered * price_each) AS total_sales
FROM SalesData
GROUP BY product;

-- Calculate the total sales for each month
SELECT month, SUM(sales) AS total_sales
FROM SalesData
GROUP BY month;

-- Retrieve orders placed within a specific date range
SELECT *
FROM SalesData
WHERE order_date BETWEEN '2019-01-01' AND '2019-06-30';

-- Identify the month with the highest sales
SELECT month, SUM(sales) AS total_sales
FROM SalesData
GROUP BY month
ORDER BY total_sales DESC
LIMIT 1;

-- Group data by city and calculate the total sales for each city
SELECT city, SUM(sales) AS total_sales
FROM SalesData
GROUP BY city;

-- Identify the hour of the day with the most orders
SELECT hour, COUNT(*) AS order_count
FROM SalesData
GROUP BY hour
ORDER BY order_count DESC
