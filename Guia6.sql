--Guia 6
--Procedimiento almacenado insercion
create procedure InsertarCliente
	@nombre_cliente varchar(100),
	@apellido_cliente varchar(100),
	@DUI varchar(10),
	@ISSS int,
	@telefono varchar(10),
	@email varchar(100),
	@id_direccion int
as
begin
	insert into Clientes values
	(@nombre_cliente,
	@apellido_cliente,
	@DUI,
	@ISSS,
	@telefono,
	@email,
	@id_direccion);

	select*from Clientes
end;

execute InsertarCliente
	@nombre_cliente='Ramon',
	@apellido_cliente='Perez Gil',
	@DUI='75839482-5',
	@ISSS='345320879',
	@telefono='9889-8998',
	@email='ramon@gmail.com',
	@id_direccion='5';

-- Procedimiento almacenado de consulta
create procedure ObtenerDireccionCompleta
as
begin
	select cli.nombre_cliente, dir.id_direccion, dis.nombre_distrito, mun.nombre_municipio, dep.nombre_departamento
	from Direcciones dir
	inner join Distrito dis on dis.id_distrito=dir.id_distrito
	inner join Municipio mun on mun.id_municipio=dis.id_municipio
	inner join Departamento dep on dep.id_departamento=mun.id_departamento
	inner join Clientes cli on cli.id_direccion=dir.id_direccion
end;

execute ObtenerDireccionCompleta;















