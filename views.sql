-- Createing view
CREATE View dept_avg_salary 
AS 
SELECT department_name, avg(salary) FROM employees GROUP BY department_name

--Removeing view
DROP VIEW IF EXISTS dept_avg_salary;


SELECT * FROM dept_avg_salary;

CREATE VIEW test_view
AS  
SELECT employee_name ,salary, department_name
    FROM employees
    WHERE department_name in 
    (SELECT department_name FROM employees WHERE department_name like '%R%');

