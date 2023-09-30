# creación de tabla regiones

CREATE TABLE regiones
(
    idRegion tinyint unsigned auto_increment primary key not null,
    regNombre varchar(45) unique not null
);