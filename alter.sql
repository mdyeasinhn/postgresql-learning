SELECT * from person2;

ALTER TABLE person2
ADD COLUMN email VARCHAR(25) DEFAULT 'default@gmail.com' NOT NULL;

INSERT into person2 values(4, 'test4', 22, 'test@gmail.com');



ALTER TABLE person2
DROP email 


ALTER TABLE person2
RENAME COLUMN age to user_age;


ALTER TABLE person2
ALTER COLUMN  user_name TYPE VARCHAR(25);

ALTER TABLE person2
ALTER COLUMN  user_age set NOT NULL;


ALTER TABLE person2
ALTER COLUMN  user_age drop NOT NULL;

