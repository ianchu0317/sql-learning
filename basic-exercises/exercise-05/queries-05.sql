-- seleccionar database
USE tienda; 

-- debug ver productos que hay
SELECT * FROM productos; 

-- crear tabla segun la especificacion
CREATE TABLE ventas (
	id INT PRIMARY KEY AUTO_INCREMENT,
    fecha DATE,
    producto_id INT,
    cantidad INT NOT NULL,
    total DECIMAL(6, 2)
) AUTO_INCREMENT = 100;

-- insertar datos ficticios
INSERT INTO ventas (fecha, producto_id, cantidad)
VALUES 
('2023-10-05', 1, 2),  -- Vaso
('2023-10-12', 2, 1),  -- Botella
('2023-10-18', 3, 3),  -- Plato
('2023-10-25', 4, 4),  -- Cuchillo
('2023-11-01', 5, 2),  -- Tenedor
('2023-11-05', 6, 1),  -- Cuchara
('2023-11-10', 1, 5);  -- Vaso;

-- ver lo ingresado (debug)
SELECT * FROM ventas;

-- actualizar toda la columna el precio total
UPDATE ventas v
-- hallar intersecciones segun la condicion
JOIN productos p ON v.producto_id = p.id
-- cambiar la columna
SET v.total = v.cantidad * p.precio
-- condicion principal
WHERE v.id >= 100;
