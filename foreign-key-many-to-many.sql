-- Recuerda que primero tienes que indicar con qué BD quieres trabajar.
USE empresa;

/*
Tenemos dos tablas: una para los clientes y otra para los productos. 
¡Queremos que los clientes puedan comprar muchos productos y que los productos puedan ser comprados por muchos clientes!

Para permitir esto necesitamos una tabla especial para conectarlos. En este caso es la tabla Compras.

IMPORTANTE: LOS TIPOS DE LAS COLUMNAS QUE VAN A SER CLAVES FORANEAS DEBEN SER IGUAL QUE LOS DE LAS CLAVE PRIMARIA DE LA TABLA CON LA QUE 
SE RELACIONA (O CLAVE ÚNICA)
*/

CREATE TABLE clientes (
    id int AUTO_INCREMENT PRIMARY KEY, 
    nombre varchar(50) NOT NULL,
);

CREATE TABLE productos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100)
);

CREATE TABLE compras (
    clienteId INT,
    productoId INT,
    PRIMARY KEY (clienteId, productoId),
    FOREIGN KEY (clienteId) REFERENCES clientes(id),
    FOREIGN KEY (productoId) REFERENCES productos(id)
);

-- En la tabla Compras, cada fila representa una compra. La combinación de ClienteID y ProductoID nos dice qué cliente compró qué producto.

-- Ejemplo de  cristotodev compró una camiseta y un pantalón. ¡Eso es una relación muchos a muchos en acción!
/*
Para insertarlo primero necesitamos tener creados los productos y los clientes. 
Y por último se genera la inserción de la relación en la tabla intermedia que nos indica quién compró que producto. En este ejemplo la tabla es Productos.
*/

INSERT INTO clientes (nombre) VALUES ('cristotodev');

INSERT INTO productos (nombre) VALUES ('Camiseta');
INSERT INTO productos (nombre) VALUES ('Pantalón');

INSERT INTO compras (clienteId, productoId) VALUES (1, 1); -- El segundo 1 corresponde con el id del producto Camiseta
INSERT INTO compras (clienteId, productoId) VALUES (1, 2); -- El 2 corresponde con el id del producto Pantalón

-- NOTA: En el apartado de subconsultas veremos como podemos obtener el id sin tener que hardcodearlo en el INSERT.