USE MyDatabase
--Insert values (6, 'Anna', 'USA', NULL) (7, 'SAM', NULL, 100) into customer table
/*INSERT INTO customers (id, first_name, country, score)
VALUES
	(6, 'Anna', 'USA', NULL),
	(7, 'SAM', NULL, 100)
SELECT * FROM customers */

--Copy data from customers table into persons (INSERT SELECT)
/*INSERT INTO persons (id, person_name, birth_date, phone)
SELECT 
id
first_name,
NULL,
'UNKNOWN'
FROM customers

SELECT * FROM persons*/


--UPDATE table-_name
	--SET column1 = value1,
		--column2 = value2
	--WHERE <condition> #Always use WHERE to avoid UPDATING all rows unintentionally
--Change the score of customer 6 to 0
UPDATE customers
SET score = 0
WHERE id = 6 

SELECT * from customers
WHERE id = 6

--Change the score of customer with ID 7 to 0 and update the country to UK
UPDATE customers
SET score = 0,
	country ='UK'
WHERE id = 7
SELECT * from customers

-- DELTE FROM table_name
--WHERE <condition>
--Delete all  customers with an ID greater than 5
DELETE FROM customers
WHERE id  >  5

--Delete all data from tavele persons
DELETE FROM persons
SELECT * FROM persons