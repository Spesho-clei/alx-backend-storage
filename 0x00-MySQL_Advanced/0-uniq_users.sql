-- Task: Create a table named users with specific attributes.
-- If the table already exists, ensure it does not fail. Ensure uniqueness of email addresses.

CREATE TABLE IF NOT EXISTS users (
    -- Create id column as an auto-incrementing primary key
    id INT AUTO_INCREMENT PRIMARY KEY,
    -- Create email column as unique and not null
    email VARCHAR(255) NOT NULL UNIQUE,
    -- Create name column
    name VARCHAR(255)
);
