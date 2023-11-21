CREATE TABLE Moneda (
    id SERIAL PRIMARY KEY,
    Moneda VARCHAR(50),
    Sigla VARCHAR(10),
    Imagen VARCHAR(50)
);

 SELECT * FROM Pais;
 
 -- Insertar datos en la tabla Moneda desde la tabla Pais
INSERT INTO Moneda (Moneda)
SELECT DISTINCT Moneda FROM Pais WHERE Moneda IS NOT NULL;

ALTER TABLE Pais
ADD COLUMN IdMoneda TEXT; 
 
UPDATE Pais
SET IdMoneda = Moneda.id
FROM Moneda
WHERE Pais.Moneda = Moneda.Moneda;

-- Agregar campos para imágenes del Mapa y la Bandera a la tabla Pais
ALTER TABLE Pais
ADD COLUMN Mapa VARCHAR(50),
ADD COLUMN Bandera VARCHAR(50);

-- Eliminar la columna Moneda de la tabla Pais
ALTER TABLE Pais
DROP COLUMN Moneda;
