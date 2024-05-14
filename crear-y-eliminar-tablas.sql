-- Recuerda que primero tienes que indicar con qué BD quieres trabajar.
USE empresa;

-- Para crear una tabla usamos CREATE TABLE [nombre de la tabla] ( columna tipo)
CREATE TABLE clientes (
    --El nombre de la columna es "id", su tipo int, AUTO_INCREMENT indica que su valor se incrementará automaticamente y además es clave primaria.
    id int AUTO_INCREMENT PRIMARY KEY, 
    -- NOT NULL indica que todos los clientes deben tener un nombre asignado.
    nombre varchar(50) NOT NULL,
    email varchar(100) NOT NULL,
    -- NULL permite que ese campo tenga un valor NULL. Lo que equivale a que el cliente no tenga registrada su fecha de nacimiento.
    fecha_nacimiento DATE NULL,
    -- DECIMAL en este caso indica que la parte entera tendrá hasta 10 dígitos y la parte decimal hasta 2.
    sueldo DECIMAL(10,2) NULL
);

-- Para eliminar una tabla tienes DROP TABLE [nombre de la tabla]
DROP TABLE clientes;