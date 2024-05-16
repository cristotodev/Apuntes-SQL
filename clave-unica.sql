-- Recuerda que primero tienes que indicar con qué BD quieres trabajar.
USE empresa;

/*
Las claves única nos asegura que no haya valores duplicados en una columna o en un conjunto de columnas.
La idea es la misma que la clave primaria, pero la diferencia es que la clave únique permite valores nulos.

#NOTA: Puedes tener más de una clave única por tabla, a diferencia de la clave primaria que solo puedes tener una.
*/

-- Para crear una clave única cuando estamos creando una tabla lo hacemos con la palabra UNIQUE en la columna.
CREATE TABLE empleados(
	id int AUTO_INCREMENT PRIMARY KEY ,
	nombre varchar(50) NOT NULL,
	email varchar(100) UNIQUE -- Esta columna es la clave única
);

-- Para crear una constraint única cuando la tabla está creada tenemos formas de crearlas con CREATE UNIQUE INDEX o ALTER TABLE usando ADD UNIQUE.
CREATE UNIQUE INDEX email_uq ON empleados(email);
ALTER TABLE empleados ADD UNIQUE(email);
ALTER TABLE empleados ADD CONSTRAINT email_uq UNIQUE(email); --De esta manera podemos darle el nombre que queremos a la constraint.

/*
Para crear una clave única compuesta es igual que con una columna pero entre los paréntesis () 
le indicamos las columnas que queremos que la formen.
*/
CREATE UNIQUE INDEX nombre_email_uq ON empleados(nombre, email);
ALTER TABLE empleados ADD UNIQUE(nombre, email);
ALTER TABLE empleados ADD CONSTRAINT nombre_email_uq UNIQUE(nombre, email); --De esta manera podemos darle el nombre que queremos a la constraint.


-- Eliminar una clave única de una tabla por su nombre
ALTER TABLE empleados DROP INDEX nombre_email_uq;
