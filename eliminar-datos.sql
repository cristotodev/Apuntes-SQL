-- Recuerda que primero tienes que indicar con qué BD quieres trabajar.
USE empresa;

-- Para eliminar registros de la tabla clientes en MySQL, puedes utilizar la sentencia DELETE de varias maneras.

-- Eliminar un Registro Específico
-- Para eliminar un registro específico, puedes usar la cláusula WHERE para especificar la condición que debe cumplir el registro para ser eliminado.
DELETE FROM clientes WHERE id = 1;

-- Eliminar Todos los Registros
-- Si deseas eliminar todos los registros de la tabla, simplemente omite la cláusula WHERE.
DELETE FROM clientes;

-- Eliminar Registros Basados en una Condición
-- Puedes eliminar registros que cumplan con una condición específica. Por ejemplo, para eliminar todos los clientes que no tienen una fecha de nacimiento registrada, puedes hacer lo siguiente:
DELETE FROM clientes WHERE fecha_nacimiento IS NULL;

-- Eliminar Registros Usando LIMIT
-- Si solo deseas eliminar un número limitado de registros, puedes combinar DELETE con LIMIT. Por ejemplo, para eliminar solo los primeros 3 registros de la tabla:
DELETE FROM clientes ORDER BY id LIMIT 3;

-- Eliminar Registros de Tablas Relacionadas
-- Para eliminar registros de tablas relacionadas, puedes usar DELETE JOIN. Sin embargo, este ejemplo asume que tienes una tabla relacionada llamada pedidos que tiene una clave foránea que hace referencia a clientes.id.
DELETE c FROM clientes c INNER JOIN pedidos p ON c.id = p.cliente_id;

