# Ejercicio 08
## 📌 Agrega una restricción de unicidad (UNIQUE)

1️⃣ Modifica la tabla empleados para que nombre sea único (no puede haber dos empleados con el mismo nombre).

📌 Pista:
```sql
ALTER TABLE empleados ADD CONSTRAINT unique_nombre UNIQUE (nombre);
```
