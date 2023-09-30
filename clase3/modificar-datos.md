# Modificación de datos en una tabla

> Para modificar datos en una tabla
> utilizamos el comando **UPDATE**

> Sintáxis: 

    UPDATE nombreTabla  
      SET  nombreCol = valor    
      WHERE colID = valorID;  


> Ejemplo práctico  

    UPDATE destinos    
      SET  destPrecio = 8710  
    WHERE idDestino = 4;

> Aumentar el precio
> un 5% (incluído) al destino 1


    UPDATE destinos  
      SET destPrecio = destPrecio * 1.05  
    WHERE idDestino = 1;

    UPDATE destinos  
      SET destPrecio = destPrecio + ( destPrecio * 5/100 )  
    WHERE idDestino = 1;

