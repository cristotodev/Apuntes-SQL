-- Recuerda que primero tienes que indicar con qué BD quieres trabajar.
USE empresa;

/*
Una clave primaria es una columna (o combinación de columnas) especial en una tabla de base de datos relacional. 
Su función principal es identificar de forma exclusiva cada registro en la tabla. Algunas características clave son:

1. Unicidad: Cada fila debe tener un valor único en la clave primaria.
2. No nulos: No puede contener valores nulos.
3. Acceso rápido: Facilita la búsqueda y acceso a los datos.
4. Evita duplicados: Previene registros duplicados y confusión en la base de datos.
5. Actualización y eliminación: Permite operaciones específicas en registros

#NOTA: Solo puedes tener una clave primaria por tabla.
*/

/*
Para crear una clave primaria cuando estamos creando una tabla lo hacemos con PRIMARY KEY 
en la columna que queremos que sea clave primaria.
*/
CREATE TABLE empleados (
	id int PRIMARY KEY,
	nombre varchar(50) NOT NULL,
	email varchar(100)
)

-- Si la tabla ya está creada lo podemos hacer ALTER TABLE ADD PRIMARY KEY
ALTER TABLE empleados ADD PRIMARY KEY (id);
ALTER TABLE empleados ADD CONSTRAINT empleados_pk PRIMARY KEY (id); -- De esta forma le damos un nombre a la clave primaria

/*
Podemos crear claves primarias compuestas por varias columnas. En este ejemplo id y nombre serán la clave primaria.
Lo que indica que no podemos tener más de un empleado con ese id y nombre.
*/
ALTER TABLE empleados ADD PRIMARY KEY (id, nombre);
ALTER TABLE empleados ADD CONSTRAINT empleados_id_nombre_pk PRIMARY KEY (id, nombre); -- De esta forma le damos un nombre a la clave primaria

-- Para borrar una clave primaria usamos ALTER TABLE tabla DROP PRIMARY KEY
ALTER TABLE empleados DROP PRIMARY KEY;
