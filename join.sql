-- Create the "person" table with an auto-incrementing primary key
CREATE TABLE person (
    id SERIAL PRIMARY KEY,
    username VARCHAR(25) NOT NULL
);

-- Create the "course" table with a foreign key reference to the "person" table
CREATE TABLE course (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES person (id)
);

-- Insert records into the "person" table
INSERT INTO
    person (username)
VALUES ('john_doe'),
    ('alice_wonder'),
    ('charlie_123'),
    ('emma_dev'),
    ('michael_xyz');

-- Insert records into the "course" table, ensuring user_id references a valid person.id
INSERT INTO
    course (title, user_id)
VALUES ('First Blog Post', 1),
    ('Understanding PostgreSQL', 2),
    (
        'React vs Vue: A Comparison',
        2
    ),
    (
        'Next.js Authentication Guide',
        4
    ),
    (
        'How to Optimize Web Performance',
        4
    );

-- Retrieve all records from the "person" table
SELECT * FROM person;

-- Retrieve all records from the "course" table
SELECT * FROM course;

-- Retrieve the course title along with the username of the person who created it
SELECT title, username
FROM course
    JOIN person ON course.user_id = person.id;

-- Retrieve all columns from "course" and "person" tables, joining on user_id
SELECT * FROM course JOIN person ON course.user_id = person.id;

-- Alias version of the previous query for better readability
SELECT c.title, p.username
FROM course AS c
    JOIN person AS p ON c.user_id = p.id;