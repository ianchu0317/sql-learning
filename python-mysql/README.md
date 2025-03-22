# Ejercicio ficticio inventado por mí

## Administrativo
1. Crear un usuario 'python' para conectar desde otro cliente en el mismo LAN.
2. El usuario debe tener permisos de administrador para crear tablas, leer tablas, insertar valores.
3. Probar la conexión con cliente MySQL antes de conectar con Python

## MySQL + Python
1. Probar conexión con Python con `mysql-connector-python`.
2. Crear database llamado 'python_mysql'
3. Crear tabla 
4. Insertar valores a la tabla desde csv.

---
# Syntaxis 

## Conexión inicial
La siguiente línea crea una conexión entre el programa y el servidor MySQL
```py
conn = mysql.connector.connect(user='user', password='password', host='hostname(ip)', database='db_name')
```
Hay que asegurar de cerrar la conexión
```py
conn.close()
```
Para poder insertar, crear datos y hacer todo tipo de cosas se necesita el cursor
```py
cursor = conn.cursor()
```
Que también se necesita cerrar al salir del programa
```py
cursor.close()
```


## COMANDOS
Para los comandos es necesario trabajar con `cursor`. `cursor.execute(cmd)` permite ejecutar el comando.
El cmd permite strings como tuplas. En caso de un comando en específico se puede usar string. 
Para más datos del mismo estilo es recomendable formatear los datos con la función que ya viene.

### CREATE
```py
...
create_table = ("CREATE TABLE IF NOT EXISTS table_name"
                "(col1 DATATYPE,
                " col2 DATATYPE)")
cursor.execute(create_table)
```

### INSERT
En este caso es recomendable usar el formateo que presenta la biblioteca ya que pueden llegar a ser muchos datos.
```py
my_cmd = ("INSERT INTO table_name "
        VALUES (%(col1)s, %(col2)s)")

my_data = {col1: "data1", col2: 2}

cursor.execute(my_cmd, my_data)
 
```

## QUERY
La sintaxis es la misma utilizando tuplas y formatea solo
```py
my_query = ("SELECT col1, col2 FROM table_name "
            "WHERE col1 BETWEEN %s AND %s")
cursor.execute(my_query, (data1, data2))
```
Si hay varias filas devueltas, se puede esperar un objeto iterable (como lista),
y como se seleccionó varias columnas, entonces se pueden esperar tuplas. 
REsumiendo, podemos esperar un dato así `[(data1, data2), ..., (data1, data2)]`

