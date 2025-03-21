# Ejercicio 09
## 📌 Crea un índice en la tabla de ventas (INDEX)

1️⃣ Crea un índice en la columna fecha de la tabla ventas para mejorar la velocidad de búsqueda.

📌 Pista:
```sql
CREATE INDEX idx_fecha ON ventas(fecha);
```

--- 
## ¿Para que es el `INDEX`?
Entiendo que ayuda mejorar motores de búsqueda para cuando se utiliza métodos de filtrado como por ejemplo `WHERE` y `JOIN`.
Son valores únicos. ¿Entonces esto a que se diferencia a los `PRIMARY KEY`?
La diferencia principal es que `PRIMARY KEY` como dice su nombre, se utiliza para identificar principalmente las filas; 
es decir, que para cada fila hay **un** valor único y principal que lo caracteriza, y también es rápido en búsqueda, etc. 
Por otro lado, los que son `INDEX` ayudan a mejorar la búsqueda, pero no son la columna principal de la fila, aunque también debe 
ser importante para implementar. 
Además `INDEX` a diferencia de `PRIMARY KEY` acepta valores duplicados. 

### ¿Cuándo utilizar `INDEX`?
Se debe utilizar en databases grandes para buscar más eficientemente. En db pequeños no hace falta. 


