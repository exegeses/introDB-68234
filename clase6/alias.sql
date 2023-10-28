-- alias (renombrar un campo o una tabla - para el reporte)

-- traer nombre de producto, precio,
-- nombre de la marca y nombre de la categoría

### sintáxis table relation
SELECT prdNombre as Producto, prdPrecio as Precio,
       mkNombre as Marca, catNombre as Categoria
    FROM productos as p, marcas as m, categorias as c
    WHERE p.idMarca = m.idMarca
      AND p.idCategoria = c.idCategoria;

### sintáxis tulizando JOIN
SELECT prdNombre as Producto, prdPrecio as Precio,
       mkNombre as Marca, catNombre as Categoria
    FROM productos as p
     JOIN marcas m
         ON p.idMarca = m.idMarca
     JOIN categorias c
         ON p.idCategoria = c.idCategoria
