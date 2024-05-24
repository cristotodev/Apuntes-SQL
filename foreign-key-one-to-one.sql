-- Recuerda que primero tienes que indicar con qué BD quieres trabajar.
USE empresa;

/*
En una relación uno a uno, cada registro en una tabla está conectado con un solo registro en otra tabla. Aquí tenemos dos tablas: Clientes y Pasaportes.

La tabla Pasaportes tiene una columna llamada clienteID que es única y se refiere a ID en la tabla Clientes. Esto asegura que cada cliente tenga un solo pasaporte.

IMPORTANTE: SI TE FIJAS EL TIPO DE LA COLUMNA clientID TIENE EL MISMO TIPO QUE LA COLUMNA id DE LA TABLA clientes (CLAVE PRIMARIA) CON LA QUE SE RELACIONA.
*/

CREATE TABLE clientes (
    id int AUTO_INCREMENT PRIMARY KEY, 
    nombre varchar(50) NOT NULL
);

CREATE TABLE pasaportes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    numeroPasaporte VARCHAR(20),
    clientID INT UNIQUE,
    
    -- Especificamos que clienteID en Pasaportes es una clave foránea Referencia la columna ID en la tabla Clientes
    FOREIGN KEY (clientID) REFERENCES clientes(id)
);

/*
NOTA: Para las claves UNO a UNO podemos poner la clave foranea en cualquier de las 2 tablas. En este caso he optado por poner el id del cliente
en la tabla pasaporte. Pero se puede hacer agregando el id del pasaporte en la tabla clientes.
*/

/*
Al insertar un pasaporte, el clienteID debe existir primero en la tabla Clientes. Aquí, estamos creando un pasaporte para cristotodev.
Si intentamos insertar un pasaporte sobre un cliente que no existe esto dará error.
*/

INSERT INTO clientes(nombre) VALUES ('cristotodev');

-- Obtenermos el id del cliente cristotodev
SELECT * FROM clientes WHERE nombre = 'cristotodev';

INSERT INTO pasaportes (numeroPasaporte, clientID) VALUES ('11111111', 1);
-- 1 es el id que nos devuevel la consulta anterior. Si en tu caso es el 10 pues cambialo.
-- NOTA: En el apartado de subconsultas veremos como podemos obtener el id sin tener que hardcodearlo en el INSERT.

SELECT * FROM pasaportes p; -- Aquí deberíamos ver el pasaporte que acabamos de insertar con el id igual al que tiene el cliente cristotodev