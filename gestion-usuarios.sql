-- Para crear un usuario usamos el comando CRAETE USER 'nombre_usuario'@'máquina' IDENTIFIED BY 'contraseña'
CREATE USER 'cristotodev'@'1.1.1.1' IDENTIFIED BY 'comparte';

-- Crear un usuario con acceso desde cualquier máquina
CREATE USER 'cristotodev'@'%' IDENTIFIED BY 'comparte';

-- Crear un usuario con acceso solo desde la máquina donde está el servidor de BD
CREATE USER 'cristotodev'@'localhost' IDENTIFIED BY 'comparte';

-- Mostrar los usuarios que tienes en tu BD con la máquina de acceso.
SELECT User, Host FROM mysql.user;

-- Para eliminar un usuario con acceso a una máquina tenemos el comando DROP USER 'nombre_usuario'@'máquina'
DROP USER 'cristotodev'@'1.1.1.1';

-- Borrar todas las relaciones de un usuario.
DROP USER 'cristotodev'; -- Si el usuario tiene configurado 5 máquina borrará los 5 registros.