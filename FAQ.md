# Preguntas personales

## Cual es la convención de SQL ?
  
Utilizar los comandos en Mayúscula y las variables en minúscula y en `snake_case`. 
Esto facilita la lectura aunque también depende de la convención utilizada en el desarrollo.


## Cuál es la diferencia entre `varchar` y `string` ?
  
Lo más conveniente sería utilizar `varchar` porque lo usan en db viejos y no es un tipo de dato standard.

## Qué es PRIMARY KEY ? 
Es como fijar una columna y que sea la más importante. La característica es que todos sus elementos son únicos.
Ayuda a identificar de manera única una fila en una tabla. 

🔹 Características de una PRIMARY KEY

✅ Única → No puede haber dos filas con el mismo valor en la clave primaria.

✅ No nula (NOT NULL) → No puede haber valores NULL.

✅ Índice implícito → MySQL y otras bases de datos crean automáticamente un índice en la PRIMARY KEY, lo que acelera las búsquedas.

Ejemplo
```
CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);
```
