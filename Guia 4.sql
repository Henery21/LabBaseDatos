DECLARE @NombreEmpleado VARCHAR(60)
DECLARE @ApellidoEmpleado VARCHAR(60);
DECLARE @NombreCargo VARCHAR(50);

-- Declarar el cursor para seleccionar empleados y sus cargos
DECLARE CursorLaboratorio CURSOR FOR
SELECT e.NombresEmpleado, e.ApellidosEmpleado, c.Nombre_Cargo
FROM Empleados e
JOIN Cargo c ON e.ID_Cargo = c.ID_Cargo;

OPEN CursorLaboratorio;
FETCH NEXT FROM CursorLaboratorio INTO @NombreEmpleado, @ApellidoEmpleado, @NombreCargo;

PRINT 'Cargo de empleados';

-- Insertar nuevos empleados en la tabla "Empleados"
WHILE @@FETCH_STATUS = 0
BEGIN
    PRINT @NombreEmpleado + ' ' + @ApellidoEmpleado + ' ' + @NombreCargo;

    INSERT INTO Empleados (NombresEmpleado, ApellidosEmpleado, ID_Cargo)
    VALUES (@NombreEmpleado, @ApellidoEmpleado, 0); -- Reemplaza '0' con el ID del cargo correspondiente

    PRINT 'Nuevo empleado agregado';

    FETCH NEXT FROM CursorLaboratorio INTO @NombreEmpleado, @ApellidoEmpleado, @NombreCargo;
END;

CLOSE CursorLaboratorio;
DEALLOCATE CursorLaboratorio;
