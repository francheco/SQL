
-- Create the Friends table
CREATE TABLE Friends (
    friend_id SERIAL PRIMARY KEY,  -- Unique identifier for each friendship
    user1_id INT NOT NULL REFERENCES Users(user_id),  -- User ID initiating the friendship
    user2_id INT NOT NULL REFERENCES Users(user_id),  -- User ID being connected as a friend
    friendship_date DATE NOT NULL  -- Date when the friendship was established
);