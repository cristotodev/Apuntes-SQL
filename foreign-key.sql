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


/*
Para mantener la integridad de los datos podemos usar restricciones en las claves foraneas a la hora de actualizar y eliminar registros.
Los tipos de restricciones que tenemos son CASCADE, SET NULL, SET DEFAULT, NO ACTION y RESTRICT.
Esto es como actuar con la tabla relacionada cuando se actualice o elimine registros.

1. CASCADE:
    - ON DELETE CASCADE: Si se elimina una fila en la tabla referenciada, todas las filas en la tabla que contiene la clave foránea que están relacionadas con esa fila también se eliminarán.
    - ON UPDATE CASCADE: Si se actualiza el valor de la clave primaria en la tabla referenciada, todos los valores correspondientes en la tabla que contiene la clave foránea se actualizarán automáticamente.

2. SET NULL:
    - ON DELETE SET NULL: Si se elimina una fila en la tabla referenciada, todos los valores correspondientes en la tabla que contiene la clave foránea se establecerán a NULL.
    - ON UPDATE SET NULL: Si se actualiza el valor de la clave primaria en la tabla referenciada, todos los valores correspondientes en la tabla que contiene la clave foránea se establecerán a NULL.

3. SET DEFAULT:
    - ON DELETE SET DEFAULT: Si se elimina una fila en la tabla referenciada, todos los valores correspondientes en la tabla que contiene la clave foránea se establecerán al valor predeterminado definido para esa columna.
    - ON UPDATE SET DEFAULT: Si se actualiza el valor de la clave primaria en la tabla referenciada, todos los valores correspondientes en la tabla que contiene la clave foránea se establecerán al valor predeterminado.

4. NO ACTION:
    - ON DELETE NO ACTION: Si se intenta eliminar una fila en la tabla referenciada que tiene referencias en otra tabla, la acción fallará y no se permitirá la eliminación. Esta es la acción predeterminada si no se especifica ninguna otra.
    - ON UPDATE NO ACTION: Similar a la eliminación, si se intenta actualizar una fila en la tabla referenciada que tiene referencias en otra tabla, la acción fallará y no se permitirá la actualización.

5. RESTRICT:
    - ON DELETE RESTRICT: Esta restricción impide la eliminación de una fila en la tabla referenciada si existen filas relacionadas en la tabla que contiene la clave foránea. Es similar a NO ACTION, pero es verificada inmediatamente después del intento de eliminación.
    - ON UPDATE RESTRICT: Impide la actualización de una fila en la tabla referenciada si existen filas relacionadas en la tabla que contiene la clave foránea.
*/

CREATE TABLE municipios (
    id INT PRIMARY KEY,
    nombre VARCHAR(50),
);

CREATE TABLE cliente(
    id INT PRIMARY KEY,
    nombre VARCHAR(50),
    municipioID INT,

    FOREIGN KEY (municipioID) REFERENCES municipios(id)
    ON DELETE CASCADE -- Si borro un municipio se borrarán todos los clientes que tengan asignado ese municipio porque están relacionado
    ON UPDATE CASCADE -- Si actualizo el id de un municipio se actualizará ese id en la tabla clientes para los clientes que tienen la relación.
)
