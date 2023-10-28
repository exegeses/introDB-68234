# Vistas

-- Una vista es una consulta
-- que podemos almacenar dentro nuestra base de datos
/*** PARECE una tabla temporal, pero no lo es ***/

CREATE VIEW consulta_precio
    AS
    SELECT idProducto AS id,
           prdNombre AS Producto,
           prdPrecio AS 'Precio Contado',
           prdPrecio * 1.05 AS 'Precio Lista',
           mkNombre AS Marca,
           catNombre AS Categoria
      FROM productos AS p
        JOIN marcas m
            ON p.idMarca = m.idMarca
        JOIN categorias c
            ON p.idCategoria = c.idCategoria;

