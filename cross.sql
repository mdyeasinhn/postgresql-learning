CREATE TABLE employees (
    emp_id INT,
    ema_name VARCHAR(25),
    dept_id INT
);

CREATE TABLE department (
    dept_id INT,
    dept_name VARCHAR(50)
);


-- Inserting data into the department table
INSERT INTO department (dept_id, dept_name) VALUES 
(1, 'Human Resources'),
(2, 'Finance'),
(3, 'IT'),
(4, 'Marketing');

-- Inserting data into the employees table
INSERT INTO employees (emp_id, ema_name, dept_id) VALUES 
(101, 'Alice Johnson', 1),
(102, 'Bob Smith', 2),
(103, 'Charlie Brown', 3),
(104, 'David White', 4),
(105, 'Eva Green', NULL); -- Employee without a department
