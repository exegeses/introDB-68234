# Consultas de coincidencia ( que contenga )

> Las consultas de coincidencia se utilizan para traer información
> dónde como filtro vamos a explicitar que contenga cierta 
> cadena de caractéres.

> Traer nombre, precio, descripcion
> de la tabla productos 
> dónde contenga la cadena 'Bluetooth' 
> en la columna descripcion

    SELECT prdNombre, prdPrecio, prdDescripcion 
      FROM productos
    WHERE prdDescripcion LIKE '%Bluetooth%';

> Utilizamos la palabra reservada **LIKE**
> utilizamos el caracter **%** como una especie de 'comodín'
> que podría ocupar uno, varios o hasta ningún caracter.

> Comodín de 1 (un) s´´olo caracter

    SELECT prdNombre, prdPrecio, prdDescripcion 
      FROM productos
      WHERE prdNombre LIKE '_40%';

> Buscar una c adena de 8 caractéres de longitud

    SELECT prdNombre, prdPrecio, prdDescripcion
    FROM productos
    WHERE prdNombre LIKE '________';