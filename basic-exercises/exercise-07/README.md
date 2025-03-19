# Ejercicio 07
##📌Usa JOIN para unir empleados con ventas

1️⃣ Muestra el nombre del empleado y el total de ventas que realizó (suponiendo que hay una tabla ventas con empleado_id).

📌 Pista:
```sql
SELECT empleados.nombre, SUM(ventas.total) AS total_vendido
FROM empleados
JOIN ventas ON empleados.id = ventas.empleado_id
GROUP BY empleados.nombre;
```

