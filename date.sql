-- Show the current database timezone
SHOW timezone;  

-- Get the current timestamp with timezone
SELECT now();  

-- Get the current date only
SELECT now()::date;  

-- Get the current time only
SELECT now()::time;  

-- Format date as 'dd/mm/yyyy'
SELECT to_char(now(), 'dd/mm/yyyy');  

-- Get the day of the year (1-365/366)
SELECT to_char(now(), 'DDD');  

-- Get the full month name
SELECT to_char(now(), 'Month');  

-- Get the current date
SELECT CURRENT_DATE;  

-- Create table with timestamp columns
CREATE TABLE timez (ts TIMESTAMP without time zone, tsz TIMESTAMP with time zone);  

-- Insert timestamp values
INSERT INTO timez VALUES ('2025-01-12 10:33:00', '2025-01-12 10:33:00');  

-- Retrieve all data from timez table
SELECT * FROM timez;  

-- Subtract 1 year, 5 months, and 8 days from the current date
SELECT CURRENT_DATE - INTERVAL '1 year 5 month 8 days';  

-- Calculate age from a specific date
SELECT age(CURRENT_DATE, '2006-04-18');  

-- Get all students' data and calculate their age
SELECT *, age(CURRENT_DATE, dob) FROM students;  
