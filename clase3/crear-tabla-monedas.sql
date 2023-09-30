
CREATE TABLE monedas
(
    id tinyint unsigned not null auto_increment primary key,
    exacto decimal(10,2) not null,
    aproximado float(10,2) not null
);

INSERT INTO monedas
    VALUES
        ( DEFAULT, 100.4, 20.4 ),
        ( DEFAULT, -80, 0.0 );