-- Recuerda que primero tienes que indicar con qué BD quieres trabajar.
USE empresa;

-- Una clave foránea es un campo o un conjunto de campos en una tabla que se refiere a un campo en otra tabla.
-- En este ejemplo, tenemos dos tablas: Clientes y Pedidos.
/*
Si te fijas en el siguiente ejemplo en la tabla pedidos, clienteID es una clave foránea que se refiere a id en la tabla clientes.
Esto nos indica que ese pedido pertenecia al cliente que tenga el mismo id como clave primaria.

IMPORTANTE: SI TE FIJAS EL MISMO TIPO DEL LA COLUMNA id DE CLIENTES ES IGUAL AL TIPO DE LA COLUMNA clienteID DE PEDIDOS.
*/
CREATE TABLE clientes(
	id int AUTO_INCREMENT PRIMARY KEY,
	nombre varchar(50) NOT NULL
);

CREATE TABLE pedidos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    total  DECIMAL(10,2) NOT NULL,
    clienteID INT NOT NULL,
    -- Definimos la columna clienteID como una clave foránea
    -- Especificamos que clienteID en Orders es una clave foránea Referencia la columna id en la tabla clientes
    FOREIGN KEY (clienteID) REFERENCES clientes(id)
);

/*
Generalmente, una clave foránea se refiere a una clave primaria en otra tabla, pero también puede referirse a una clave única. 
Esto asegura la integridad referencial entre ambas tablas.
*/

-- Cuando insertamos un nuevo pedido, el clienteId debe existir previamente en clientes. Aquí, estamos insertando un pedido para 'cristotodev'.
INSERT INTO clientes(nombre) VALUES ('cristotodev');

-- Obtenermos el id del cliente cristotodev
SELECT * FROM clientes WHERE nombre = 'cristotodev';

INSERT INTO pedidos (total, clienteID) VALUES (10000, 1); -- 1 es el id que nos devuevel la consulta anterior. Si en tu caso es el 10 pues cambialo.
-- NOTA: En el apartado de subconsultas veremos como podemos obtener el id sin tener que hardcodearlo en el INSERT.

SELECT * FROM pedidos; -- Y debes ver el pedido que acabas de insertar.

/*
Existen varios tipos de relaciones en bases de datos:
    - ONE TO ONE (Uno a Uno)
    - ONE TO MANY (Uno a Muchos)
    - MANY TO MANY (Muchos a Muchos)

En los demás videos y documentos de este repositorios encontrarás sus ejemplos y explicaciones
*/
