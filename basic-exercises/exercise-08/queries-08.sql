
-- elegir database
USE empresa; 

-- ver todos los empleados
SELECT * FROM empleados;

-- añadir constraint de unicidad → funciona si la tabla cumple con la condicion a aplicar, sino da error
ALTER TABLE empleados ADD CONSTRAINT uc_nombre UNIQUE (nombre);

