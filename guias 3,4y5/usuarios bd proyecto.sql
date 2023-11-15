use TiendaLacteos;

create role Administrador;
create role Gerente;
create role Bodeguero;
create role Vendedor;
create role Rutero;

create login login_admin
with password ='root';
go
create login login_ger
with password = 'Sanchez1234';
go
create login login_bod
with password = 'Valle1234';
go
create login login_ven
with password = 'Perez1234';
go
create login login_rut
with password = '123456';
go

create user administrador_user
for login login_admin;
go
create user gerente_user
for login login_ger;

create user bodeguero_user
for login login_bod;
go
create user vendedor_user
for login login_ven;
go
create user rutero_user
for login login_rut;

alter role Administrador add member administrador_user;
alter role Gerente add member gerente_user;
alter role Bodeguero add member bodeguero_user;
alter role Vendedor add member vendedor_user;
alter role Rutero add member rutero_user;

grant control on database::TiendaLacteos to Administrador;

grant select, insert, update, delete on dbo.Empleados to Gerente;
grant select, insert, update, delete on dbo.Cargo to Gerente;
grant select, insert, update, delete on dbo.Articulo to Gerente;
grant select, insert, update, delete on dbo.Proveedores to Gerente;
grant select, insert, update, delete on dbo.Venta to Gerente;
grant select, insert, update, delete on dbo.DetalleVenta to Gerente;
grant select, insert, update, delete on dbo.Clientes to Gerente;
grant select, insert, update, delete on dbo.Usuarios to Gerente;
grant select on dbo.CarritoCompras to Gerente;
grant select on dbo.Ingreso to Gerente;
grant select on dbo.DetalleIngreso to Gerente;
grant select on dbo.ExistenciaProducto to Gerente;
grant select on dbo.Departamentos to Gerente;
grant select on dbo.Municipios to Gerente;
grant select on dbo.Distritos to Gerente;
grant select on dbo.Direcciones to Gerente;

grant select, insert, update on dbo.Reservas to Vendedor;
grant select, insert on dbo.Venta to Vendedor;
grant select, insert on dbo.DetalleVenta to Vendedor;
grant select on dbo.Articulo to Vendedor;
grant select on dbo.ExistenciaProducto to Vendedor;
grant select on dbo.CarritoCompras to Vendedor;
grant select on dbo.Clientes to Vendedor;
grant select on dbo.Envios to Vendedor;
grant select on dbo.MetodoPago to Vendedor;

grant select, insert, update, delete on dbo.ExistenciaProducto to Bodeguero;
grant select, insert, update, delete on dbo.Categoria to Bodeguero;
grant select, insert, update, delete on dbo.Subcategoria to Bodeguero;
grant select, update on dbo.Articulo to Bodeguero;
grant select, insert, update on dbo.Ingreso to Bodeguero;
grant select, insert, update on dbo.DetalleIngreso to Bodeguero;
grant select on dbo.Proveedores to Bodeguero;

grant select on dbo.Clientes to Rutero;
grant select on dbo.Envios to Rutero;
grant select on dbo.Direcciones to Rutero;
grant select on dbo.CarritoCompras to Rutero;



-- Consulta para obtener una lista de logins en la instancia de SQL Server
select name from sys.server_principals where type_desc = 'SQL_LOGIN';
go
-- Consulta para obtener una lista de usuarios en la instancia de SQL Server
select name from sys.database_principals where type_desc = 'SQL_USER';
go
-- Consulta para obtener una lista de roles en la instancia de SQL Server
select name from sys.database_principals where type_desc = 'DATABASE_ROLE';