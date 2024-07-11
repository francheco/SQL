

-- Create the Users table with name, last name, username (unique), email, and join date
CREATE TABLE Users (
    user_id SERIAL PRIMARY KEY,  -- Unique identifier for each user, Using PostgreSQL SERIAL to Create Auto-increment Column
    first_name VARCHAR(50),  -- User's first name
    last_name VARCHAR(50),  -- User's last name
    username VARCHAR(50) NOT NULL UNIQUE,  -- User's username (unique)
    email VARCHAR(100) UNIQUE NOT NULL,  -- User's email address (unique)
    join_date DATE NOT NULL  -- Date when the user joined the platform
);