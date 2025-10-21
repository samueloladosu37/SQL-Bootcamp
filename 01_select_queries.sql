Use MyDatabase
--Retrieve All customer Data
SELECT *
FROM customers

--Retrieve All order Data
SELECT *
FROM orders

--Retrieve each customer's name, country and score
SELECT 
	first_name,
	country,
	score
FROM customers

--Retrieve  customers with a score not equal 0 [WHERE (Filter Data)]
SELECT *
FROM customers
WHERE score !=0

--Retrieve  customers from Germnay [WHERE (Filter Data)]
SELECT *
FROM customers
WHERE country = 'Germany' -- '' for values with characters

--Retrieve all customers data and sort results by the highest score [ORDER BY (SORT Data)] DEFAULT IS ASC
SELECT *
FROM customers
ORDER BY score DESC 

--Retrieve all customers data and sort results by the lowest score [ORDER BY (SORT Data)] DEFAULT IS ASC
SELECT *
FROM customers
ORDER BY score ASC 

--NESTED SORTING
--Retrieve all customers data and sort results by country and then by the highest score [ORDER BY (SORT Data)] DEFAULT IS ASC
SELECT *
FROM customers
ORDER BY 
	country ASC, 
	score DESC

--Find the total score for each country [GROUP BY -(Aggregates Data)] 
SELECT 
	country, --colum that must be mentioned in GROUP BY
	first_name, --colum that must be mentioned in GROUP BY
	SUM(score) AS total_score --aggregrate
FROM customers
GROUP BY country, first_name  --note that all columns in the SELECT must be either agregated or included in the GROUP BY


--Find the total score and total number of customers for each country [GROUP BY -(Aggregates Data)] 
SELECT 
	country, --colum that must be mentioned in GROUP BY
	SUM(score) AS total_score, --aggregrate
	COUNT(id) AS total_customers --aggregrate
FROM customers
GROUP BY country 

-- HAVING -TO FILTER AGGREGATED DATA
--Find the average score for each country considering only customers ith score not equal 0 and return only thse countries with an average score greater than 430
-- You use WHERE when you filter a data before aggregation AND HAVING  after aggregation
SELECT 
	country, --colum that must be mentioned in GROUP BY
	AVG(score) AS avg_score --aggregrate
FROM customers
WHERE score != 0 
GROUP BY country
HAVING AVG(score) > 430

--Return unique list of all countries [DISTINCT -(REMOVES duplicates)] 
SELECT DISTINCT
	country
FROM customers

--Retrieve only 3 customers [TOP -(Limit your data )] 
SELECT TOP 3 *
FROM customers

--Retrieve the top 3 customers  with the highest scores [TOP -(Limit your data )] 
SELECT TOP 3 *
FROM customers
ORDER BY score DESC 

--Retrieve the lowest 2 customers based on the score [TOP -(Limit your data )] 
SELECT TOP 2 *
FROM customers
ORDER BY score ASC 

--Get the two most recent orders [TOP -(Limit your data )] 
SELECT TOP 2 *
FROM orders
ORDER BY order_date DESC

/* Coding Order of Query
SELECT DISTINCT TOP 2
	country,
	SUM(score)
FROM customers
WHERE score != 0
GROUP BY country
HAVING sum(score)  > 10
ORDER BY country DESC */

/* Execute order from the example above
1. FROM
2. WHERE
3. GROUP BY
4. HAVING
5. SELECT DISTINCT
6. ORDER BY
7. TOP
