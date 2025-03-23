-- Selecting all records from the employees table
SELECT * FROM employees;

-- Creating a function to count the number of employees
CREATE FUNCTION emp_count()
RETURNS INT 
LANGUAGE SQL
AS 
$$
SELECT count(*) FROM employees;
$$;

-- Calling the emp_count function to get the total number of employees
SELECT emp_count();
