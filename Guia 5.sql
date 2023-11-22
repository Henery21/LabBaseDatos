--función escalar que calcula el precio final
CREATE OR ALTER FUNCTION CalcularPrecioFinal
(
    @PrecioOriginal DECIMAL(10, 2),
    @PorcentajeImpuesto DECIMAL(5, 2)
)
RETURNS DECIMAL(10, 2)
AS
BEGIN
    DECLARE @PrecioFinal DECIMAL(10, 2);
    
    SET @PrecioFinal = @PrecioOriginal + (@PrecioOriginal * @PorcentajeImpuesto / 100.0);
    
    RETURN @PrecioFinal;
END;

DECLARE @PrecioOriginal DECIMAL(10, 2) = 100.00;
DECLARE @PorcentajeImpuesto DECIMAL(5, 2) = 10.00;

SELECT dbo.CalcularPrecioFinal(@PrecioOriginal, @PorcentajeImpuesto) AS PrecioFinal;

-- funcion valores tabla muestra empleados y su cargo
create or alter function ListaEmpleados(@Cargo int)
returns table
as
	return (
	select e.NombresEmpleado, e.ApellidosEmpleado, e.ID_Cargo
	from Empleados e where ID_Cargo= @Cargo);


