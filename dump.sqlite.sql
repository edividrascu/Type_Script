-- Ejercicio 1
CREATE TABLE Libros (
    book_id INT PRIMARY KEY,
    titulo VARCHAR(255),
    autor VARCHAR(255),
    genero VARCHAR(50),
    ano_publicado INT,
    isbn VARCHAR(13),
    precio DECIMAL(10, 2),
    calificacion FLOAT,
    stock_count INT
);


-- Ejercicio 2
ALTER TABLE Libros
ADD COLUMN editor VARCHAR(100),
ADD COLUMN num_paginas INT;


-- Ejercicio 3
ALTER TABLE Books
MODIFY COLUMN book_id INT AUTO_INCREMENT;

-- "Un viaje al centro" de Julio Verne
INSERT INTO Libros (titulo, autor, genero, ano_publicado, isbn, precio, calificacion, stock_count, editor, num_paginas)
VALUES ('Un viaje al centro', 'Julio Verne', 'Aventura', 1864, '1234567890123', 12.99, 4.5, 10, 'Editorial Verne', 350);

-- "War and Peace" de León Tolstoi
INSERT INTO Libros (titulo, autor, genero, ano_publicado, isbn, precio, calificacion, stock_count, editor, num_paginas)
VALUES ('War and Peace', 'León Tolstoi', 'Histórico', 1869, '1234567890124', 14.99, 4.8, 5, 'Impresiones de Tolstoi', 1200);

-- "Susurros del viento" de Amelia Blackburn
INSERT INTO Libros (titulo, autor, genero, ano_publicado, isbn, precio, calificacion, stock_count, editor, num_paginas)
VALUES ('Susurros del viento', 'Amelia Blackburn', 'Romance', 1982, '1234567890125', 9.99, 4.2, 20, 'Casa Blackburn', 275);

-- "La Odisea Galáctica" de Orion Starfield
INSERT INTO Libros (titulo, autor, genero, ano_publicado, isbn, precio, calificacion, stock_count, editor, num_paginas)
VALUES ('La Odisea Galáctica', 'Orion Starfield', 'Ciencia ficción', 2005, '1234567890126', 19.99, 4.9, 15, 'Prensa Nebulosa', 450);

-- ejercicio 4 update price
UPDATE Books
SET price = 12.99, stock_count = stock_count - 1
WHERE title = 'War and Peace';

-- ejercicio 4.2 delete
-- DELETE FROM Books
-- WHERE title = 'La Odisea Galáctica'
-- el WHERE importante xd 


-- ejercicio 5 Añadimos a un asistente 
-- Crear el usuario Martin
CREATE USER 'martin'@'localhost' IDENTIFIED BY 'tu_contraseña';

-- Conceder permisos para ver y actualizar la tabla Books
GRANT SELECT, UPDATE ON Books TO 'martin'@'localhost';

-- Revocar el permiso de eliminación
REVOKE DELETE ON Books FROM 'martin'@'localhost';

-- ejercicio 6 Martin ya la cago 

-- Revocar el permiso de actualización
REVOKE UPDATE ON Books FROM 'martin'@'localhost';

-- ejercicio 7 remove a book with BookID = 101
DELETE FROM Books
WHERE book_id = 101;

-- ejercicio 8 rollback You're testing the database by removing a book with BookID = 103 but want to revert the change immediately after.
BEGIN TRANSACTION;
DELETE FROM Libros
WHERE book_id = 103;
ROLLBACK;

-- Ejercicio 9 final Examples of Basic SQL queries

-- mmujer sobreviviente de >30 años
SELECT *
FROM tested
WHERE Sex = 'female' AND Survived = 1 AND Age > 30;

-- la edad media de los hombres que no sobrevivieron 
SELECT AVG(Age)
FROM tested
WHERE Sex = 'male' AND Survived = 0;

-- Mostrar información para pasajeros que gastaron entre $20 y $50 en sus boletos y abordaron en el puerto 'C'.
SELECT *
-- FROM passengers Hmm
FROM tested 
WHERE Fare BETWEEN 20 AND 50 AND Embarked = 'C';

-- Calcula el número total de supervivientes de la primera clase.
SELECT COUNT(*) AS TotalSurvivors
FROM tested
WHERE Pclass = 1 AND Survived = 1;


-- Muestra la información de los pasajeros que embarcaron desde Cherburgo (puerto 'C') y gastaron más de $75 en sus boletos.
SELECT *
FROM tested
WHERE Embarked = 'C' AND Fare > 75;
