# Ejercicio 02

## Enunciado

📌 2. Crea y llena una tabla de productos

1️⃣ Crea una base de datos llamada tienda.

2️⃣ Crea una tabla productos con estas columnas:

- id (entero, autoincremental, clave primaria).
- nombre (texto, máximo 100 caracteres).
- precio (decimal con 2 decimales).
- stock (entero).

3️⃣ Inserta al menos 5 productos.

4️⃣ Consulta todos los productos cuyo stock sea menor a 10.

5️⃣ Sube el precio de todos los productos un 10%.



--- 

## Aprendizaje y consejos relevantes
- `ALTER TABLE productos AUTO_INCREMENT = 1` es inecesario porque es 1 por default
- En UPDATE evitar utilizar `SET SQL_SAFE_UPDATES` porque es una variable del Workbench → Utilizar `WHERE id > 0`
- Comentar bien los códigos
- Ser consistente en tipos de datos → en este caso usar DECIMAL en vez de INT
