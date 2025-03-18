-- get database table
SELECT * from person2;
-- set a column with default value 
ALTER TABLE person2
ADD COLUMN email VARCHAR(25) DEFAULT 'default@gmail.com' NOT NULL;

-- insert value in column 
INSERT into person2 values(4, 'test4', 22, 'test@gmail.com');


-- delete a table 
ALTER TABLE person2
DROP email 

-- rename a column 
ALTER TABLE person2
RENAME COLUMN age to user_age;

-- set type type varchar in column 
ALTER TABLE person2
ALTER COLUMN  user_name TYPE VARCHAR(25);

-- set not null
ALTER TABLE person2
ALTER COLUMN  user_age set NOT NULL;


ALTER TABLE person2
ALTER COLUMN  user_age drop NOT NULL;

