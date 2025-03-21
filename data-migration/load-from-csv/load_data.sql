
-- Crear base de datos para estos ejercicios
CREATE DATABASE migration;
USE migration;

-- crear tabla
CREATE TABLE IF NOT EXISTS business_operation (
	description VARCHAR(50),
    industry VARCHAR(50),
    level INT NOT NULL,
    size VARCHAR(10),
    line_code VARCHAR(10), 
    value INT NOT NULL
);

-- mostrar path de archivos seguros 
SHOW VARIABLES LIKE 'secure_file_priv';

-- cambiar permisos

-- cargar datos
LOAD DATA INFILE 'C:\Program Files\MySQL\MySQL Server 8.0\Uploads\business-operations-survey-2022-business-finance.csv'
INTO TABLE business_operation
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
