create database bibliotecaSuper;

create table persona(
	documento numeric primary key,
	correo varchar(200) not null,
	telefono varchar(20) not null,
	direccion varchar(100) not null,
	nombre varchar(100) not null
);

create table libro(
	isbn numeric primary key,
	titulo varchar(100) not null,
	autor varchar(100) not null,
	genero varchar(100) not null,
	anio varchar(10) not null
);

create table copiaLibro(
	copiaID serial primary key,
	isbn numeric not null,
	estado varchar(50) not null,
	foreign key (isbn) references libro(isbn)
);

create table prestamo(
	prestamoID serial primary key,
	personaID numeric not null,
	copiaID integer not null,
	fechaPrestamo date not null,
	fechaDevolucion date not null,
	foreign key (personaID) references persona(documento),
	foreign key (copiaID) references copiaLibro(copiaID)
);

create table multa(
	multaID serial primary key,
	monto decimal(10,2) not null,
	pagada boolean not null,
	prestamoID integer not null,
	foreign key (prestamoID) references prestamo(prestamoID)
);