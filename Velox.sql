create database velox;

create table alumnos(id_usu int(6) not null auto_increment, nombre varchar(30), appat varchar(30), apmat varchar(30), correo varchar(75), edad int(2), semestre int(1), genero varchar(25),
primary key(id_usu), key(edad), key(genero), key(semestre));

create table usuario(id_usu int(6) not null, nom_usu varchar(30), correo varchar(30), pass_usu varchar(30), num_reportes int(1),
primary key(id_usu), key(num_reportes));

create table reportes(id_usu int(6) not null, primary key(id_usu));

