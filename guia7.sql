CREATE PROCEDURE InsertarNuevoRegistro
    @Parametro1 INT,
    @Parametro2 VARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;

    -- Lógica de inserción en la tabla deseada
    INSERT INTO TuTabla (Columna1, Columna2)
    VALUES (@Parametro1, @Parametro2);

    -- Mensaje al finalizar la inserción
    PRINT 'Procedimiento almacenado ejecutado correctamente.';
END;

CREATE TRIGGER DespuesDeInsertarNuevoRegistro
ON TuTabla
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;

    -- Lógica del trigger (puedes hacer una inserción, actualización, etc.)
    INSERT INTO OtraTabla (Columna1, Columna2)
    SELECT Columna1, Columna2
    FROM INSERTED;

    -- Mensaje al finalizar el trigger
    PRINT 'Trigger ejecutado después de la inserción.';
END;
