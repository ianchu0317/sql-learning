-- eliminar database creado anteriormente
DROP DATABASE empresa;

-- crear base de datos de empresa
CREATE DATABASE empresa;
USE empresa;

-- crear tabla segun enunciado
CREATE TABLE empleados (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50),
    edad INT NOT NULL,
    departamento VARCHAR(30),
    salario DECIMAL(8, 2)
);

-- insertar datos de empleados
INSERT INTO empleados (nombre, edad, departamento, salario)
VALUES 
("Ana Martínez", 28, "Ventas", 48000.00),
("Carlos Gómez", 34, "Recursos Humanos", 52000.00),
("Luisa Fernández", 42, "Tecnología", 75000.00),
("Pedro Sánchez", 29, "Marketing", 45000.00), 
("Sofía López", 37, "Finanzas", 68000.00), 
("Juan Torres", 31, "Ventas", 49000.00), 
("Marta Ruiz", 45, "Tecnología", 82000.00),
("Diego Jiménez", 26, "Recursos Humanos", 47000.00), 
("Elena Castro", 39, "Finanzas", 71000.00), 
("Andrés Morales", 33, "Marketing", 53000.00)
;

-- ver todos los empleados
SELECT * FROM empleados; 

-- consultar empleados con salarios mayor a $50000.00
SELECT * FROM empleados WHERE salario > 50000.00;

-- actualizar el empleado de id = 6 con salario + 10000.00
UPDATE empleados 
SET salario = salario + 10000.00
WHERE id = 6;

-- eliminar un empleado de la tabla id = 1
DELETE FROM empleados
WHERE id = 1;

