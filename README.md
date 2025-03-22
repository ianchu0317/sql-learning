# Aprendizaje y apuntes de SQL 💾

## 📎 Enlaces útiles 
- Tutorial de SQL: https://www.w3schools.com/sql/default.asp
- Tutorial útil MySQL Workbench: https://www.youtube.com/watch?v=2mbHyB2VLYY&ab_channel=DatabaseStar
- Descarga de MySQL: https://www.mysql.com/downloads/
- Tutorial instalación MySQL en Windows: https://www.w3schools.com/mysql/mysql_install_windows.asp
- Documentación de Python MySQL: https://dev.mysql.com/doc/connector-python/en/


## 👨‍🎓 Método de estudio 
- Leer apuntes, tutoriales y tomar nota
- Hacer ejercicios → Si hay duda preguntar chatGPT o consultar documentación
- Practicar con datos existentes
- Crear bases de datos de práctica
- Hacer proyectos funcionales

## Instalación en Linux
- Documentacion oficial de instalación: https://dev.mysql.com/doc/refman/8.4/en/linux-installation-apt-repo.html



----
## Apuntes

MySQL compone de un servidor y cliente. El servidor puede guardar los databases llamados "Schemas" y para su acceso se necesita un usuario y contraseña.
El usuario accedido dependiendo de su permiso puede realizar consultas o "queries" al servidor que va a responder segun los datos pedidos. 

Las queries se pueden automatizar con "scripts" y guardar en archivos apartes para poder utilizar más tarde. Los databases también se pueden guardar o "exportar".
Los archivos exportados tanto scripts como databases tienen la extensión de `.sql` (MySQL).

---

# Administración 🗂️

## Instalación de Servidor MySQL

Crear password en `mysql_secure_installation`

```sh
sudo apt install mysql-server
sudo ststemctl start mysql
sudo mysql_secure_installation
```

Crear escucha en todo el servidor
```sh
sudo nano /etc/mysql/mysql.conf.d/mysqld.cnf
```

Y cambiar contenido 

```
bind-address = 0.0.0.0
```

## Conectar desde root
```sh
sudo mysql -u root
```
El comando funciona cambiando root por cualquier otro usuario

Para conectar desde otro dispositivo cliente se necesitan especificar la ip (hostname) y el puerto.
Si el usuario tiene contraseña, es necesario ingresar el parámetro `-p`
```sh
sudo mysql -u username -h hostbame -P port -p
```

## Crear usuario
Si se usa `%` permite la escucha y conexión en cualquier address. 
OJO **`localhost`** no está incluido por lo que hay que crear otro aparte, son como dos usuarios distintos (aunque tengan el mismo nombre). 
```sql
CREATE USER 'username' @ '%' IDENTIFIED BY 'password';
```

Para dar permisos al usuario creado
```sql
GRANT ALL PRIVILEGES ON *.* TO 'ianchu0317'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;
```

Todas las credenciales se encuentran en la tabla user. 


## Listar elementos

- Listar databases
```sql
SHOW DATABASES;
```

- Listar Tablas (estando en un db)
```sql
SHOW TABLES;
```

- Listar columnas
```sql
SHOW COLUMNS FROM `table_name`;
```



 
