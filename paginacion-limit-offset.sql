-- Recuerda que primero tienes que indicar con qué BD quieres trabajar.
USE empresa;

/*
LIMIT y OFFSET permite controlar la cantidad de resultados en tus consultas SQL. Es muy usado para paginar el resultado en aplicaciones
que tienen millones de registros.
*/

-- LIMIT se usa para especificar el número máximo de filas que quieres obtener en tu consulta.
-- Por defecto va a usar la primera columna para ordenar. Esto es importante porque si cambiamos el ordenamiento lo que devuelve la consulta puede cambiar,

SELECT * FROM clientes LIMIT 3;


-- OFFSET se usa junto con LIMIT para saltar un número específico de filas antes de empezar a devolver los resultados.
-- En este caso omite los 2 primeros elementos y muestra los siguientes 3 porque tenemos limit 3.

SELECT * FROM clientes LIMIT 3 OFFSET 2;

-- Recuerda que los resultados se ordenan de arriba hacia abajo. Usa ORDER BY para definir el orden específico de los datos.
SELECT * FROM clientes ORDER BY nombre ASC LIMIT 3 OFFSET 2;

-- #RECOMENDACIÓN: Te recomiendo usar LIMIT y OFFSET para paginar resultados en tu aplicación. 
-- O cuando tienes millones de registros y la consulta es muy lenta