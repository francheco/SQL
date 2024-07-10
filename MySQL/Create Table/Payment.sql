

-- Create the Payment table
CREATE TABLE payment (
    payment_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL, -- Unique ID for each payment
    order_id INT, -- ID of the order associated with the payment
    payment_date DATE, -- Date the payment was made
    amount DECIMAL(10, 2), -- Amount of the payment
    FOREIGN KEY (order_id) REFERENCES order_table(order_id) -- Foreign key referencing the order_table
);

-- Insert 10 payment orders into the Payment table
INSERT INTO payment (order_id, payment_date, amount) VALUES 
(1, '2024-07-01', 999.99),  -- Payment for order ID 1 on July 1st with amount $999.99
(2, '2024-07-02', 699.99),  -- Payment for order ID 2 on July 2nd with amount $699.99
(3, '2024-07-03', 149.99),  -- Payment for order ID 3 on July 3rd with amount $149.99
(4, '2024-07-04', 399.99),  -- Payment for order ID 4 on July 4th with amount $399.99
(5, '2024-07-05', 1299.99), -- Payment for order ID 5 on July 5th with amount $1299.99
(6, '2024-07-06', 599.99),  -- Payment for order ID 6 on July 6th with amount $599.99
(7, '2024-07-07', 199.99),  -- Payment for order ID 7 on July 7th with amount $199.99
(8, '2024-07-08', 79.99),   -- Payment for order ID 8 on July 8th with amount $79.99
(9, '2024-07-09', 499.99),  -- Payment for order ID 9 on July 9th with amount $499.99
(10, '2024-07-10', 799.99); -- Payment for order ID 10 on July 10th with amount $799.99
