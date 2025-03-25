
-- CREATE TRIGGER TR
-- BEFORE DELETE 
-- ON user 
-- for each row 
-- EXECUTE FUNCTION functon_name();

-- Create Table
CREATE TABLE my_users (
    users_name VARCHAR(50),
    email VARCHAR(50)
);

-- Insert Data
INSERT INTO my_users VALUES 
    ('yeasin', 'yeasin@gmail.com'), 
    ('enan', 'enan@gmail.com');

-- Check Data
SELECT * FROM my_users;

-- Create Audit Table
CREATE TABLE deleted_user_audit (
    deleted_user_name VARCHAR(50),  -- Fix: Ensure the column name is correct
    deleteAt TIMESTAMP
);

-- Create Trigger Function
CREATE FUNCTION save_deleted_user()
RETURNS TRIGGER
LANGUAGE PLPGSQL
AS 
$$
BEGIN
    -- Correct column name in deleted_user_audit
    INSERT INTO deleted_user_audit (deleted_user_name, deleteAt) 
    VALUES (OLD.users_name, now());  -- Fix: Use OLD.users_name instead of OLD.user_name

    RAISE NOTICE 'Deleted user audit log created';

    -- Return OLD is fine for DELETE trigger
    RETURN OLD;
END;
$$;

-- Create Trigger (Use AFTER DELETE)
CREATE TRIGGER save_deleted_user_trigger
AFTER DELETE 
ON my_users 
FOR EACH ROW 
EXECUTE FUNCTION save_deleted_user();

-- Delete a user
DELETE FROM my_users WHERE users_name = 'yeasin';

-- Check audit log
SELECT * FROM deleted_user_audit;
