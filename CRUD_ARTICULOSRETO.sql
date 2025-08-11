-- Crear la base de datos
CREATE DATABASE CRUD_ARTICULOS;
-- Seleccionar la base de datos para trabajar en ella
USE CRUD_ARTICULOS;

-- Crear la tabla de Articulos
CREATE TABLE Articulos (
    ID_Articulo INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Precio DECIMAL(10, 2) NOT NULL CHECK (Precio > 0),
    Stock INT NOT NULL,
    Unidad ENUM('pieza', 'litros', 'kilos') NOT NULL,
    CONSTRAINT chk_nombre_longitud CHECK (LENGTH(Nombre) >= 3)
);

-- 1. Inserción correcta de un artículo (Unidad: pieza)
INSERT INTO Articulos (Nombre, Precio, Stock, Unidad) VALUES
('Laptop', 1200.50, 20, 'pieza');

-- 2. Inserción correcta de otro artículo (Unidad: kilos)
INSERT INTO Articulos (Nombre, Precio, Stock, Unidad) VALUES
('Tomates', 25.00, 100, 'kilos');

-- 3. Inserción correcta de otro artículo (Unidad: litros)
INSERT INTO Articulos (Nombre, Precio, Stock, Unidad) VALUES
('Leche', 18.75, 50, 'litros');

-- 4. Inserción que fallará por la longitud del nombre
-- Error: el nombre 'TV' es menor a 3 caracteres
-- INSERT INTO Articulos (Nombre, Precio, Stock, Unidad) VALUES
-- ('TV', 800.00, 15, 'pieza');

-- 5. Inserción que fallará por el valor del precio
-- Error: el precio es igual a 0, debe ser mayor
-- INSERT INTO Articulos (Nombre, Precio, Stock, Unidad) VALUES
-- ('Libro', 0.00, 200, 'pieza');

-- 6. Inserción que fallará por el valor de la unidad
-- Error: 'caja' no está permitido en el ENUM
-- INSERT INTO Articulos (Nombre, Precio, Stock, Unidad) VALUES
-- ('Galletas', 35.50, 75, 'caja');

SELECT * FROM ARTICULOS;
COMMIT