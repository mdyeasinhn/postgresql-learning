-- creat a student table 
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