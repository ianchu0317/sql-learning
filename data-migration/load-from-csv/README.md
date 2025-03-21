# 📌 Exportar datos de Excel a MySQL (Carga de datos)

1️⃣ Descargá o creá un archivo Excel con una hoja llamada productos y las siguientes columnas:
```
id (número)
nombre (texto)
precio (decimal)
stock (número)
```
2️⃣ Convertí el archivo a formato .csv (Guardar como → CSV).

3️⃣ Creá una base de datos tienda en MySQL.

4️⃣ Creá la tabla productos.

5️⃣ Importá los datos desde el archivo .csv a MySQL usando LOAD DATA INFILE.

📌 Pista:
```sql
LOAD DATA INFILE '/ruta/del/archivo.csv'  
INTO TABLE productos  
FIELDS TERMINATED BY ','  
LINES TERMINATED BY '\n'  
IGNORE 1 ROWS;  
```

---
## Comentarios
- El archivo `.sql` no cumple con la consigna pero se trató de importar un archivo `.csv` del internet
- Hay que sacar los permisos de `secure_file_priv` → capaz es posible evadirlo con un script de Python haciendo limpieza de datos (insert de a 1)? 
