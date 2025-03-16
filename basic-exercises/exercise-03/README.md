# Ejercicio 03
## 📌 Contar empleados por departamento (GROUP BY)

1️⃣ Usa la tabla empleados de empresa.

2️⃣ Agrupa los empleados por departamento.

3️⃣ Muestra cuántos empleados hay en cada departamento.

## 📌 Pista:

```sql
SELECT departamento, COUNT(*) AS total_empleados
FROM empleados
GROUP BY departamento;
```

---

## Aprendizaje

### `GROUP BY` 
#### Sintaxis:
```sql
SELECT Func(*), column
FROM table
GROUP BY column
condition;
```
#### Procedimiento 
1. Seleccionar filas
2. Agrupar las filas segun las columnas
3. Aplicar las funciones agregadas → A LOS GRUPOS
4. Mostrar el resultado

#### Ejemplo: 
```sql
SELECT departamento, COUNT(*) AS total_empleados
FROM empleados
GROUP BY departamento;
```
1. Seleccionar filas de `empleados`
2. Agrupar las filas seleccionadas según `departamento`
3. Aplicar `COUNT(*)` a todos los elementos de los grupos → OJO QUE * SON ELEMENTOS DEL GROUP NO DE EMPLEADOS
4. Mostrar resultado

### AS
Cambia temporalmente el nombre de la columna

#### Sintaxis
```sql
SELECT column1 AS temp1, column2 AS temp2
FROM table; 
```
