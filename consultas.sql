-- Recuerda que primero tienes que indicar con qué BD quieres trabajar.
USE empresa;

-- Para mostrar todos los registro de una tabla lo podemos hacer con SELECT * FROM [nombre de la tabla]
SELECT * FROM clientes;

-- Si quieres puedes traer solamente las columnas que necesitas sustituyendo el * por la columna o columnas.
SELECT nombre, email, sueldo FROM clientes;

-- Para traer registros específicos de una tabla usamos la cláusula WHERE aquí tienes varios ejemplos.
SELECT nombre, email, sueldo FROM clientes c 
WHERE sueldo > 6000; -- Trae todos los lcientes que su sueldo sea mayor a 6000

SELECT nombre, email, sueldo FROM clientes c 
WHERE sueldo > 6000 AND nombre = 'Comparte'; -- Trae todos los lcientes que su sueldo sea mayor a 6000 y su nombre es Comparte

SELECT nombre, email, sueldo FROM clientes c 
WHERE sueldo > 6000 AND nombre <> 'Comparte'; -- Trae todos los lcientes que su sueldo sea mayor a 6000 y su nombre es distinto a Comparte

SELECT * FROM clientes c WHERE sueldo > 6000
OR nombre = 'Cristotodev'; -- Muestra todos los clientes que su sueldo sea mayor a 6000 o su nombre es Cristotodev

-- Puedes cambiar el orden por defecto del resultado de la consulta. Esto se realiza con ORDER BY [columna/s] [DESC o ASC]
-- DESC -> De forma descendente. ASC -> De forma ascendente
SELECT * FROM clientes ORDER BY sueldo DESC;
SELECT * FROM clientes ORDER BY sueldo ASC;

SELECT nombre, email, sueldo FROM clientes c 
WHERE sueldo > 6000 AND nombre <> 'Comparte' ORDER BY sueldo DESC;