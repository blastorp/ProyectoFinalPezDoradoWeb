--Creamos la basede datos
Create database BDElPezDorado
go 

use BDElPezDorado
go

--Creamos las tablas
Create table Empleados
(
IdEmpleado int identity (1,1) primary key,
NombreEmpleado varchar (50) not null,
ApellidoEmpleado varchar(50) not null ,
IdentificacionEmpleado int not null unique,
CorreoElectronicoEmpleado varchar (100) not null unique,
UsuarioEmpleado varchar (30) unique not null,
ContrasenaUsuario varchar (20) unique not null,
)

Create table Servicios
(
IdServicio int identity (1,1) primary key,
Servicio varchar (100) not null,
CostoDeServicios money not null,
)

Create table Provincias
(
IdProvincia int identity(1,1) primary key not null,
Provincia varchar(30) not null
)

Create table Cantones
(
IdCanton int identity (1,1) primary key,
Canton varchar(30) not null,
NumeroProvincia int not null
)

Create table Clientes
(
IdCliente int identity (1,1) primary key,
Nombre varchar (50) not null,
Apellidos varchar(50) not null ,
Identificacion varchar(50) not null unique,
Telefono int not null,
CorreoElectronico varchar (100) not null unique,
Distrito varchar (50)not null,
IdProvincia int foreign key references Provincias(IdProvincia),
IdCanton int references Cantones(IdCanton)
)

Create table Mascotas
(
IdMascotas int identity (1,1) primary key,
NombreMascota varchar (50) not null,
PesoDeMascota int not null,
EstadoDeMascota varchar (100) not null,
FechaDeNacimientoMascota date not null,
RazaDeMascota Varchar (30),
TipoDeMascota varchar(30) not null ,
IdCliente int foreign key references Clientes(IdCliente)
)

Create table Facturacion
(
IdFacturacion int identity (1,1) primary key,
FechaDeIngreso date,
FechaDeSalida date,
IdMascota int foreign key references Mascotas(IdMascotas),
IdServicio int foreign key references Servicios(IdServicio)
)

--Ingresamos los datos de Provincias.
Insert into Provincias(Provincia)
Values('San Jose'),('Alajuela'),('Cartago'),('Heredia'),('Puntarenas'),('Guanacaste'),('Limon')

--Ingresamos los datos de cantones.
Insert into Cantones(Canton,NumeroProvincia)
Values('San Jose','1'),('Acosta','1'),('Alajuelita','1'),('Aserri','1'),('Curridabat','1'),
	  ('Desamparados','1'),('Dota','1'),('Escazu','1'),('Goicoechea','1'),('Leon Cortes','1'),
	  ('Montes de Oca','1'),('Mora','1'),('Moravia','1'),('Perez Zeledon','1'),('Puriscal','1'),
	  ('Santa Ana','1'),('Tarrazu','1'),('Tibas','1'),('Turrubares','1'),('Vazques de Coronado','1'),
	  ('Alajuela','2'),('Atenas','2'),('Grecia','2'),('Guatuso','2'),('Los Chiles','2'),('Naranjo','2'),
	  ('Orotina','2'),('Palmares','2'),('Poas','2'),('Rio Cuarto','2'),('San Carlos','2'),
	  ('San mateo','2'),('San Ramon','2'),('Sarchi','2'),('Upala','2'),('Zarcero','2'),
	  ('Cartago','3'),('Alvarado','3'),('El Guarco','3'),('Jimenez','3'),
	  ('La Union','3'),('Oreamuno','3'),('Paraiso','3'),('Turrialba','3'),
	  ('Heredia','4'),('Barva','4'),('Belen','4'),('Flores','4'),('San Isidro','4'),
	  ('San Pablo','4'),('San Rafael','4'),('Santa Barnara','4'),('Santo Domingo','4'),('Saraoiqui','4'),
	  ('Puntarenas','5'),('Buenos Aires','5'),('Corredores','5'),('Coto Brus','5'),('Esparza','5'),('Garabito','5'),
	  ('Golfito','5'),('Montes de Oro','5'),('Osa','5'),('Parrita','5'),('Quepos','5'),
	  ('Liberia','6'),('Abangares','6'),('Bagaces','6'),('Canas','6'),('Carrillo','6'),('Hojancha','6'),
	  ('La Cruz','6'),('Nandayure','6'),('Nicoya','6'),('Santa Cruz','6'),('Tilaran','6'),
	  ('Limon','7'),('Guacimo','7'),('Matina','7'),('Pococi','7'),('Siquirres','7'),('Talamanca','7')

