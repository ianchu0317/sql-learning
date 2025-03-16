# Ejercicio 04

## 📌 Encuentra el salario promedio por departamento (AVG())
1️⃣ Usa la tabla empleados.
2️⃣ Muestra el salario promedio de cada departamento.

📌 Pista:
```sql
SELECT departamento, AVG(salario) AS salario_promedio
FROM empleados
GROUP BY departamento;
```

--- 
## Mejoras
- Limpiar salida output con `ROUND(AVG(), 2)` a 2 decimales
- Utilizar `ORDER BY` para ordenar los resultados
