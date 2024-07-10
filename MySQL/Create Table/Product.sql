
-- Create the Product table
CREATE TABLE product (
    product_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL, 
    product_name VARCHAR(100) NOT NULL, 
    category VARCHAR(50) NOT NULL, 
    brand VARCHAR(50), 
    price DECIMAL(10, 2) NOT NULL
);

-- Insert 10 products with different categories and brands into the Product table
INSERT INTO product (product_name, category, brand, price) VALUES 
('Laptop', 'Computers', 'Dell', 999.99),
('Smartphone', 'Mobile Phones', 'Apple', 699.99),
('Headphones', 'Audio', 'Sony', 149.99),
('Tablet', 'Tablets', 'Samsung', 399.99),
('Smart TV', 'TVs', 'LG', 1299.99),
('Digital Camera', 'Cameras', 'Canon', 599.99),
('Smart Watch', 'Wearable Technology', 'Fitbit', 199.99),
('Wireless Earbuds', 'Audio', 'JBL', 79.99),
('Gaming Console', 'Gaming', 'Nintendo', 499.99),
('Drone', 'Drones', 'DJI', 799.99);