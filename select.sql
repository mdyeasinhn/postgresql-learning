-- Create a student table
CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT,
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(100),
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50)
)

-- inserting value in student table  and Ordering in PostgreSQL
INSERT INTO students (first_name, last_name, age, grade, course, email, dob, blood_group, country)
VALUES 
('John', 'Doe', 20, 'A', 'Computer Science', 'johndoe@example.com', '2004-05-15', 'O+', 'USA'),
('Emma', 'Smith', 22, 'B', 'Mathematics', 'emmasmith@example.com', '2002-08-20', 'A-', 'UK'),
('Liam', 'Johnson', 21, 'A', 'Physics', 'liamjohnson@example.com', '2003-12-10', 'B+', 'Canada'),
('Olivia', 'Brown', 23, 'C', 'Chemistry', 'oliviabrown@example.com', '2001-06-25', 'AB-', 'Australia'),
('Noah', 'Davis', 19, 'B', 'Engineering', 'noahdavis@example.com', '2005-03-30', 'O-', 'Germany'),
('Sophia', 'Wilson', 20, 'A', 'Biology', 'sophiawilson@example.com', '2004-07-12', 'A+', 'France'),
('James', 'Miller', 22, 'B', 'Economics', 'jamesmiller@example.com', '2002-11-05', 'B-', 'USA'),
('Mia', 'Anderson', 21, 'A', 'Literature', 'miaanderson@example.com', '2003-09-18', 'AB+', 'UK'),
('William', 'Martinez', 23, 'C', 'History', 'williammartinez@example.com', '2001-02-22', 'O+', 'Spain'),
('Charlotte', 'Taylor', 19, 'A', 'Psychology', 'charlottetaylor@example.com', '2005-04-10', 'A-', 'Italy');

-- select everything into students table

SELECT * FROM students ORDER BY age ASC;

--how to see uniqe data in table
SELECT DISTINCT blood_group from students;


-- Data Filtering: WHERE Clause

-- select country  form USA
SELECT * FROM students WHERE country = 'USA'

-- select students with 'A' grade in physics
SELECT * from students WHERE grade = 'A' AND course = 'Physics';

-- select students with specific blood group ('A+')
SELECT * from students WHERE blood_group = 'A+';

-- select students from USA or Australia

SELECT * from students WHERE country = 'USA' OR country = 'UK';

-- select students from USA or Australia and age is 20
SELECT *
from students
WHERE (
        country = 'USA'
        OR country = 'UK'
    )
    and age = 20;


-- Logical Operators, and Comparison Operators

-- Select students older than 20
SELECT * FROM students WHERE age > 20;

-- Select students who are 20 years old or older
SELECT * FROM students WHERE age >= 20;

-- Select students younger than 20
SELECT * FROM students WHERE age < 20;

-- Select students who are 20 years old or younger
SELECT * FROM students WHERE age <= 20;

-- Select students whose age is NOT 20
SELECT * FROM students WHERE age != 20;


-- Convert first_name to uppercase  
SELECT UPPER(first_name), * FROM students;  

-- Concatenate first_name and last_name  
SELECT CONCAT(first_name, ' ', last_name) * FROM students;  

-- Get the length of first_name  
SELECT length(first_name) AS first_name_length FROM students; 

-- Get the maximum length of first_name  
SELECT MAX(LENGTH(first_name)) FROM students;  

-- Get the average age of students  
SELECT AVG(age) FROM students;  

-- Get the maximum age of students  
SELECT MAX(age) FROM students;  

-- Get the minimum age of students  
SELECT MIN(age) FROM students;  

-- Get the total sum of all students' ages  
SELECT SUM(age) FROM students;  

-- Get the total number of students  
SELECT COUNT(*) FROM students;  

-- set null value
SELECT COALESCE(email, 'Email not provided') as "Email", blood_group, first_name from students;

-- Get students from USA, Canada, or UK  
SELECT * FROM students WHERE country = 'USA' OR country = 'Canada' OR country = 'UK';  

-- Get students from USA or UK  
SELECT * FROM students WHERE country IN ('USA', 'UK');  

-- Get students not from USA or UK  
SELECT * FROM students WHERE country NOT IN ('USA', 'UK');  

-- Get students aged between 19 and 21  
SELECT * FROM students WHERE age BETWEEN 19 AND 21;  

-- Get students born between 2000 and 2005, sorted by DOB  
SELECT * FROM students WHERE dob BETWEEN '2000-01-01' AND '2005-01-01' ORDER BY dob;  

-- Get students whose first_name starts with 'M' (case-sensitive)  
SELECT * FROM students WHERE first_name LIKE 'M%';  

-- Get students whose last_name starts with 'M' (case-insensitive)  
SELECT * FROM students WHERE last_name ILIKE 'm%';  

-- Pagination: Fetch 5 students per page using LIMIT and OFFSET  
SELECT * FROM students LIMIT 5;  
SELECT * FROM students LIMIT 5 OFFSET 5 * 0;  
SELECT * FROM students LIMIT 5 OFFSET 5 * 1;  
SELECT * FROM students LIMIT 5 OFFSET 5 * 2;  
SELECT * FROM students LIMIT 5 OFFSET 5 * 3;  



