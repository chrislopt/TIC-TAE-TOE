--creacion e insercicion de datos en la base de datos del taller 1

create table año(
	codigo	char(5) not null,
	constraint pk_semestre primary key (codigo));
	
create table semestre(
	numero	char(10) not null,
	constraint pk_cliente primary key (numero));

create table alumno(
	denominacion varchar(100) not null,
	nombre	varchar(10) not null,
	constraint pk_departamento primary key (denominacion));

create table edificio(
	codigo_proyecto	char(5) not null,
	numero numeric(4,2) not null,
	constraint fk_nivel_alumno foreign key (codigo_alumno)
	references alumno(codigo) on delete cascade on update cascade);

create table nivel(
	nombre varchar(100) not null,	
	constraint pk_nivel primary key (nombre));
	
create table grado(
	codigo	char(10) not null,
	nombre varchar(100) not null,
	constraint pk_grado primary key (codigo),
	references aula(codigo) on delete restrict on update cascade deferrable);


alter table aula add constraint fk_aula_responsable foreign key (dui_aula_representante) references responsable(DUI) on delete restrict on update cascade;
	
create table aula(
	nombre varchar(100) not null,
	codigo	char(10) not null,
	constraint pk_aula primary key (nombre,codigo),
	
create table seccion(
	codigo_seccion	char(5) not null,
	constraint pk_seccion primary key (codigo_seccion),
	references aula(codigo) on delete cascade on update cascade);

create table aulaXseccion(
	codigo_aulaXseccion	char(5) not null,
	nombre varchar(100) not null,
	constraint pk_aulaXseccion primary key (codigo_aulaXseccion,nombre),
	);	

create table clase(
	codigo_proyecto	char(5) not null,
	url varchar(100) not null,
	num_tablas smallint not null check (num_tablas >0),
	constraint pk_web primary key (codigo_proyecto),
	constraint fk_web_proyecto foreign key (codigo_proyecto)
	references proyecto(codigo) on delete cascade on update cascade);

create table asignatura(
	codigo_asignatura	char(5) not null,
	num_clientes smallint not null check (num_clientes>0),
	constraint pk_asignatura primary key (codigo_asignatura),
	

create table lab/centroComputo(
	codigo	char(5) not null,
	constraint pk_lab/cc primary key (codigo),
	constraint fk_lab/cc_asignatura foreign key (codigo_asignatura)
	references bitacora(codigo) on delete cascade on update cascade);

create table bitacora(
	codigo	char(10) not null,
	constraint pk_bitacora primary key (codigo),

	);

create table responsable(
	DUI_responsable char(10) not null,
	constraint pk_responsable primary key (DUI_responsable),
	constraint fk_responsable_bitacora foreign key (DUI_responsable) references bitacora(codigo) on delete cascade on update cascade
	);

create table empleado(
	DUI_empleado	char(10) not null,
	telefono_UCA varchar(20)not null
	constraint pk_empleado primary key (DUI_empleado),
	constraint fk_empleados_docentes foreign key (DUI_empleado) references empleado(DUI) on delete cascade on update cascade
	);

create table talonario(
	correlativo	char(5) not null,
	
	);	
	
create table pago
	codigo	char(5) not null,
	numero smallint not null,
	descripcion varchar(100) not null,


create table subvencion(
	codigo	char(5) not null,
	valor	char(10) not null,
	);	

create table docente(
	nombre varchar(20) not null,
	DUI_docente	char(10) not null,
	constraint pk_tiene primary key (nombre,DUI_docente),
	);

create table profesor(
	nombre varchar (20) not null,
	DUI_profesor char (10) not null,
);

create table estudiante(
	nombre varchar (20) not null,
	carne_estudiante char (10) not null
);
create table carrera(
	nombre varchar (20) not null,
	codigo_carrera char (10) not null
);
	
	

drop table if exists año cascade;
drop table if exists semestre cascade;
drop table if exists alumno cascade;
drop table if exists edificio cascade;
drop table if exists nivel cascade;
drop table if exists grado cascade;
drop table if exists aula cascade;
drop table if exists seccion cascade;
drop table if exists aulaXseccion cascade;
drop table if exists clase cascade;
drop table if exists asignatura cascade;
drop table if exists atiende cascade;
drop table if exists lab/centroComputo cascade;
drop table if exists bitacora cascade;
drop table if exists responsable cascade;
drop table if exists empleado cascade;
drop table if exists talonario cascade;
drop table if exists pago cascade;
drop table if exists subvencion cascade;
drop table if exists docente cascade;
drop table if exists profesor cascade;
drop table if exists estudiante cascade;
drop table if exists carrera cascade;

