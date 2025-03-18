-- elegir database
USE empresa;

-- mostrar todos los empleados (debug)
SELECT * from empleados;

-- mostrar salario donde salario sea maximo
SELECT nombre, departamento, salario
FROM empleados
WHERE salario = (SELECT MAX(salario) FROM empleados);
