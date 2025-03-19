
-- seleccionar database correcto
USE empresa;

-- crear tabla de ventas
CREATE TABLE ventas (
	id INT PRIMARY KEY AUTO_INCREMENT,
    fecha DATE,
    empleado_id INT,
    total DECIMAL(6, 2)
) AUTO_INCREMENT 100;

-- insertar datos de venta
INSERT INTO ventas (fecha, empleado_id, total)
VALUES
('2023-10-05', 6, 1200.00),
('2023-10-12', 6, 800.00),
('2023-10-18', 3, 1500.00),
('2023-10-25', 5, 900.00),
('2023-11-01', 10, 750.00),
('2023-11-05', 7, 2000.00),
('2023-11-10', 6, 1300.00),
('2023-11-15', 3, 1700.00),
('2023-11-20', 5, 1100.00),
('2023-11-25', 10, 600.00);

-- ver todas las ventas
SELECT * FROM ventas;

-- ver ventas por empleado
SELECT e.nombre as vendedor, COUNT(*) AS vendido
FROM empleados e
JOIN ventas v ON e.id = v.empleado_id
GROUP BY e.nombre;
