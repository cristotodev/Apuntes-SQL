-- Recuerda que primero tienes que indicar con qué BD quieres trabajar.
USE empresa;

-- Obtener los clientes con nombre comparte.
SELECT * FROM clientes WHERE nombre = 'comparte';

-- Obtener los clientes con sueldo mayor a 6000
SELECT * FROM clientes WHERE sueldo > 6000;

-- Obtener los clientes que su nombre empieza por 's';
SELECT * FROM clientes WHERE nombre LIKE 's%'; --El % indica cualquier caracter

-- Obtener los clientes que contenga 'a'
SELECT * FROM clientes WHERE nombre LIKE '%a%';

-- Obtener los clientes que su nombre no empieza por 'c';
SELECT * FROM clientes WHERE nombre NOT LIKE 'c%';

-- Obtener los clientes que su nombre tenga solo 4 caracteres
SELECT * FROM clientes WHERE nombre LIKE '____'; -- El guión bajo (_) indica un caracter. Al poner 4 seguido preguntar por 4 caracteres.

-- Obtener los clientes que su nombre es 'cristotodev' Y (AND) su sueldo sea mayor que 100
SELECT * FROM clientes WHERE nombre = 'cristotodev' AND sueldo > 100;

-- Obtener los clientes que su nombre es 'cristotodev' O (OR) su sueldo sea mayor a 100
SELECT * FROM clientes WHERE nombre = 'cristotodev' OR sueldo > 100;

-- Obtener los clientes que el sueldo está entre 5000 y 7000
-- BETWEEN busca un rango entre dos valores. (Se usa mucho para fechas y números)
SELECT * FROM clientes WHERE sueldo BETWEEN 5000 AND 7000;

-- Obtener los clientes que su nombre sea "comparte", "sigueme" o "dale like".
-- Con IN podemos pasar un rango de valores para que compruebe si es alguno de esos.
SELECT * FROM clientes WHERE nombre IN ('comparte', 'sigueme', 'dale like');

-- Obtener los clientes que su email no sea 'cristotodev@dev.com'
-- NOT niega la comparación.
SELECT * FROM clientes WHERE NOT email = 'cristotodev@dev.com';

-- Para negar también podemos usar <> (distinto)
SELECT * FROM clientes WHERE email <> 'cristotodev@dev.com';

-- Obtener los clientes que la fecha_nacimiento sea null. Es decir no tengan fecha de nacimiento.
-- IS NULL es la forma de indicar que un registro no tenga valores en esa columna.
SELECT * FROM clientes WHERE fecha_nacimiento IS NULL;

