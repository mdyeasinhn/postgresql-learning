-- Create the "user" table with an auto-incrementing primary key
CREATE TABLE "user" (  
    id SERIAL PRIMARY KEY,  
    username VARCHAR(25) NOT NULL  
);  

-- Create the "post" table with a foreign key reference to the "user" table
CREATE TABLE post (  
    id SERIAL PRIMARY KEY,  
    title TEXT NOT NULL,  
    user_id INTEGER REFERENCES "user"(id) ON DELETE CASCADE
);  
-- Create the "post" table with a foreign key reference to the "user" table
CREATE TABLE post (  
    id SERIAL PRIMARY KEY,  
    title TEXT NOT NULL,  
    user_id INTEGER REFERENCES "user"(id) ON DELETE set NULL
);  
CREATE TABLE post (  
    id SERIAL PRIMARY KEY,  
    title TEXT NOT NULL,  
    user_id INTEGER REFERENCES "user"(id) ON DELETE set DEFAULT DEFAULT 2
);  

-- Alter 'post' table to ensure 'user_id' cannot be NULL


-- Insert users
INSERT INTO "user" (username) VALUES  
('john_doe'),  
('alice_wonder'),  
('charlie_123'),  
('emma_dev'),  
('michael_xyz');

-- Insert posts (ensure user_id matches an existing user)
INSERT INTO post (title, user_id) VALUES  
('First Blog Post', 1),  
('Understanding PostgreSQL', 2),  
('React vs Vue: A Comparison', 2),  
('Next.js Authentication Guide', 4),  
('How to Optimize Web Performance', 4);

-- Select all users
SELECT * FROM "user";

-- Select all posts
SELECT * FROM post;


DROP TABLE "user";
DROP TABLE post

DELETE FROM "user"
    WHERE id =4