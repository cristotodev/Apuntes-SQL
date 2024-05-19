-- Recuerda que primero tienes que indicar con qué BD quieres trabajar.
USE empresa;

-- Para todos estos ejemplos y en general para la gestión de permisos. Los usuarios deben estar previamente creados.
GRANT SELECT, INSERT ON empresa.clientes  TO 'cristotodev'@'1.1.1.1';

-- Para asinarle permisos sobre todas las tablas de la BD usamos el comodín asterísco (*)
GRANT SELECT, INSERT ON empresa.* TO 'cristotodev'@'1.1.1.1';

-- Agregar todos los permisos usando ALL PRIVILEGES sobre todas las tablas de una base de datos.
GRANT ALL PRIVILEGES ON empresa.* TO 'cristotodev'@'1.1.1.1';

-- Agregar todos los permisos para todas las bases de datos y todas las tablas de nuestro servidor.
GRANT ALL PRIVILEGES ON *.* TO 'cristotodev'@'1.1.1.1'; -- *.* Indica todas las bases de datos y todas las tablas

-- Dar permisos de eliminación sobre todas las bases de datos y tablas de nuestro servidor.
GRANT DELETE ON *.* TO 'cristotodev'@'1.1.1.1';

-- Si quieres ver los permisos que tiene asignado un usuario debes usar el comando SHOW GRANTS.
SHOW GRANTS FOR 'cristotodev'@'1.1.1.1'; --Siempre hay que especificar la IP de la máquina tambień.

-- Para quitar permisos sobre un usuario usamos REVOKE
REVOKE INSERT ON empresa.clientes FROM 'cristotodev'@'1.1.1.1';

-- Para eliminar todos los permisos de un usuarios sobre una tabla de golpe.
REVOKE ALL PRIVILEGES ON empresa.clientes FROM 'cristotodev'@'1.1.1.1';

-- Para eliminar todos los permisos de un usuarios sobre todas las tablas de la base de datos de golpe.
REVOKE ALL PRIVILEGES ON empresa.* FROM 'cristotodev'@'1.1.1.1';

-- Quitar todos los permisos sobre todas las bases de datos y todas las tablas de nuestro servidor.
REVOKE ALL PRIVILEGES ON *.* FROM 'cristotodev'@'1.1.1.1';

-- Quitar el permiso de eliminar en todas las bases de datos y todas las tablas de nuestro servidor.
REVOKE DELETE ON *.* FROM 'cristotodev'@'1.1.1.1';
