create database Tienda_electronica;
go 
use Tienda_electronica;
go 

-- Tabla Productos
CREATE TABLE Productos (
  ID_Producto INT PRIMARY KEY IDENTITY(1,1),
  Descripcion NVARCHAR(MAX) NOT NULL,
  Precio DECIMAL(10, 2) NOT NULL,
  Existencia INT NOT NULL
);

-- Tabla Direcciones
CREATE TABLE Direcciones (
  ID_Direccion INT PRIMARY KEY IDENTITY(1,1),
  NumeroCasa NVARCHAR(10),
  PasajePoligono NVARCHAR(10),
  Calle NVARCHAR(45),
  Colonia NVARCHAR(45),
  Canton NVARCHAR(45),
  Caserio NVARCHAR(45),
  Municipio NVARCHAR(45) NOT NULL,
  Departamento NVARCHAR(45) NOT NULL,
  CodigoPostal CHAR(5),
  Pais NVARCHAR(45) NOT NULL,
  ID_Distrito INT NOT NULL,
  FOREIGN KEY (ID_Distrito) REFERENCES Distrito(ID_Distrito) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Tabla Distrito
CREATE TABLE Distrito (
  ID_Distrito INT PRIMARY KEY IDENTITY(1,1),
  NombreDistrito NVARCHAR(45) NOT NULL
);

-- Tabla Clientes
CREATE TABLE Clientes (
  ID_Cliente INT PRIMARY KEY IDENTITY(1,1),
  NombresCliente NVARCHAR(60) NOT NULL,
  ApellidosCliente NVARCHAR(60) NOT NULL,
  TelefonoCliente NVARCHAR(10) NOT NULL,
  EmailCliente NVARCHAR(60) NOT NULL,
  ID_Direccion INT NOT NULL,
  FOREIGN KEY (ID_Direccion) REFERENCES Direcciones(ID_Direccion) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Tabla Proveedores
CREATE TABLE Proveedores (
  ID_Proveedor INT PRIMARY KEY IDENTITY(1,1),
  NombreProveedor NVARCHAR(60) NOT NULL,
  TelefonoProveedor NVARCHAR(10) NOT NULL,
  ID_Direccion INT NOT NULL,
  FOREIGN KEY (ID_Direccion) REFERENCES Direcciones(ID_Direccion) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Tabla Pedidos
CREATE TABLE Pedidos (
  ID_Pedido INT PRIMARY KEY IDENTITY(1,1),
  FechaPedido DATE NOT NULL,
  MontoPedido DECIMAL(10, 2) NOT NULL,
  ID_Proveedor INT NOT NULL,
  FOREIGN KEY (ID_Proveedor) REFERENCES Proveedores(ID_Proveedor) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Tabla Compras
CREATE TABLE Compras (
  ID_Compra INT PRIMARY KEY IDENTITY(1,1),
  FechaCompra DATE NOT NULL,
  MontoCompra DECIMAL(10, 2) NOT NULL,
  ID_Cliente INT NOT NULL,
  FOREIGN KEY (ID_Cliente) REFERENCES Clientes(ID_Cliente) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Tabla DetallePedidos
CREATE TABLE DetallePedidos (
  ID_DetallePedido INT PRIMARY KEY IDENTITY(1,1),
  CantidadProductos INT NOT NULL,
  ID_Pedido INT NOT NULL,
  ID_Producto INT NOT NULL,
  FOREIGN KEY (ID_Pedido) REFERENCES Pedidos(ID_Pedido) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (ID_Producto) REFERENCES Productos(ID_Producto) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Tabla DetalleCompras
CREATE TABLE DetalleCompras (
  ID_DetalleCompra INT NOT NULL,
  CantidadProductos INT NOT NULL,
  ID_Producto INT NOT NULL,
  ID_Compra INT NOT NULL,
  PRIMARY KEY (ID_DetalleCompra, ID_Producto, ID_Compra),
  FOREIGN KEY (ID_Producto) REFERENCES Productos(ID_Producto) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (ID_Compra) REFERENCES Compras(ID_Compra) ON DELETE CASCADE ON UPDATE CASCADE
);
