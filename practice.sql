-- Creating the employees table
CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    emaployee_name VARCHAR(50),
    department_id INT REFERENCES departments(department_id),
    salary DECIMAL(10, 2),
    hire_date DATE
);

-- Creating the departments table
CREATE TABLE departments (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(50)
);

-- Inserting data into the departments table
INSERT INTO departments (department_name) VALUES 
('Human Resources'),
('Finance'),
('IT'),
('Marketing'),
('Sales'),
('Operations'),
('Customer Support'),
('Legal'),
('Research & Development'),
('Administration');

-- Inserting data into the employees table
INSERT INTO employees (emaployee_name, department_id, salary, hire_date) VALUES 
('Alice Johnson', 1, 55000.00, '2022-05-15'),
('Bob Smith', 2, 60000.00, '2021-07-10'),
('Charlie Brown', 3, 70000.00, '2020-09-20'),
('David White', 4, 50000.00, '2023-01-05'),
('Eva Green', 5, 65000.00, '2024-02-18'),
('Frank Miller', 6, 62000.00, '2021-06-12'),
('Grace Adams', 7, 58000.00, '2022-08-25'),
('Henry Ford', 8, 75000.00, '2019-11-30'),
('Isabella Clark', 9, 80000.00, '2018-04-10'),
('Jack Wilson', 10, 47000.00, '2023-09-05');

-- Fetch all employees with their department details
SELECT * FROM employees
    JOIN departments ON employees.department_id = departments.department_id;

-- Fetch all employees with their department details using USING clause
SELECT * FROM employees
    JOIN departments USING(department_id);

-- Get the average salary per department
SELECT department_name, round(avg(salary)) as avg_salary FROM employees
    JOIN departments USING(department_id)
    GROUP BY department_name; -- Grouping by department to calculate the average salary
