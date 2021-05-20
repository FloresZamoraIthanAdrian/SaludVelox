create database velox;

use velox;

create table alumnos(
id_usu int not null auto_increment, 
nombre varchar(30), 
appat varchar(30), 
apmat varchar(30), 
correo varchar(75), 
edad int, 
semestre int, 
genero varchar(25),
primary key(id_usu), 
key(edad), 
key(genero), 
key(semestre));

create table usuario(
id_usu int not null auto_increment, 
nom_usu varchar(30), 
correo varchar(30), 
pass_usu varchar(30), 
num_reportes int,
primary key(id_usu), 
foreign key (id_usu) references alumnos(id_usu),
key(num_reportes));

create table reportes(
id_usu int not null,
 primary key(id_usu),
 foreign key (id_usu) references usuario(id_usu)
 );
 
 create table enfermedades(
 id_usu int not null,
 padecimiento varchar(75),
 primary key(id_usu),
 foreign key (id_usu) references alumnos(id_usu),
 key(padecimiento)
 );
 
 create table chat(
 id_usu int not null,
 msj varchar(150) not null,
 primary key(id_usu),
 foreign key (id_usu) references usuario(id_usu)
 );

describe alumnos;
describe usuario;
describe reportes;

select * from alumnos;
select * from usuario;

DELIMITER $$
CREATE PROCEDURE PruebaInsertar2
(
in nombre varchar(30),
in appat varchar(30),
in apmat varchar(30),
in correo varchar(75),
in edad int,
in semestre int,
in genero varchar(25),
in nom_usu varchar(30),
in correo2 varchar(75),
in pass_usu varchar(30)
)
BEGIN
insert into alumnos(nombre, appat, apmat, correo, edad, semestre, genero)
values (nombre, appat, apmat, correo, edad, semestre, genero);
insert into usuario(nom_usu, correo, pass_usu)
values (nom_usu, correo2, pass_usu);
END $$
DELIMITER 

call PruebaInsertar2('Owen2', 'Flores', 'Zamora', 'owen@gmail.com',  21, 4, 'Masculino', 'alecxei2', 'owen@hotmail.com', '9876542');
