-- Recuerda que primero tienes que indicar con qué BD quieres trabajar.
USE empresa;

-- Un alias es un nombre temporal que puedes dar a una columna o tabla en tu consulta.
-- Usa la palabra clave AS para asignar un alias a una columna y hacer los nombres más manejables.

SELECT nombre AS primer_nombre FROM clientes; -- Cambiamos el nombre de la columna "nombre" por "primer_nombre"

-- También puedes usar alias para tablas, especialmente útil en consultas con múltiples tablas.
-- Para darle un alias a una tabla usamos también "AS".
SELECT nombre AS primer_nombre, clienteID AS id_cliente 
FROM clientes AS cl
INNER JOIN compras AS c ON cl.id = c.clienteID;

-- RECOMENDACIÓN: Usa alias para hacer tus consultas más legibles, en subconsultas o cuando unes varias tablas.
-- No es obligatorio pero te ayudará a cometer menos errores. Y a organizar mucho mejor el código