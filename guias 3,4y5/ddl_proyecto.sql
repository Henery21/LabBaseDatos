create database TiendaLacteos;
use TiendaLacteos;

-- DIRECCIONES
create table Departamentos(
	ID_Departamento char(2) primary key,
	Departamento varchar(60) not null,
	Pais varchar(60)
);

create table Municipios(
	ID_Municipio char(3) primary key,
	Municipio varchar(60) not null,
	ID_Departamento char(2) not null
);

create table Distritos(
	ID_Distrito varchar(5) primary key,
	Distrito varchar(60) not null,
	ID_Municipio char(3) not null
);

create table Direcciones(
	ID_Direccion int primary key identity(1, 1),
    Linea1 varchar(100) not null,
    Linea2 varchar(100),
    ID_Distrito varchar(5) not null,
    CodigoPostal int
);

-- PERSONAS
create table Cargo(
	ID_Cargo int identity(1,1) primary key,
	Nombre_Cargo varchar(50) not null
);

create table Empleados(
	ID_Empleado int primary key identity(1, 1),
    DUI_Empleado varchar(10) not null,
    NombresEmpleado varchar(60) not null,
    ApellidosEmpleado varchar(60) not null,
	ID_Usuario int not null,
    FechaNacEmpleado date not null,
    Telefono varchar(10) not null,
    Correo varchar(100),
	Direccion nvarchar(250),
    ID_Cargo int not null
);

create table Clientes(
	ID_Cliente int primary key identity(1, 1),
    DUI_Cliente varchar(10) not null,
    NombresCliente varchar(60) not null,
    ApellidosCliente varchar(60) not null,
	ID_Usuario int not null,
    Telefono varchar(10) not null,
    Correo varchar(100),
	ID_Direccion int
);

-- MANEJO DE ROLES
create table Opciones(
	ID_Opcion int primary key identity(1, 1),
    NombreOpcion varchar(60) not null
);

create table Roles(
	ID_Rol int primary key identity(1, 1),
    NombreRol varchar(60) not null
);

create table AsignacionRolesOpciones(
	ID_AsignacionRol int primary key identity(1, 1),
    ID_Rol int not null,
    ID_Opcion int not null
);

create table Usuarios(
	ID_Usuario int primary key identity(1, 1),	
	ID_Rol int not null,
    Usuario varchar(60) not null,
    Clave varchar(60) not null
);

-- PRODUCTOS
create table Articulo(
	ID_Articulo int identity(1,1)primary key ,
	ID_Categoria int NOT NULL,
	ID_Subcategoria int NOT NULL,
	Codigo varchar(50) NOT NULL,
	Precio_Venta decimal(11, 2) NOT NULL,
	Fecha_Vencimiento datetime NOT NULL,
	Descripcion varchar(255) NOT NULL,
	Imagen varchar(20) NOT NULL,
	Estado bit NOT NULL,
	ID_Proveedor int not null
);

create table Categoria(
	ID_Categoria int identity(1,1) primary key ,
	Nombre varchar(50) NOT NULL,
	Descripcion varchar(255) NOT NULL,
	Estado bit NOT NULL
);

create table Subcategoria(
	ID_Subcategoria int identity primary key,
	Subcategoria varchar(100) not null,
	ID_Categoria int not null
);

-- VENTAS
create table Venta(
	ID_Venta int identity(1,1) primary key,
	ID_Empleado int NOT NULL,
	ID_Cliente int NOT NULL,
	Tipo_Comprobante varchar(20) NOT NULL,
	Serie_Comprobante varchar(7) NOT NULL,
	Num_Comprobante varchar(10) NOT NULL,
	Fecha datetime NOT NULL,
	ID_Metodo_Pago int NOT NULL,
	Estado varchar(20) NOT NULL,
	ID_Reserva int not null
);

create table DetalleVenta(
	ID_Detalle_Venta int identity(1,1) primary key,
	ID_Venta int NOT NULL,
	ID_Articulo int NOT NULL,
	Cantidad int NOT NULL,
	Precio_Unitario decimal(11, 2) NULL,
	Impuesto decimal(4, 2) NOT NULL,
	Total decimal(11, 2) NOT NULL,
);

create table MetodoPago(
	ID_Metodo_Pago int identity(1,1)primary key,
	Metodo varchar(100) not null
) ;

-- COMPRA DE PRODUCTO
create table Ingreso(
	ID_Ingreso int identity(1,1)primary key,
	ID_Empleado int NOT NULL,
	Tipo_Comprobante varchar(20) NOT NULL,
	Serie_Comprobante varchar(7) NOT NULL,
	Num_Comprobante varchar(10) NOT NULL,
	Fecha datetime NOT NULL,
	Total decimal(11, 2) NOT NULL,
	Estado varchar(20) NOT NULL
);

create table DetalleIngreso(
	ID_Detalle_Ingreso int identity(1,1) primary key,
	ID_Ingreso int NOT NULL,
	ID_Categoria int NOT NULL,
	Cantidad int NOT NULL,
	Precio decimal(11, 2) NULL,
) ;

