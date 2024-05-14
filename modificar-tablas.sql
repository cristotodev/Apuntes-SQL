-- Recuerda que primero tienes que indicar con qué BD quieres trabajar.
USE empresa;

-- Para modificar tablas usamos ALTER TABLE [nombre de la tabla] y dependiendo de la acción un verbo u otro.
-- ADD, RENAME, MODIFY, DROP, etc.

-- Para agregar nuevas columnas a la tabla, puedes usar la cláusula ADD COLUMN seguida de la definición de la columna.
ALTER TABLE clientes ADD COLUMN direccion VARCHAR(255);

-- Para eliminar una columna existente, usa la cláusula DROP COLUMN.
ALTER TABLE clientes DROP COLUMN direccion;

-- Para cambiar el tipo de una columna o sus propiedades, usa la cláusula MODIFY COLUMN.
ALTER TABLE clientes MODIFY COLUMN sueldo DECIMAL(15, 3);

-- Para cambiar el nombre de una columna, usa la cláusula RENAME.
ALTER TABLE clientes RENAME COLUMN sueldo TO salario;

-- Para agregar una clave primaria si no tiene ninguna. (RECUERDA QUE SOLO PUEDES TENER UNA CLAVE PRIMARIA POR TABLA)
ALTER TABLE clientes ADD PRIMARY KEY (id);

-- Para eliminar una clave primaria.
ALTER TABLE clientes DROP PRIMARY KEY;

-- Para mejorar el rendimiento de las consultas, puedes agregar índices a las columnas.
ALTER TABLE clientes ADD INDEX (email);

-- Para eliminar un índice, usa la cláusula DROP INDEX.
ALTER TABLE clientes DROP INDEX email;

-- Para agregar restricciones como UNIQUE, CHECK, etc., a una columna existente.
ALTER TABLE clientes ADD CONSTRAINT unique_email UNIQUE (email);

-- Para eliminar restricciones existentes.
ALTER TABLE clientes DROP FOREIGN KEY fk_nombre;
