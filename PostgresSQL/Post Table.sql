
-- Create the Posts table
CREATE TABLE Posts (
    post_id SERIAL PRIMARY KEY,  -- Unique identifier for each post
    user_id INT NOT NULL REFERENCES Users(user_id),  -- User who created the post
    post_content TEXT NOT NULL,  -- Content of the post
    post_date DATE NOT NULL,  -- Date when the post was created
    likes INT DEFAULT 0,  -- Number of likes for the post
    comments INT DEFAULT 0  -- Number of comments on the post
);