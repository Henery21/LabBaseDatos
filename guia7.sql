
use TiendaLacteos;

CREATE TABLE ReporteIngresoProductos (
    ID_ReporteIngreso INT PRIMARY KEY,
    ID_Proveedor INT,
    FechaIngreso DATE,
    TotalIngreso DECIMAL(11, 2),
    FOREIGN KEY (ID_Proveedor) REFERENCES Proveedores(ID_Proveedor)
);
create procedure InsertarProducto	
	@FechaIngreso date,
	@TotalIngreso decimal(11,2)  
as
begin
    insert  ReporteIngresoProductos(FechaIngreso,TotalIngreso) 
	values (@FechaIngreso,@TotalIngreso);
end;

create trigger DespuesDeInsertarProductos
on dbo.ReporteIngresoProductos 
after insert
as
begin
    
	print 'Se ha insertado un nuevo Producto';
end;
