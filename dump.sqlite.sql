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

-- "Guerra y paz" de León Tolstoi
INSERT INTO Libros (titulo, autor, genero, ano_publicado, isbn, precio, calificacion, stock_count, editor, num_paginas)
VALUES ('Guerra y paz', 'León Tolstoi', 'Histórico', 1869, '1234567890124', 14.99, 4.8, 5, 'Impresiones de Tolstoi', 1200);

-- "Susurros del viento" de Amelia Blackburn
INSERT INTO Libros (titulo, autor, genero, ano_publicado, isbn, precio, calificacion, stock_count, editor, num_paginas)
VALUES ('Susurros del viento', 'Amelia Blackburn', 'Romance', 1982, '1234567890125', 9.99, 4.2, 20, 'Casa Blackburn', 275);

-- "La Odisea Galáctica" de Orion Starfield
INSERT INTO Libros (titulo, autor, genero, ano_publicado, isbn, precio, calificacion, stock_count, editor, num_paginas)
VALUES ('La Odisea Galáctica', 'Orion Starfield', 'Ciencia ficción', 2005, '1234567890126', 19.99, 4.9, 15, 'Prensa Nebulosa', 450);
