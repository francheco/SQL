
-- Create the Metrics table
CREATE TABLE Metrics (
    metric_id SERIAL PRIMARY KEY,  -- Unique identifier for each metric entry
    post_id INT NOT NULL REFERENCES Posts(post_id),  -- Post to which the metrics belong
    likes INT DEFAULT 0,  -- Number of likes for the post
    comments INT DEFAULT 0,  -- Number of comments on the post
    shares INT DEFAULT 0  -- Number of shares of the post
);