# Crear tablas dentro de una base de datos

> Para crear una tabla utilizamos 
> el comando **CREATE TABLE**

> Sintáxis: 

    CREATE TABLE nombreTabla  
    (  
        nombreColumna  tipo características,  
        nombreColumna2 tipo características,  
        nombreColumna3 tipo características,  
        nombreColumna4 tipo características  
    );  

> Ejemplo práctico: 

    CREATE TABLE productos_apple  
    (  
        id tinyint unsigned auto_increment primary key not null,  
        nombre varchar(100) unique not null,  
        precio decimal(10,2) unsigned not null,  
        stock tinyint unsigned not null  
    );  
