# Consultas a dos o más tablas

> Cuando queremos traer datos de dos o más tablas, 
> debemos relacionar las tablas.
> Para ello tenemos dos técnicas.

## Table Relation
> La técnica **table relation** se logra mencionando
> en el "table list" ( después del FROM ) las tablas
> necesarias (separadas con comas)
> y luego mediante un filtro igualamos la columna en común.


> Sintáxis: 

    SELECT colTabla1, colTabla1, colTabla2  
      FROM tabla1, tabla2  
      WHERE  tabla1.foreignKey = tabla2.primaryKey; 

> Ejemplo práctico: 

    SELECT prdNombre, prdPrecio, mkNombre  
      FROM productos, marcas  
      WHERE productos.idMarca = marcas.idMarca;  


    SELECT destNombre, destPrecio, regNombre  
      FROM destinos, regiones  
      WHERE destinos.idRegion = regiones.idRegion;  


    SELECT prdNombre, prdPrecio, mkNombre, catNombre  
      FROM productos, marcas, categorias  
      WHERE productos.idMarca = marcas.idMarca  
      AND productos.idCategoria = categorias.idCategoria;  
  
## Técnica usando **JOIN** 
> En la técninca **JOIN** sólo mencionamos la tabla
> principal en el tabla list ( después del FROM )
> y luego para mencionar la tabla secundaria, 
> utilizamos la palabra reservada **JOIN**  
> y finalizamos igualando la columna en común
> después de la palanra **ON** 

> Sintáxis:

    SELECT colTabla1, colTabla1, colTabla2  
      FROM tabla1  
        JOIN tabla2    
        ON  tabla1.foreignKey = tabla2.primaryKey; 

> Ejemplo práctico:

    SELECT prdNombre, prdPrecio, mkNombre  
      FROM  productos  
      JOIN  marcas  
      ON  productos.idMarca = marcas.idMarca;  


    SELECT destNombre, destPrecio, regNombre
      FROM destinos
      JOIN regiones
       ON  destinos.idRegion = regiones.idRegion;
