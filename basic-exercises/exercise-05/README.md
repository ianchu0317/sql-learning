# Ejercicio 05

## 📌 Crea una tabla de ventas y consulta totales (SUM())

1️⃣ Crea una tabla ventas:

- id (entero, autoincremental, clave primaria).
- fecha (DATE).
- producto_id (entero, clave foránea a productos).
- cantidad (entero).
- total (precio total de la venta).

2️⃣ Inserta al menos 5 ventas.

3️⃣ Calcula el total de ventas en el mes actual.

---

## Apuntes
### AUTO_INCREMENT
Esta variable se puede establecer justo despues de la declaración de la tabla como: 
```sql
CREATE TABLE tabla1 (
  val INT PRIMARY KEY AUTO_INCREMENT,
  val2 VARCHAR(50)
) AUTO_INCREMENT = initial_value;

```

### Orden de sintaxis
Estuve observando que el orden de la sintaxis no varia mucho. Por ejemplo es lo mismo escribir el siguiente codigo
```sql
UPDATE tabla1
SET  column1=value
JOIN tabla2 ON <condicion tabla1 int tabla 2>
WHERE condition
```
Que utilizar el join primero
```sql
UPDATE tabla1
JOIN tabla2 ON <condition>
SET column1=value
```

### AS
`AS` sirve para crear un alias a las variables utilizadas. Facilita legibilidad y resume tipeo. También se puede omitir.

```sql
SELECT column as temp
FROM table AS t;
```
Es lo mismo omitir el AS en table para crear un alias
```sql
SELECT column as temp
FROM table t;
```
