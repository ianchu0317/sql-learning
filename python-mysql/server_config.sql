
-- crear usuario 
CREATE USER IF NOT EXISTS 'python'@'%' IDENTIFIED BY 'python123';

-- dar privilegios
GRANT ALL PRIVILEGES ON *.* TO 'python'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;

-- crear database 
CREATE DATABASE IF NOT EXISTS python_mysql;
USE DATABASE python_mysql;

