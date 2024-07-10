

-- Create the Order table
CREATE TABLE order_table (
    order_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL, 
    user_id INT, -- User ID for the order
    product_id INT, -- Product ID being ordered
    quantity INT, -- Quantity of the product being ordered
    order_date DATE, -- Date the order was placed
    FOREIGN KEY (user_id) REFERENCES user_profile(user_id), -- Foreign key referencing user_profile table
    FOREIGN KEY (product_id) REFERENCES product(product_id) -- Foreign key referencing product table
);

-- Insert 10 orders into the Order table
INSERT INTO order_table (user_id, product_id, quantity, order_date) VALUES
(1, 1, 2, '2024-07-01'),   -- User A ordering 2 Laptops (product ID 1) on July 1st
(2, 2, 1, '2024-07-02'),   -- User B ordering 1 Smartphone (product ID 2) on July 2nd
(3, 3, 3, '2024-07-03'),   -- User C ordering 3 Headphones (product ID 3) on July 3rd
(4, 4, 1, '2024-07-04'),   -- User D ordering 1 Tablet (product ID 4) on July 4th
(1, 5, 2, '2024-07-05'),   -- User A ordering 2 Smart TVs (product ID 5) on July 5th
(2, 6, 1, '2024-07-06'),   -- User B ordering 1 Digital Camera (product ID 6) on July 6th
(3, 7, 3, '2024-07-07'),   -- User C ordering 3 Smart Watches (product ID 7) on July 7th
(4, 8, 1, '2024-07-08'),   -- User D ordering 1 Wireless Earbuds (product ID 8) on July 8th
(1, 9, 2, '2024-07-09'),   -- User A ordering 2 Gaming Consoles (product ID 9) on July 9th
(2, 10, 1, '2024-07-10'),  -- User B ordering 1 Drone (product ID 10) on July 10th