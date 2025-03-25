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
SELECT emp_count ();

-- Function to delete an employee based on employee_id
CREATE OR REPLACE FUNCTION delete_emp(emp_id INT)
RETURNS void
LANGUAGE SQL
AS 
$$
DELETE FROM employees WHERE employee_id = emp_id;
$$;

-- Delete an employee with employee_id = 30
SELECT delete_emp (30);

CREATE PROCEDURE remove_emp_var() 
LANGUAGE plpgsql 
AS $$ 
DECLARE 
    test_var int;
BEGIN
    SELECT employee_id INTO test_var FROM employees WHERE employee_id = 27;
    DELETE FROM employees WHERE employee_id = test_var;
END $$;

call remove_emp_var ();

