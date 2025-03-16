-- elegir base de datos a utilizar
USE empresa;

-- listar tabla empleados completo
SELECT * FROM empleados;

-- ver cantidad de empleados por departamento
SELECT departamento, COUNT(id) AS cantidad_empleados
FROM empleados
GROUP BY departamento;