# Consultas en SQL

## Consultas a SERVER

> Instrucciones vistas 

    -- listar las bases de datos
    SHOW DATABASES; 

    -- listar las tablas de una base
    SHOW TABLES;  

    -- mostrar la estructura de una tabla
    DESCRIBE nombreTabla;

> Para hacer consultas al server utilizamos
> la palabra reservada **SELECT**

    -- consultar la fecha actual  
    SELECT now(), current_date();  

    -- consultar fecha actual, fecha actual + 30 días  
    SELECT current_date(), DATE_ADD( curdate(), INTERVAL 30 day );

## Consultas a tablas de una base

> Para consultas a tablas de una base utilizamos
> el comando **SELECT** y además debemos espicificar 
> a qué tabla queremos consultar con la palabra reservada **FROM**
 
> Sint´´axis: 

    SELECT * FROM nombreTabla;  

> Ejemplo pr´´actico: 

    SELECT * FROM destinos;

> Si queremos traer sólo los datos de algunas columnas

> Sintáxis: 

    SELECT nCol2, nCol4  
      FROM nombreTabla;

> Ejemplo práctico: 

    SELECT destNombre, destPrecio    
      FROM destinos;

## Orden de los redsultados: 

> Para ordenar los restultados utilizamos 
> la palabra reservada **ORDER BY**

> Ejemplo práctico: 

    SELECT destNombre, destPrecio    
      FROM destinos  
      ORDER BY destPrecio;  

    SELECT destNombre, destPrecio    
        FROM destinos  
        ORDER BY destNombre;  

    SELECT destNombre, destPrecio  
        FROM destinos  
        ORDER BY idRegion, destPrecio;  

## Filtrado de registros  

> Filtrar registros signifa traer sólamente 
> los registros que cumplan una condicion;

> Para poder implamentar un filtro, 
> utilizamos la palabra reservada **WHERE** 

> Ejemplo práctico: 
> traer nombre y precio de la tabla destinos
> con un precio que no supere los 8000

  SELECT destNombre, destPrecio  
  FROM destinos  
  WHERE destPrecio <= 8000;

> traer nombre y precio de la tabla destinos
> con un precio que no supere los 8000 
> y no sea menos a 6600  

    SELECT destNombre, destPrecio   
    FROM destinos  
    WHERE destPrecio >= 6600;  
   
    SELECT destNombre, destPrecio  
    FROM destino  
    WHERE destPrecio  
    BETWEEN 6600 AND 8000;

> traer nombre y precio de la tabla destinos
> de la región 5

    SELECT destNombre, destPrecio  
      FROM destinos  
      WHERE idRegion = 5;

> traer nombre y precio de la tabla destinos
> de la región 5 y además de la región 3

    SELECT destNombre, destPrecio  
    FROM destinos  
    WHERE idRegion = 5  
     OR idRegion = 3;

    SELECT destNombre, destPrecio  
      FROM destinos  
      WHERE idRegion IN( 5, 3 );
    