CREATE TABLE ExistenciaProducto (
    ID_Existencia INT IDENTITY (1,1) PRIMARY KEY,
    ID_Articulo INT NOT NULL,
    Cantidad INT NOT NULL,
    FechaIngreso DATE NOT NULL,
    Ubicacion VARCHAR(100),
    PrecioCompra DECIMAL(11, 2) NOT NULL,
    PrecioVenta DECIMAL(11, 2) NOT NULL,
    Estado VARCHAR(20) NOT NULL
);

create table Proveedores(
    ID_Proveedor int identity(1,1) primary key,
    Nombre varchar(100) not null,
    Direccion varchar(255),
    Telefono varchar(20),
    Correo varchar(100),
    Notas nvarchar(max)
);

create table CarritoCompras(
    ID_Carrito int identity(1,1) primary key,
    ID_Cliente int not null,
    Fecha datetime not null,
    ID_Articulo int not null,
    Cantidad int not null,
    Precio decimal(11, 2) not null
);

create table Envios(
    ID_Envio int identity(1,1) primary key,
    ID_Cliente int not null,
	ID_Empleado int not null,
    FechaEnvio datetime not null,
    Estado varchar(50) not null,
    MetodoEnvio varchar(100),
    Notas nvarchar(max)
);

create table Reservas(
    ID_Reserva int identity(1,1) primary key,
    ID_Cliente int not null,
    FechaInicio datetime not null,
    FechaFin datetime not null,
    Estado varchar(50) not null,
    Notas nvarchar(max)
);

ALTER TABLE Municipios ADD FOREIGN KEY (ID_Departamento) REFERENCES Departamentos(ID_Departamento);
ALTER TABLE Distritos ADD FOREIGN KEY (ID_Municipio) REFERENCES Municipios(ID_Municipio);
ALTER TABLE Direcciones ADD FOREIGN KEY (ID_Distrito) REFERENCES Distritos(ID_Distrito);
ALTER TABLE Empleados ADD FOREIGN KEY(ID_Cargo) REFERENCES Cargo(ID_Cargo);
ALTER TABLE Empleados ADD FOREIGN KEY(ID_Usuario) REFERENCES Usuarios(ID_Usuario);
ALTER TABLE Clientes ADD FOREIGN KEY(ID_Direccion) REFERENCES Direcciones (ID_Direccion );
ALTER TABLE Clientes ADD FOREIGN KEY(ID_Usuario) REFERENCES Usuarios(ID_Usuario);
ALTER TABLE AsignacionRolesOpciones ADD FOREIGN KEY(ID_Opcion) REFERENCES Opciones (ID_Opcion);
ALTER TABLE AsignacionRolesOpciones ADD FOREIGN KEY(ID_Rol) REFERENCES Roles (ID_Rol);
ALTER TABLE Usuarios ADD FOREIGN KEY(ID_Rol) REFERENCES Roles (ID_Rol);
ALTER TABLE Articulo ADD FOREIGN KEY(ID_Categoria) REFERENCES Categoria (ID_Categoria);
ALTER TABLE Articulo ADD FOREIGN KEY(ID_Subcategoria) REFERENCES Subcategoria (ID_Subcategoria);
ALTER TABLE Subcategoria ADD FOREIGN KEY (ID_Categoria) REFERENCES Categoria(ID_Categoria);
ALTER TABLE Venta ADD FOREIGN KEY(ID_Empleado) REFERENCES Empleados (ID_Empleado);
ALTER TABLE Venta ADD FOREIGN KEY(ID_Cliente) REFERENCES Clientes (ID_Cliente);
ALTER TABLE Venta ADD FOREIGN KEY(ID_Metodo_Pago) REFERENCES MetodoPago(ID_Metodo_Pago);
ALTER TABLE DetalleVenta ADD FOREIGN KEY(ID_Articulo) REFERENCES Articulo (ID_Articulo);
ALTER TABLE DetalleVenta ADD FOREIGN KEY(ID_Venta) REFERENCES Venta (ID_Venta);
ALTER TABLE Ingreso ADD FOREIGN KEY(ID_Empleado) REFERENCES Empleados (ID_Empleado);
ALTER TABLE DetalleIngreso ADD FOREIGN KEY(ID_Categoria) REFERENCES Categoria (ID_Categoria);
ALTER TABLE DetalleIngreso ADD FOREIGN KEY(ID_Ingreso) REFERENCES Ingreso (ID_Ingreso);
ALTER TABLE ExistenciaProducto ADD FOREIGN KEY(ID_Articulo)REFERENCES Articulo(ID_Articulo);
alter table Envios add foreign key(ID_Cliente) references Clientes(ID_Cliente);
alter table CarritoCompras add foreign key(ID_Cliente) references Clientes(ID_Cliente);
alter table CarritoCompras add foreign key(ID_Articulo) references Articulo(ID_Articulo);
alter table Articulo add foreign key(ID_Proveedor) references Proveedores(ID_Proveedor);
alter table Reservas add foreign key(ID_Cliente) references Clientes(ID_Cliente);
alter table Venta add foreign key(ID_Reserva) references Reservas(ID_Reserva);
alter table Envios add foreign key(ID_Empleado) references Empleados(ID_Empleado);