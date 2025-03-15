-- crear base de datos
CREATE DATABASE empresa;

-- seleccionar db a utilizar
USE empresa;

-- crear tabla
CREATE TABLE empleados (
	id int,	 -- no incremental
    nombre varchar(50), 
    edad int NOT NULL,
    departamento varchar(30),
    salario int
);

-- insertar datos ficticios
INSERT INTO empleados (id, nombre, edad, departamento, salario)
VALUES 
(1, "Javier Rodrigo", 35, "informatica", 35),
(2, "Luis Espada", 46, "limpieza", 46),
(3, "Mia Khalifa", 75, "contadora", 23),
(4, "Juan Ignacio", 34, "sistemas", 56),
(5, "Roberto Rodrigo", 25, "asistente", 38);

-- ver todos los datos insertados
SELECT * FROM empleados;

-- ver salarios mayores a 40 
SELECT * FROM empleados WHERE salario > 40;

-- actualizar el salario del id = 3
SET SQL_SAFE_UPDATES = 0;
UPDATE empleados 
SET salario=25
WHERE id=3;
SET SQL_SAFE_UPDATES = 1;

-- eliminar empleado con id = 2
SET SQL_SAFE_UPDATES = 0;
DELETE FROM empleados WHERE id = 2;
SET SQL_SAFE_UPDATES = 1;

-- intentar insertar un valor null a edad → orden no importa, especificar arriba
INSERT INTO empleados (id, nombre, departamento, edad, salario)
VALUES (6, "Gabriel", "Seguridad", 37, 38);