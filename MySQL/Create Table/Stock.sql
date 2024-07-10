

-- Create the Stock table
CREATE TABLE stock (
    product_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL, -- Unique ID for each product in stock
    quantity INT, -- Quantity of the product available in stock
    FOREIGN KEY (product_id) REFERENCES product(product_id) -- Foreign key referencing the product table
);

-- Insert 20 stock entries for each product into the Stock table
INSERT INTO stock (product_id, quantity) 
SELECT product_id, 20 FROM product;
-- Select the product_id and set the quantity to 20 for each product from the product table
