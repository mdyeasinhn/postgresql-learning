
CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(50),
    department_name VARCHAR(50),
    salary DECIMAL(10, 2),
    hire_date DATE
);
DROP Table employees

INSERT INTO employees (employee_name, department_name, salary, hire_date) VALUES
('Alice Johnson', 'HR', 50000.00, '2020-01-15'),
('Bob Smith', 'Finance', 65000.00, '2019-03-22'),
('Charlie Brown', 'IT', 72000.00, '2021-06-10'),
('David Wilson', 'Marketing', 55000.00, '2018-07-08'),
('Emily Davis', 'Sales', 60000.00, '2022-02-14'),
('Frank Thomas', 'IT', 75000.00, '2020-11-30'),
('Grace Miller', 'HR', 52000.00, '2021-08-19'),
('Henry White', 'Finance', 68000.00, '2017-12-05'),
('Isabella Green', 'Marketing', 56000.00, '2019-09-17'),
('Jack King', 'Sales', 63000.00, '2021-04-21'),
('Kelly Scott', 'IT', 78000.00, '2018-10-12'),
('Liam Young', 'HR', 51000.00, '2023-01-09'),
('Mia Adams', 'Finance', 67000.00, '2020-05-28'),
('Noah Baker', 'Marketing', 59000.00, '2022-07-04'),
('Olivia Carter', 'Sales', 61000.00, '2019-06-15'),
('Peter Mitchell', 'IT', 77000.00, '2021-03-18'),
('Quinn Roberts', 'HR', 53000.00, '2018-09-24'),
('Rachel Lewis', 'Finance', 69000.00, '2017-11-14'),
('Samuel Walker', 'Marketing', 58000.00, '2020-08-29'),
('Taylor Hall', 'Sales', 62000.00, '2023-02-11'),
('Uma Allen', 'IT', 80000.00, '2019-07-07'),
('Victor Turner', 'HR', 54000.00, '2021-10-01'),
('William Perez', 'Finance', 71000.00, '2018-06-23'),
('Xavier Harris', 'Marketing', 57000.00, '2020-04-16'),
('Yasmine Clark', 'Sales', 64000.00, '2022-09-10'),
('Zachary Wright', 'IT', 79000.00, '2017-05-20'),
('Ava Cooper', 'HR', 55000.00, '2021-12-05'),
('Benjamin Foster', 'Finance', 73000.00, '2019-08-30'),
('Charlotte Ramirez', 'Marketing', 60000.00, '2020-01-22'),
('Daniel Torres', 'Sales', 65000.00, '2022-03-15');

SELECT * FROM employees;

--Retrive all employees who salary is greater then highest salary of the HR department

SELECT max(salary) from employees WHERE department_name = 'HR';

SELECT * FROM employees WHERE salary >(SELECT max(salary) from employees WHERE department_name = 'HR')


