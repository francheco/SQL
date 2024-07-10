

-- Create the User Profile table with user details
CREATE TABLE user_profile (
    user_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL, -- Unique user ID
    first_name VARCHAR(50) NOT NULL, -- First name of the user
    last_name VARCHAR(50) NOT NULL, -- Last name of the user
    email VARCHAR(100) NOT NULL, -- Email address of the user
    address VARCHAR(255) -- Address of the user
);

-- Insert 5 users into the User Profile table
INSERT INTO user_profile (first_name, last_name, email, address) VALUES 
('Julio', 'Hernandez', 'julio.hernandez@example.com', 'Calle Principal 123'), -- User  details
('Maria', 'Garcia', 'maria.garcia@example.com', 'Avenida del Sol 456'), -- User  details
('Diego', 'Rodriguez', 'diego.rodriguez@example.com', 'Carrera 7 789'), -- User  details
('Camila', 'Lopez', 'camila.lopez@example.com', 'Rua Central 101'), -- User  details
('Mateo', 'Martinez', 'mateo.martinez@example.com', 'Av. dos Girassois 456'); -- User  details