Here are some commands to validate what you are performing



To list all databases:

SHOW DATABASES;

To show tables in your 'e-commerce' database

USE e_commerce;
SHOW TABLES;


Show Information in Tables:

SELECT * FROM product;
SELECT * FROM order_table;

Select Items from Tables:

SELECT * FROM order_table;

Determine the Total Product Stock:

SELECT SUM(quantity) AS total_stock FROM stock;















