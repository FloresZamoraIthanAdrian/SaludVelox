create database velox;

use velox;

create table alumnos(
id_alumno int not null auto_increment, 
nombre varchar(30), 
appat varchar(30), 
apmat varchar(30), 
correo varchar(75), 
edad int, 
semestre int, 
genero varchar(25),
primary key(id_alumno), 
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
foreign key (id_usu) references alumnos(id_alumno),
key(num_reportes));

create table reportes(
id_reporte int not null,
 primary key(id_reporte),
 foreign key (id_reporte) references usuario(id_usu)
 );
 
 create table enfermedades(
 id_enfermedad int not null,
 depresion tinyint(0),
 ansiedad tinyint(0),
 tc_alimentaria tinyint(0),
 t_conducta tinyint(0),
 tda_tdah tinyint(0),
 dislexia tinyint(0),
 autismo tinyint(0),
 bipolaridad tinyint(0),
 asperger tinyint(0),
 t_obsesivo_compulsivo tinyint(0),
 primary key(id_enfermedad),
 foreign key (id_enfermedad) references alumnos(id_alumno),
 key(depresion),
 key(ansiedad),
 key(ansiedad),
 key(tc_alimentaria),
 key(t_conducta),
 key(tda_tdah),
 key(dislexia),
 key(autismo),
 key(bipolaridad),
 key(asperger),
 key(t_obsesivo_compulsivo)
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
describe enfermedades;

select * from alumnos;
select * from usuario;
select * from reportes;

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

DELIMITER $$
CREATE PROCEDURE datosUsuarioId(
id_usu int
)
BEGIN
select * from alumnos where id_alumno = id_usu;
select * from usuario where id_usu = id_usu;
select * from enfermedades where id_enfermedad = id_usu;
END $$
DELIMITER 

call datosUsuarioId(1);