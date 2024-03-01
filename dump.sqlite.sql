-- TABLE

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
 
-- INDEX
 
-- TRIGGER
 
-- VIEW
 