-- Para insertar registros en una tabla tenemos INSERT INTO [nombre de la tabla][(columnas)] VALUES (valores para cada columna separado por comas)
-- La parte [(columnas)] es opcinal. Por esa razón está entre corchetes. Si no se especifica va en orden.

-- Insertar Un Registro Usando Nombres de Columnas
INSERT INTO clientes (nombre, email, fecha_nacimiento, sueldo)
VALUES ('Cristotodev', 'cristotodev@dev.com', NULL, 4500.00);

-- Insertar Varios Registros a la Vez
INSERT INTO clientes (nombre, email, fecha_nacimiento, sueldo)
VALUES
('Carlos López', 'carlos.lopez@example.com', '1995-06-15', 6000.00),
('María Rodríguez', 'maria.rodriguez@example.com', '1978-09-22', 5500.00);

-- Insertar un registro sin especificar las columnas. En este caso van en orden según la tabla. Primero nombre, luego email, ...
INSERT INTO clientes VALUES ('Juan Pérez', 'juan.perez@example.com', NULL, 5000.00);

-- Insertar varios registros sin especificar las columnas. En este caso van en orden según la tabla. Primero nombre, luego email, ...
-- Para insertar múltiples registros a la vez, puedes separar cada conjunto de valores con una coma.
INSERT INTO clientes
VALUES
('Carlos López', 'carlos.lopez@example.com', '1995-06-15', 6000.00),
('María Rodríguez', 'maria.rodriguez@example.com', '1978-09-22', 5500.00);

-- Insertar Un Registro Usando Valores Predeterminados
-- Si tienes valores predeterminados establecidos para algunas columnas en la definición de la tabla, puedes omitir esas columnas en la sentencia
INSERT INTO clientes (nombre, email)
VALUES ('Pedro Martínez', 'pedro.martinez@example.com');

-- Insertar Un Registro Usando Valores NULL
-- Si una columna permite valores NULL, puedes insertar un registro sin proporcionar un valor para esa columna.
INSERT INTO clientes (nombre, email, fecha_nacimiento, sueldo)
VALUES ('Laura Fernández', 'laura.fernandez@example.com', NULL, NULL);

-- Insertar Un Registro Usando Valores Escapados
-- Si los valores que estás insertando contienen caracteres especiales, como comillas simples, debes escaparlos con una barra invertida (\).
INSERT INTO clientes (nombre, email, fecha_nacimiento, sueldo)
VALUES ('Oscar \"El Gato\" González', 'oscar.gonzalez@example.com', '2000-03-04', 7000.00);


-- Insertar Un Registro Usando Valores Con Fuentes Externas
-- MySQL permite insertar datos desde otras tablas o archivos utilizando la cláusula LOAD DATA INFILE o INSERT INTO... SELECT.

-- Insertar desde otra tabla
INSERT INTO clientes (nombre, email, fecha_nacimiento, sueldo)
SELECT nombre, email, fecha_nacimiento, sueldo FROM otros_clientes;

-- Insertar desde un archivo CSV
LOAD DATA INFILE '/ruta/al/archivo.csv'
INTO TABLE clientes
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';
