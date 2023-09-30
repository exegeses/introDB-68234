# Insertar datos en una tabla

> Hay 3 maneras de insertar datos en una tabla

## Sintaxis usando **SET** 

> Sintáxis: 

    INSERT INTO nombreTabla  
      SET  
           nombreColumna = valor,
           nombreColumna2 = valor2,
           nombreColumna3 = valor3;


> Ejemplo práctico: 

    INSERT INTO productos_apple    
      SET   
            nombre = 'iPod',  
            precio = 299,  
            stock = 200;

## Sintaxis  **completa** (se mencionan la columnas)

> Sintáxis:

    INSERT INTO nombreTabla  
        ( nombreCol2, nombreCol3, nombreCol5 )    
      VALUES  
        ( valor2, valor3, nombreCol5 );  

> Ejemplo práctico:

    INSERT INTO productos_apple  
        ( nombre, precio, stock )  
      VALUES  
        ( 'iPhone', 399, 300 );  


## Sintaxis  **simplificada** ( NO se mencionan la columnas)

> Sintáxis:

    INSERT INTO nombreTabla  
      VALUES  
        ( DEFAULT, valor, valor, valor );  

> Ejemplo práctico:

    INSERT INTO productos_apple  
      VALUES  
        ( DEFAULT, 'iPad', 499, 250 );