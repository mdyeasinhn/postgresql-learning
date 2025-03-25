-- Retrieve all employees
SELECT * FROM employees;

-- Analyze query performance for searching a specific employee
EXPLAIN ANALYSE
SELECT * FROM employees WHERE employee_name = 'William Perez';

-- Create an index on employee_name to speed up search queries
CREATE INDEX idx_employees_employee_name
ON employees (employee_name);
