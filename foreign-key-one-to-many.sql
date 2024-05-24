-- Recuerda que primero tienes que indicar con qué BD quieres trabajar.
USE empresa;

/*
Tenemos dos tablas: una para los municipios y otra para los clientes.
Cada cliente vive en un solo municipio, pero un municipio puede tener muchos clientes.
Al poner la clave foranea en la tabla clientes nos asegura que cada cliente tiene asignado un municipio que exista en la tabla municipios.
Aunque dicho municipio esté ya asignado en otro cliente.

IMPORTANTE: FIJATE QUE EL TIPO DE LA COLUMNA municipioID EN LA TABLA CLIENTES ES DEL MISMO TIPO QUE LA CLAVE PRIMARIA DE MUNICIPIOS (Columna id)
AMBAS SON "INT".
*/

CREATE TABLE municipios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE clientes (
    id int AUTO_INCREMENT PRIMARY KEY, 
    nombre varchar(50) NOT NULL,
    municipioID INT NOT NULL,
     -- Aquí vinculamos el municipioID en Cliente con el id en Municipios
    FOREIGN KEY (municipioID) REFERENCES municipios(id)
);

-- En las claves un a mucho si tienes que tener en cuenta donde se crea la relación ya que a diferencia de las clave uno a uno si es importante para 
-- la correcta estructura de los datos.

/*
Cuando agregamos clientes, especificamos el ID del municipio donde viven. 
En este ejemplo insertamos el cliente comparte y sigueme sobre la misma dirección y no hay problema.

RECUERDA QUE EL MUNICIPIO DEBE ESTAR EN LA TABLA MUNICIPIOS ANTES DE INSERTAR AL CLIENTE.
*/

INSERT INTO municipios (nombre) VALUES ('El Rosario');

-- Obtenermos el id del municipio que acabamos de insertar para asignarselo a los clientes.
SELECT * FROM municipios WHERE nombre = 'El Rosario';

INSERT INTO clientes(nombre, municipioID) VALUES ('sigueme', 1);
INSERT INTO clientes(nombre, municipioID) VALUES ('comparte', 1);
-- 1 es el id que nos devuevel la consulta anterior. Si en tu caso es el 10 pues cambialo.
-- NOTA: En el apartado de subconsultas veremos como podemos obtener el id sin tener que hardcodearlo en el INSERT.