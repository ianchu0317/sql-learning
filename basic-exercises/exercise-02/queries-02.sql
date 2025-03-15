-- crear base de datos 
CREATE DATABASE tienda;
USE tienda;

-- crear tabla segun el enunciado
CREATE TABLE productos (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    precio DECIMAL(6, 2) NOT NULL,
    stock INT
);
ALTER TABLE productos AUTO_INCREMENT = 1;

-- insertar productos
INSERT INTO productos (nombre, precio, stock)
VALUES 
('Vaso', 77.99, 20),
('Botella', 80, 7),
('Plato', 50, 25),
('Cuchillo', 20, 12),
('Tenedor', 20, 13),
('Cuchara', 20, 5)
;

-- consultar todos los productos
SELECT * FROM productos;


-- consultar stock menor a 10 
SELECT * FROM productos WHERE stock < 10;


-- Actualizar 10% el precio de todos los productos
SET SQL_SAFE_UPDATES = 0;
UPDATE productos
SET precio = precio * 1.1;
SET SQL_SAFE_UPDATES = 1;