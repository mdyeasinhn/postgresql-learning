-- Creating the employees table
CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    emaployee_name VARCHAR(50),
    department_id INT REFERENCES departments (department_id),
    salary DECIMAL(10, 2),
    hire_date DATE
);

-- Creating the departments table
CREATE TABLE departments (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(50)
);

-- Inserting data into the departments table
INSERT INTO
    departments (department_name)
VALUES ('Human Resources'),
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
INSERT INTO
    employees (
        emaployee_name,
        department_id,
        salary,
        hire_date
    )
VALUES (
        'Alice Johnson',
        1,
        55000.00,
        '2022-05-15'
    ),
    (
        'Bob Smith',
        2,
        60000.00,
        '2021-07-10'
    ),
    (
        'Charlie Brown',
        3,
        70000.00,
        '2020-09-20'
    ),
    (
        'David White',
        4,
        50000.00,
        '2023-01-05'
    ),
    (
        'Eva Green',
        5,
        65000.00,
        '2024-02-18'
    ),
    (
        'Frank Miller',
        6,
        62000.00,
        '2021-06-12'
    ),
    (
        'Grace Adams',
        7,
        58000.00,
        '2022-08-25'
    ),
    (
        'Henry Ford',
        8,
        75000.00,
        '2019-11-30'
    ),
    (
        'Isabella Clark',
        9,
        80000.00,
        '2018-04-10'
    ),
    (
        'Jack Wilson',
        10,
        47000.00,
        '2023-09-05'
    );

-- Fetch all employees with their department details
SELECT *
FROM employees
    JOIN departments ON employees.department_id = departments.department_id;

-- Fetch all employees with their department details using USING clause
SELECT * FROM employees JOIN departments USING (department_id);

-- Get the average salary per department and Grouping by department to calculate the average salary
SELECT department_name, round(avg(salary)) as avg_salary
FROM employees
    JOIN departments USING (department_id)
GROUP BY
    department_name;
--

-- Finding the department name with the highest AVG salary
SELECT department_name, round(avg(salary)) as avg_salary
FROM employees
    JOIN departments USING (department_id)
GROUP BY
    department_name
ORDER BY avg_salary DESC
LIMIT 1;

-- Count employees  hired each year
SELECT extract(
        YEAR
        from hire_date
    ) as hire_year, count(*)
FROM employees
GROUP BY
    hire_year;

CREATE Table orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2)
);

-- Insert data into orders table
INSERT INTO
    orders (
        customer_id,
        order_date,
        total_amount
    )
VALUES (1, '2024-03-01', 250.50),
    (1, '2024-03-05', 120.75),
    (1, '2024-03-07', 540.00),
    (2, '2024-03-10', 310.25),
    (2, '2023-03-12', 150.90),
    (2, '2024-03-15', 780.60),
    (3, '2024-03-18', 450.30),
    (3, '2022-02-21', 600.00),
    (4, '2024-03-25', 999.99),
    (5, '2024-03-28', 1200.45),
    (5, '2022-03-30', 500.00),
    (5, '2024-03-31', 400.00);

DROP TABLE orders;

--Find customers  who have placed more then 2 orders and calculate the total amount spent by each of these customers.
SELECT customer_id, count(order_id), sum(total_amount) as total_spent
FROM orders
GROUP BY
    customer_id
HAVING
    count(order_id) > 2;

-- Find the total amount of oder placed each month in a specific year
SELECT extract(
        month
        from order_date
    ) as month, sum(total_amount)
from orders
WHERE
    extract(
        year
        from order_date
    ) = 2022
GROUP BY
    month;


    

