-- Get unique country names from the students table
SELECT country FROM students GROUP BY country;  

-- Get country-wise student count and average age
SELECT country, count(*), avg(age)  
FROM students  
GROUP BY country;  

-- Get country-wise student count and average age, filtering for average age greater than 20.60
SELECT country, count(*), avg(age)  
FROM students  
GROUP BY country  
HAVING avg(age) > 20.60;  

-- Extract birth year from date of birth (dob) and count students per birth year
SELECT extract(year from dob) as birth_year, count(*)  
FROM students  
GROUP BY birth_year;  