--Ver tablas
Select * from Provincias
Select * from Cantones



--Creamos procedimiento almacenados para clientes
	Create proc SpGrabarUsuario
--Parametros
	@Accion smallint,
	@IdUsuario int,
	@CodigoUsuario int,
	@Nombre varchar (50),
	@Apellidos nvarchar (50),
	@Identificacion Varchar(50),
	@Telefono int,
	@CorreoElectronico varchar (100),
	@Distrito varchar (50),
	@Provincia varchar(30),
	@Canton varchar(30)

AS
BEGIN

--Insertar
If @Accion = 1
BEGIN
	insert into Clientes
		(Nombre,Apellidos,Identificacion,Telefono,
		CorreoElectronico,Distrito,IdProvincia,IdCanton)
	Values (@Nombre,@Apellidos,@Identificacion,@Telefono,
			@CorreoElectronico,@Distrito,@Provincia,@Canton)
end 

--Modificar
If @Accion = 2
begin
If @IdUsuario is not null
begin
UPDATE Clientes 
   SET 
	   Nombre = @Nombre,
	   Apellidos = @Apellidos,
	   Identificacion =@Identificacion,
	   Telefono  = @Telefono,
	   CorreoElectronico = @CorreoElectronico,
	   Distrito = @Distrito,
	   IdProvincia = @Provincia,
	   IdCanton = @Canton
  WHERE IdCliente = @CodigoUsuario
 end
 end

 --Eliminar
 If @Accion = 3
 Begin
 Delete from Clientes 
 where IdCliente = @CodigoUsuario
 end

 --Consulta
 If @Accion = 4
 Begin
 Select * from Clientes
 End
 end
 


--Creo un procedimiento almacenado para mascotas x clientes
create proc SpMascotasXClientes
--Parametro
@Identificador int

as
begin
--Consulta
	iF @Identificador is not null
	Begin
	Select C.IdCliente,C.Nombre,M.IdMascotas,M.NombreMascota,M.FechaDeNacimientoMascota,
		   M.EstadoDeMascota,M.TipoDeMascota,M.PesoDeMascota,M.RazaDeMascota
	from Clientes c
	Join Mascotas M on (c.IdCliente = M.IdMascotas)
	end
End



--Creamos procedimiento almacenados de mascotas
	Create proc SpGrabarMascota
--Parametros
	@Accion smallint,
	@Identificador int,
	@Nombre varchar (50),
	@IdCliente int,
	@Peso int,
	@EstadoDeSalud Varchar(30),
	@FechaDeNacimiento date,
	@Raza varchar (30),
	@Tipo varchar (50)

AS
BEGIN

--Insertar
If @Accion = 1
BEGIN
	insert into Mascotas
		(NombreMascota,IdCliente,PesoDeMascota,EstadoDeMascota,
		FechaDeNacimientoMascota,RazaDeMascota,TipoDeMascota)
	Values (@Nombre,@IdCliente,@Peso,@EstadoDeSalud,
			@FechaDeNacimiento,@Raza,@Tipo)
end 

--Modificar
If @Accion = 2
begin
If @Identificador is not null
begin
UPDATE Mascotas 
   SET 
	NombreMascota=@Nombre,
	IdCliente=@IdCliente,
	PesoDeMascota=@Peso,
	EstadoDeMascota=@EstadoDeSalud,
	FechaDeNacimientoMascota=@FechaDeNacimiento,
	RazaDeMascota=@Raza,
	TipoDeMascota=@Tipo
  WHERE  IdMascotas = @Identificador
 end
 end

 --Eliminar
 If @Accion = 3
 Begin
 Delete from Mascotas 
 where IdMascotas = @Identificador
 end

 --Consulta
 If @Accion = 4
 Begin
 Select * from Mascotas
 End
 end
 

 --Creo un procedimiento almacenado para facturacion
