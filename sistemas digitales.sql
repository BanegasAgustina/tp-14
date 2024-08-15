create table articulos(
codigo integer,
nombre varchar(20),
descripcion varchar(30),
precio float,
cantidad integer
);

select * from articulos;

describe articulos;

insert into articulos (codigo, nombre, descripcion, precio,cantidad)
values (1,'impresora','Epson Stylus C45',400.80,20);
insert into articulos (codigo, nombre, descripcion, precio,cantidad)
values (2,'impresora','Epson Stylus C85',500,30);
insert into articulos (codigo, nombre, descripcion, precio,cantidad)
values (3,'monitor','Samsung 14',800,10);
insert into articulos (codigo, nombre, descripcion, precio,cantidad)
values (4,'teclado','ingles Biswal',100,50);
insert into articulos (codigo, nombre, descripcion, precio,cantidad)
values (5,'teclado','español Biswal',90,50);

update articulos set precio=400
where descripcion='Epson Stylus C45';

update articulos set cantidad=100
where nombre='teclado';

update articulos set cantidad=50, precio=550
where codigo=2;

update articulos set cantidad=100
where cantidad=1000;

update articulos set cantidad=100
where cantidad=1000;

select * from articulos;

/*3)*/

create table alumnos(
legajo varchar(4) not null,
documento varchar(8) not null,
apellido varchar(30),
nombre varchar(30),
domicilio varchar(30),
primary key (legajo)
);



insert into alumnos (legajo,documento,apellido,nombre,domicilio)
values('A233','22345345','Perez','Mariana','Colon 234');
insert into alumnos (legajo,documento,apellido,nombre,domicilio)
values('A567','23545345','Morales','Marcos','Avellaneda 348');
insert into alumnos (legajo,documento,apellido,nombre,domicilio)
values('B654','24356345','Gonzalez','Analia','Caseros 444');
insert into alumnos (legajo,documento,apellido,nombre,domicilio)
values('A642','20254125','Torres','Ramiro','Dinamarca 209');
insert into alumnos (legajo,documento,apellido,nombre,domicilio)
values('B509','20445778','Miranda','Carmen','Uspallata 999');
insert into alumnos (legajo,documento,apellido,nombre,domicilio)
values('C777','28111444','Figueroa','Natalia','Sarmiento 856');

select * from alumnos;

INSERT INTO alumnos (legajo, documento, apellido, nombre, domicilio)
VALUES 
('D123', '30123456', 'Lopez', 'Juan', 'Rivadavia 123'),
('D456', '30234567', 'Lopez', 'Juan', 'San Martin 456');

INSERT INTO alumnos (legajo, documento, apellido, nombre, domicilio)
VALUES 
('A233', '31123456', 'Ramirez', 'Laura', 'Belgrano 789');

/*4)*/

CREATE TABLE medicamentos(
    codigo INTEGER AUTO_INCREMENT,
    nombre VARCHAR(20),
    laboratorio VARCHAR(20),
    precio FLOAT,
    cantidad INTEGER,
    PRIMARY KEY (codigo)
);

DESCRIBE medicamentos;

INSERT INTO medicamentos (nombre, laboratorio, precio, cantidad)
VALUES
('Sertal', 'Roche', 5.2, 100),
('Buscapina', 'Roche', 4.10, 200),
('Amoxidal 500', 'Bayer', 15.60, 100);

SELECT codigo, nombre, laboratorio, precio, cantidad
FROM medicamentos;

-- Este intento fallará debido a la duplicación de la clave primaria
INSERT INTO medicamentos (codigo, nombre, laboratorio, precio, cantidad)
VALUES (1, 'Ibuprofeno', 'Pfizer', 3.50, 150);

insert into medicamentos (codigo,nombre, laboratorio,precio,cantidad)
values(12,'Paracetamol 500','Bago',1.90,200);

insert into medicamentos (nombre, laboratorio,precio,cantidad)
values('Bayaspirina','Bayer',2.10,150);

select * from medicamentos;

/*5)*/

CREATE TABLE peliculas(
    codigo INTEGER AUTO_INCREMENT,
    titulo VARCHAR(30) NOT NULL,
    actor VARCHAR(20),
    duracion INTEGER,
    PRIMARY KEY (codigo)
);

DESCRIBE peliculas;

INSERT INTO peliculas (titulo, actor, duracion)
VALUES 
('Mision imposible', 'Tom Cruise', 120),
('Harry Potter y la piedra filosofal', 'Daniel R.', 180),
('Harry Potter y la camara secreta', 'Daniel R.', 190),
('Mision imposible 2', 'Tom Cruise', 150),
('Titanic', 'L. Di Caprio', 220),
('Mujer bonita', 'R. Gere-J. Roberts', 200);

SELECT * FROM peliculas;

INSERT INTO peliculas (codigo, titulo, actor, duracion)
VALUES (NULL, 'Elsa y Fred', 'China Zorrilla', 90);


INSERT INTO peliculas (titulo, actor, duracion)
VALUES (NULL, 'Actor Desconocido', 90);

INSERT INTO peliculas (titulo, actor, duracion)
VALUES ('Mr. Johns', NULL, NULL);

INSERT INTO peliculas (codigo, titulo, actor, duracion)
VALUES (0, '', '', 0);

UPDATE peliculas 
SET duracion = 120 
WHERE duracion IS NULL;

UPDATE peliculas 
SET actor = 'Desconocido' 
WHERE actor IS NULL;

SELECT * FROM peliculas;

UPDATE peliculas 
SET actor = 'Desconocido' 
WHERE actor = '';

DELETE FROM peliculas 
WHERE titulo = '';







