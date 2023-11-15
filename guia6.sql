use TiendaLacteos;

-- Procedimiento de insercion
CREATE PROCEDURE InsertarNuevoRegistro
    @Parametro1 INT,
    @Parametro2 VARCHAR(50),
    -- Agrega m�s par�metros seg�n tus necesidades
AS
BEGIN
    SET NOCOUNT ON;

    -- L�gica de inserci�n en la tabla deseada
    INSERT INTO TuTabla (Columna1, Columna2, ...)
    VALUES (@Parametro1, @Parametro2, ...);
END;

-- procedimiento de consulta
CREATE PROCEDURE ConsultarRegistros
AS
BEGIN
    SET NOCOUNT ON;

    -- L�gica de consulta (Ejemplo: Join entre dos tablas)
    SELECT T1.Columna1, T2.Columna2
    FROM Tabla1 T1
    JOIN Tabla2 T2 ON T1.Clave = T2.Clave;
END;
 ---- Ejecutar procedimiento de inserci�n
EXEC InsertarNuevoRegistro @Parametro1 = Valor1, @Parametro2 = 'Valor2';

-- Ejecutar procedimiento de consulta
EXEC ConsultarRegistros;
