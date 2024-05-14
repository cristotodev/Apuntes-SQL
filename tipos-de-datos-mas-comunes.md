# Tipos de Datos Más Comunes en MySQL
Aquí encontrarás algunos de los tipos más utilizados en mysql. Si estás buscando alguno que no está en la lista aquí tiene un enlace donde encontrarás más información.

[Más tipos de datos](https://dev.mysql.com/doc/refman/8.0/en/data-types.html)

## Tipos de Datos de Cadena (String/Character)

### CHAR(n)
Una cadena de caracteres de longitud fija que puede almacenar hasta `n` caracteres. Si la longitud real de la cadena es menor que `n`, se agregan espacios para completar la longitud.

### VARCHAR(n)
Una cadena de caracteres de longitud variable que puede almacenar hasta `n` caracteres. La longitud real de la cadena se almacena, por lo que solo se utiliza el espacio necesario por la cadena.

### TEXT
Una cadena de caracteres de longitud variable que puede almacenar hasta 2^31-1 bytes (aproximadamente 2GB) de datos de texto. Se utiliza a menudo para almacenar grandes cantidades de datos de texto, como documentos o páginas web.

### TINYTEXT, MEDIUMTEXT, LONGTEXT
Son variantes del tipo TEXT que pueden almacenar diferentes cantidades de datos de texto, desde hasta 255 bytes (TINYTEXT) hasta 4GB (LONGTEXT).

## Tipos de Datos Numéricos

### TINYINT, SMALLINT, MEDIUMINT, INT, BIGINT
Son tipos de datos enteros que permiten almacenar valores numéricos enteros de diferentes rangos. Se utilizan para almacenar números enteros y también como claves primarias autoincrementables.

### DECIMAL, NUMERIC
Permiten almacenar números decimales con precisión y escala especificadas. Son útiles para almacenar valores monetarios o cualquier dato que requiera un alto grado de precisión.

### FLOAT, DOUBLE
Son tipos de datos de punto flotante que permiten almacenar números con decimales. `FLOAT` tiene menos precisión pero es más rápido, mientras que `DOUBLE` ofrece mayor precisión pero consume más espacio.

## Tipos de Datos de Fecha y Hora

### DATE
Almacena fechas en formato YYYY-MM-DD.

### TIME
Almacena horas, minutos y segundos.

### DATETIME
Combina DATE y TIME, almacenando tanto la fecha como la hora.

### TIMESTAMP
Similar a DATETIME, pero con algunas diferencias en el manejo de zonas horarias y la capacidad de almacenar la hora UTC.

## Otros Tipos de Datos

### ENUM
Permite almacenar un valor seleccionado de un conjunto predefinido de cadenas de caracteres.

### SET
Similar a ENUM, pero permite almacenar cero o más valores de un conjunto predefinido de cadenas de caracteres.

### BINARY(n), VARBINARY(n)
Son tipos de datos binarios de longitud fija y variable, similares a CHAR y VARCHAR pero para datos binarios.

### TINYBLOB, BLOB, MEDIUMBLOB, LONGBLOB
Permiten almacenar grandes cantidades de datos binarios.

### SPATIAL
Se utiliza para almacenar información geográfica.

### JSON
Permite almacenar documentos JSON.
