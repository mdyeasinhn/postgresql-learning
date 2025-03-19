-- Create the "user" table with an auto-incrementing primary key
CREATE TABLE "user" (  
    id SERIAL PRIMARY KEY,  
    username VARCHAR(25) NOT NULL  
);  

-- Create the "post" table with a foreign key reference to the "user" table
CREATE TABLE post (  
    id SERIAL PRIMARY KEY,  
    title TEXT NOT NULL,  
    user_id INTEGER REFERENCES "user"(id)  
);  
