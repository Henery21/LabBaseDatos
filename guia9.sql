-- Crear la vista
CREATE VIEW VistaEmpleadosConCargo
AS
SELECT
    E.ID_Empleado,
    E.NombresEmpleado,
    E.ApellidosEmpleado,
    C.Nombre_Cargo AS Cargo
FROM
    Empleados E
JOIN
    Cargo C ON E.ID_Cargo = C.ID_Cargo;

	-- Consultar la vista
SELECT * FROM VistaEmpleadosConCargo;
