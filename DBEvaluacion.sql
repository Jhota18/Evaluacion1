CREATE DATABASE DBEvaluacion
GO
USE DBEvaluacion
GO

CREATE TABLE AGENCIA ( 
NIT INT PRIMARY KEY IDENTITY (1,1),
NOMBRE VARCHAR(255),
DIRECCION VARCHAR(255),
TELEFONO INT,
EMAIL VARCHAR(255))

CREATE TABLE CLIENTE(
DOCUMENTO INT PRIMARY KEY IDENTITY (1,1),
NOMBRE VARCHAR(255),
TELEFONO INT,
EMAIL VARCHAR(255))

CREATE TABLE TIPO_VIVIENDA(
ID INT PRIMARY KEY IDENTITY(1,1),
NOMBRE VARCHAR(255))

CREATE TABLE VIVIENDA(
ID INT PRIMARY KEY IDENTITY(1,1),
NUMERO_CUARTOS INT,
NUMERO_BA�OS INT,
TAMA�O_MCUADRADO FLOAT,
NUMERO_PISOS INT,
ACCESORIOS VARCHAR(255),
ID_TIPO_VIVIENDA INT,
VALOR_VIVIENDA MONEY
CONSTRAINT FK_TIPO_VIVIENDA FOREIGN KEY (ID_TIPO_VIVIENDA)
REFERENCES TIPO_VIVIENDA(ID) )

CREATE TABLE VENTA(
ID INT PRIMARY KEY IDENTITY(1,1),
ID_AGENCIA INT,
ID_CLIENTE INT,
ID_VIVIENDA INT,
FECHA_VENTA DATE,
CONSTRAINT FK_CLIENTE FOREIGN KEY (ID_CLIENTE)
REFERENCES CLIENTE(DOCUMENTO),
CONSTRAINT FK_VIVIENDA FOREIGN KEY (ID_VIVIENDA)
REFERENCES VIVIENDA(ID),
CONSTRAINT FK_AGENCIA FOREIGN KEY (ID_AGENCIA)
REFERENCES AGENCIA(NIT))

INSERT INTO TIPO_VIVIENDA (NOMBRE) VALUES
('CASA'),
('APARTAMENTO'),
('FINCA')
GO
-- Insert data into AGENCIA table
INSERT INTO AGENCIA (NOMBRE, DIRECCION, TELEFONO, EMAIL) VALUES
('Agencia Central', 'Calle 1, No 12-45', 1234567, 'central@agencia.com'),
('Agencia Norte', 'Avenida Norte 123', 654321, 'norte@agencia.com'),
('Agencia Sur', 'Calle Sur 789', 2468135, 'sur@agencia.com'),
('Agencia Oeste', 'Calle Oeste 456', 9876543, 'oeste@agencia.com'),
('Agencia Este', 'Avenida Este 321', 5558888, 'este@agencia.com');

GO
-- Insert data into CLIENTE table
INSERT INTO CLIENTE (NOMBRE, TELEFONO, EMAIL) VALUES
('Juan P�rez', 2345678, 'juanperez@gmail.com'),
('Mar�a Garc�a', 3456789, 'mariagarcia@hotmail.com'),
('Carlos L�pez', 4567890, 'carloslopez@yahoo.com'),
('Ana S�nchez', 5678901, 'anasanchez@outlook.com'),
('Luis Mart�nez', 6789012, 'luismartinez@icloud.com');
GO

-- Insert data into TIPO_VIVIENDA table (already done in the provided code)

-- Insert data into VIVIENDA table
INSERT INTO VIVIENDA (NUMERO_CUARTOS, NUMERO_BA�OS, TAMA�O_MCUADRADO, NUMERO_PISOS, ACCESORIOS, ID_TIPO_VIVIENDA, VALOR_VIVIENDA) VALUES
(3, 2, 120.5, 1, 'Jard�n, Garaje', 1, 150000000),
(2, 1, 80.0, 1, 'Cocina Integral, Balc�n', 2, 90000000),
(4, 3, 250.0, 2, 'Piscina, Garaje', 1, 350000000),
(5, 4, 400.0, 2, 'Jard�n, Oficina, Piscina', 1, 600000000),
(3, 2, 150.0, 1, 'Terraza, Aire Acondicionado', 3, 120000000);

GO
-- Insert data into VENTA table
INSERT INTO VENTA (ID_AGENCIA, ID_CLIENTE, ID_VIVIENDA, FECHA_VENTA) VALUES
(2, 2, 2, '2025-03-02'),
(3, 3, 3, '2025-03-03'),
(4, 4, 4, '2025-03-04'),
(5, 5, 5, '2025-03-05');


SELECT * FROM VIVIENDA

