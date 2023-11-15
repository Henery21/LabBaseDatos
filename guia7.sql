CREATE PROCEDURE InsertarNuevoRegistro
    @Parametro1 INT,
    @Parametro2 VARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;

    -- L�gica de inserci�n en la tabla deseada
    INSERT INTO TuTabla (Columna1, Columna2)
    VALUES (@Parametro1, @Parametro2);

    -- Mensaje al finalizar la inserci�n
    PRINT 'Procedimiento almacenado ejecutado correctamente.';
END;

CREATE TRIGGER DespuesDeInsertarNuevoRegistro
ON TuTabla
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;

    -- L�gica del trigger (puedes hacer una inserci�n, actualizaci�n, etc.)
    INSERT INTO OtraTabla (Columna1, Columna2)
    SELECT Columna1, Columna2
    FROM INSERTED;

    -- Mensaje al finalizar el trigger
    PRINT 'Trigger ejecutado despu�s de la inserci�n.';
END;
