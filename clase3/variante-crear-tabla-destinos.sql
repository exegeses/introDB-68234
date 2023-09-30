
CREATE TABLE destinos
(
    idDestino smallint unsigned auto_increment not null,
    destNombre varchar(100) not null,
    idRegion tinyint unsigned not null,
    destPrecio decimal(10,2) unsigned not null,
    destAsientos tinyint unsigned not null,
    destDisponibles tinyint unsigned not null,
    destActivo boolean not null default(1),
    primary key ( idDestino ),
    unique ( destNombre ),
    foreign key (idRegion)
        references regiones (idRegion)
);
