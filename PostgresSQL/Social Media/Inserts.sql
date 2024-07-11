

-- Insert data for 20 users into the Users table with name, last name, username, email, and join date
INSERT INTO Users (first_name, last_name, username, email, join_date)
VALUES
    ('Maria', 'Gomez', 'maria_g', 'maria@example.com', '2024-07-11'),
    ('Carlos', 'Lopez', 'clopez', 'carlos@example.com', '2024-07-12'),
    ('Luis', 'Rodriguez', 'lrodriguez', 'luis@example.com', '2024-07-13'),
    ('Ana', 'Martinez', 'ana_m', 'ana@example.com', '2024-07-14'),
    ('Pedro', 'Santos', 'pedro_s', 'pedro@example.com', '2024-07-15'),
    ('Laura', 'Diaz', 'laura_d', 'laura@example.com', '2024-07-16'),
    ('Diego', 'Perez', 'diego_p', 'diego@example.com', '2024-07-17'),
    ('Sofia', 'Garcia', 'sofia_g', 'sofia@example.com', '2024-07-18'),
    ('Javier', 'Rivera', 'javier_r', 'javier@example.com', '2024-07-19'),
    ('Isabela', 'Fernandez', 'isabela_f', 'isabela@example.com', '2024-07-20'),
    ('Mateo', 'Gutierrez', 'mateo_g', 'mateo@example.com', '2024-07-21'),
    ('Gabriela', 'Torres', 'gabriela_t', 'gabriela@example.com', '2024-07-22'),
    ('Raul', 'Jimenez', 'raul_j', 'raul@example.com', '2024-07-23'),
    ('Valentina', 'Reyes', 'valentina_r', 'valentina@example.com', '2024-07-24'),
    ('Felipe', 'Morales', 'felipe_m', 'felipe@example.com', '2024-07-25'),
    ('Camila', 'Ortiz', 'camila_o', 'camila@example.com', '2024-07-26'),
    ('Fernanda', 'Silva', 'fernanda_s', 'fernanda@example.com', '2024-07-27'),
    ('Miguel', 'Luna', 'miguel_l', 'miguel@example.com', '2024-07-28'),
    ('Lucia', 'Castillo', 'lucia_c', 'lucia@example.com', '2024-07-29'),
    ('Alejandro', 'Navarro', 'alejandro_n', 'alejandro@example.com', '2024-07-30');



-- Insert 7 friend connections for each user
DO $$    -- This starts a block of code that allows you to execute multiple SQL statements.
BEGIN
    FOR i IN 1..20 LOOP    -- This initializes a loop that iterates 20 times, with the loop index i ranging from 1 to 20.
        FOR j IN 2..8 LOOP -- Nested within the first loop, this initializes another loop that iterates 7 times, with the loop index j ranging from 2 to 8.
            INSERT INTO Friends (user1_id, user2_id, friendship_date) -- This is the SQL statement to insert data into the "Friends" table, specifying the columns to populate
            VALUES (i, (i + j)::integer, CURRENT_DATE - j * INTERVAL '1 day');
        END LOOP; -- This marks the end of the inner loop that iterates for each user in the range specified.
    END LOOP; -- This marks the end of the outer loop that iterates through all users
END $$; -- This marks the end of the code block defined by 

-- Insert 4 posts for each of the 20 users with varying likes and comments
DO $$
DECLARE -- This keyword starts a declaration section where variables can be declared and initialized.
    post_contents TEXT[] := ARRAY ['Post content 1', 'Post content 2', 'Post content 3', 'Post content 4']; -- This line declares and initializes an array variable named post_contents of type TEXT[], containing four different post content strings.
    likes_array INT[] := ARRAY[5, 10, 15, 20]; -- This line declares and initializes an array variable named likes_array of type INT[], containing different values representing the number of likes for posts.
    comments_array INT[] := ARRAY[3, 6, 9, 12]; -- This line declares and initializes an array variable named comments_array of type INT[], containing different values representing the number of comments for posts.
    user_count INTEGER := 1;
BEGIN
    FOR i IN 1..4 LOOP
        FOR j IN 1..20 LOOP
            INSERT INTO Posts (user_id, post_content, post_date, likes, comments) -- This SQL statement inserts a new record into the "Posts" table for each iteration of the loop, with varying post content, likes, comments, and dates.
            VALUES (user_count, post_contents[i], CURRENT_DATE - FLOOR(RANDOM() * 10) * INTERVAL '1 day', likes_array[FLOOR(RANDOM() * 4) + 1], comments_array[FLOOR(RANDOM() * 4) + 1]);
            user_count := user_count + 1;
        END LOOP;
    END LOOP;
END $$;




