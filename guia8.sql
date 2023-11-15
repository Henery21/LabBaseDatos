-- Crear una secuencia
CREATE SEQUENCE SecuenciaFacturas
    START WITH 1
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 1000000;  -- Ajusta el valor m�ximo seg�n tus necesidades

-- Modificar la definici�n de la tabla Facturas para usar la secuencia
ALTER TABLE Facturas
ALTER COLUMN NumeroFactura INT DEFAULT NEXT VALUE FOR SecuenciaFacturas;
