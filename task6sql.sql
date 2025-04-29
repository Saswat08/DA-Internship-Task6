SELECT * FROM walmart_sales_data.sales;

SELECT EXTRACT(MONTH FROM date) AS month, date 
FROM walmart_sales_data.sales;

SELECT date,
DAYNAME(date) AS day_name
FROM sales;


SELECT city, 
SUM(total) AS total_revenue
FROM sales
GROUP BY city
ORDER BY total_revenue DESC;

SELECT branch, 
SUM(quantity) AS qnty
FROM sales
GROUP BY branch
HAVING SUM(quantity) > (SELECT AVG(quantity) FROM sales);

ALTER TABLE sales ADD COLUMN day_name VARCHAR(20); 
UPDATE sales
SET day_name = DAYNAME(date);

SELECT date,
MONTHNAME(date) AS month_name
FROM sales;

SELECT DISTINCT product_line FROM sales;

SELECT product_line, SUM(total) AS total_revenue FROM sales
GROUP BY product_line
ORDER BY total_revenue DESC
LIMIT 3;


