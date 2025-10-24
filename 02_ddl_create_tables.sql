USE MyDatabase
-- Create a new table called persons with columns: id, person_name, birth_date, and phone
/*CREATE TABLE persons (
	id INT NOT NULL,
	person_name VARCHAR(50) NOT NULL,
	birth_date DATE,
	phone VARCHAR(15) NOT NULL,
	CONSTRAINT pk_persons PRIMARY KEY (id)
)
SELECT *
FROM persons */

--Add a new column called email to the persons table (ALTER- to change a ADD or REMOVE a column in an already exitng table)
/*ALTER TABLE persons
ADD email VARCHAR(50) NOT NULL

SELECT *
FROM persons */

-- REMOVE the colum phone from the persons table 
/*ALTER TABLE persons
DROP COLUMN phone 
SELECT *
FROM persons */

-- Delete the table persons from the database  (DROP to delete a table)
DROP TABLE persons
