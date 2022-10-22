create database bancoSolar;

create table usuarios(
	id serial primary key,
	nombre varchar(50),
	balance float check (balance >= 0)
);

create table transferencias (
	id serial primary key,
	emisor int,
	receptor int,
	monto float,
	fecha timestamp,
	foreign key (emisor) references usuarios (id),
	foreign key (receptor) references usuarios (id)
);

select * from usuarios;
select * from transferencias;