-- usar database empresa
use empresa;

-- promedio de salario por cada departamento en decreciente
SELECT departamento, ROUND(AVG(salario), 2) as promedio_salario
FROM empleados
GROUP BY departamento
ORDER BY promedio_salario DESC;