create proc SpGrabarFacturacion
--Parametros
	@Accion smallint,
	@IdMascota int,
	@IdServicio int,
	@FechaIngreso date,
	@FechaSalida date
AS
BEGIN

--Insertar
If @Accion = 1
BEGIN
	insert into Facturacion
		(IdMascota,IdServicio,FechaDeIngreso,FechaDeSalida)
	Values (@IdMascota,@IdServicio,@FechaIngreso,@FechaSalida)
end 

--Consulta
If @Accion = 2
Begin
	Select M.IdMascotas,S.IdServicio,F.FechaDeIngreso,F.FechaDeSalida,S.CostoDeServicios
	from Mascotas M,Facturacion f,Servicios S
end
end



 --Creo un procedimiento almacenado para servicios
create proc SpGrabarServicios
--Parametros
	@Accion smallint,
	@Servicio varchar (100),
	@CosteServicio money,
	@Identificador int
AS
BEGIN

--Insertar
If @Accion = 1
BEGIN
	insert into Servicios
		(Servicio,CostoDeServicios)
	Values (@Servicio,@CosteServicio)
end 

--Consulta
If @Accion = 2
begin
If @Identificador is not null
begin
UPDATE Servicios 
   SET 
	Servicio=@Servicio,
	CostoDeServicios=@CosteServicio
  WHERE  IdServicio = @Identificador
 end
 end

  --Eliminar
 If @Accion = 3
 Begin
 Delete from Servicios 
 where IdServicio = @Identificador
 end

 --Consulta
 If @Accion = 4
 Begin
 Select * from Servicios
 End
 end


  --Creo un procedimiento almacenado para Empleados
create proc SpGrabarEmpleados
--Parametros
	@Accion smallint,
	@Identificador int,
	@NombreEmpleado varchar(50),
	@ApellidoEmpleado varchar (50),
	@IdentificacionEmpleado varchar(100),
	@CorreoElectronicoEmpleado varchar (100),
	@UsuarioEmpleado varchar (30),
	@ContrasenaUsuario varchar (20)
AS
BEGIN

--Insertar
If @Accion = 1
BEGIN
	insert into Empleados
		(NombreEmpleado,ApellidoEmpleado,IdentificacionEmpleado,
		CorreoElectronicoEmpleado,UsuarioEmpleado,ContrasenaUsuario)
	Values (@NombreEmpleado,@ApellidoEmpleado,@IdentificacionEmpleado,
			@CorreoElectronicoEmpleado,@UsuarioEmpleado,@ContrasenaUsuario)
end 

--Consulta
If @Accion = 2
begin
If @Identificador is not null
begin
UPDATE Empleados
   SET 
	NombreEmpleado=@NombreEmpleado,
	ApellidoEmpleado=@ApellidoEmpleado,
	IdentificacionEmpleado=@IdentificacionEmpleado,
	CorreoElectronicoEmpleado=@CorreoElectronicoEmpleado,
	UsuarioEmpleado=@UsuarioEmpleado,
	ContrasenaUsuario=@ContrasenaUsuario
  WHERE  IdEmpleado = @Identificador
 end
 end

  --Eliminar
 If @Accion = 3
 Begin
 Delete from Empleados 
 where IdEmpleado = @Identificador
 end

 --Consulta
 If @Accion = 4
 Begin
 Select * from Empleados
 End
 end



  --Creo un procedimiento almacenado para mostrar Provincias
 Create proc SpProvincias
AS
BEGIN
--Consulta
 Select * from Provincias
end



 --Creo un procedimiento almacenado para mostrar cantones
 Create proc SpCantones
AS
BEGIN
--Consulta
 Select * from Cantones
end