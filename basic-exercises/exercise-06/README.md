# Ejercicio 06

## 📌 Encuentra los empleados con el salario más alto (MAX())

1️⃣ Consulta cuál es el salario más alto de la empresa.

2️⃣ Muestra el nombre del empleado que lo tiene.

📌 Pista:
```sql
SELECT nombre, salario 
FROM empleados 
WHERE salario = (SELECT MAX(salario) FROM empleados);
```

--- 
## Aprendizaje

### Método alternativo para hallar mayor
Ordenar en orden descendente y LIMIT 1 respuesta de fila only.

### HAVING
Se utiliza para filtrar resultados de GROUP BY y funciones agregadas

