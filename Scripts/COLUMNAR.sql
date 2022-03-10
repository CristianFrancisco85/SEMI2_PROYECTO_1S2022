USE SeminariodosColumnar201801397;

DROP TABLE IF EXISTS Venta;
DROP TABLE IF EXISTS Compra;
DROP TABLE IF EXISTS Producto;
DROP TABLE IF EXISTS Tiempo;
DROP TABLE IF EXISTS Cliente;
DROP TABLE IF EXISTS Vendedor;
DROP TABLE IF EXISTS Sucursal;
DROP TABLE IF EXISTS Proveedor;

CREATE TABLE Producto (
    idProducto INT NOT NULL IDENTITY(1,1),
    CodProducto NVARCHAR (150) NOT NULL,
    Nombre NVARCHAR (150) NOT NULL,
    Categoria NVARCHAR (150) NOT NULL,
    Marca NVARCHAR (150) NOT NULL,
);
CREATE CLUSTERED COLUMNSTORE INDEX [PK_idProducto] ON Producto
WITH (DROP_EXISTING = OFF);

CREATE TABLE Tiempo (
    idTiempo INT NOT NULL IDENTITY(1,1),
    Año INT NOT NULL,
    Mes INT NOT NULL,
    Dia INT NOT NULL,
);
CREATE CLUSTERED COLUMNSTORE INDEX [PK_idTiempo] ON Tiempo
WITH (DROP_EXISTING = OFF);

CREATE TABLE Cliente (
    idCliente INT NOT NULL IDENTITY(1,1),
    CodCliente NVARCHAR (150) NOT NULL,
    Nombre NVARCHAR (150) NOT NULL,
    Direccion NVARCHAR (150) NOT NULL,
    Numero NVARCHAR (150) NOT NULL,
    Tipo NVARCHAR (150) NOT NULL,
);
CREATE CLUSTERED COLUMNSTORE INDEX [PK_idCliente] ON Cliente
WITH (DROP_EXISTING = OFF);

CREATE TABLE Vendedor (
    idVendedor INT NOT NULL IDENTITY(1,1),
    CodVendedor NVARCHAR (150) NOT NULL,
    Nombre NVARCHAR (150) NOT NULL,
    Vacacionista INT NOT NULL,
);
CREATE CLUSTERED COLUMNSTORE INDEX [PK_idVendedor] ON Vendedor
WITH (DROP_EXISTING = OFF);

CREATE TABLE Sucursal (
    idSucursal INT NOT NULL IDENTITY(1,1),
    CodSucursal NVARCHAR (150) NOT NULL,
    Nombre NVARCHAR (150) NOT NULL,
	DireccionSucursal NVARCHAR (150) NOT NULL,
    Region NVARCHAR (150) NOT NULL,
    Departamento NVARCHAR (150) NOT NULL,
);
CREATE CLUSTERED COLUMNSTORE INDEX [PK_idSucursal] ON Sucursal
WITH (DROP_EXISTING = OFF);

CREATE TABLE Proveedor (
    idProveedor INT NOT NULL IDENTITY(1,1),
    CodProveedor NVARCHAR (150) NOT NULL,
    Nombre NVARCHAR (150) NOT NULL,
    Direccion NVARCHAR (150) NOT NULL,
    Numero NVARCHAR (150) NOT NULL,
    Web INT NOT NULL,
);
CREATE CLUSTERED COLUMNSTORE INDEX [PK_idProveedor] ON Proveedor
WITH (DROP_EXISTING = OFF);

CREATE Table Venta (
    idVenta INT NOT NULL IDENTITY(1,1),
    idCliente INT NOT NULL,
    idProducto INT NOT NULL,
    idSucursal INT NOT NULL,
    idTiempo INT NOT NULL,
    idVendedor INT NOT NULL,
    Unidades INT NOT NULL,
    PrecioUnitario DECIMAL(10,2) NOT NULL,
);
CREATE CLUSTERED COLUMNSTORE INDEX [PK_idVenta] ON Venta
WITH (DROP_EXISTING = OFF);

CREATE TABLE Compra (
    idCompra INT NOT NULL IDENTITY(1,1),
    idProveedor INT NOT NULL,
    idProducto INT NOT NULL,
    idSucursal INT NOT NULL,
    idTiempo INT NOT NULL,
    Unidades INT NOT NULL,
    PrecioUnitario DECIMAL(10,2) NOT NULL,
);
CREATE CLUSTERED COLUMNSTORE INDEX [PK_idCompra] ON Compra
WITH (DROP_EXISTING = OFF);


SET IDENTITY_INSERT Producto ON;
	INSERT INTO Producto(idProducto,CodProducto,Nombre,Categoria,Marca) SELECT idProducto,CodProducto,Nombre,Categoria,Marca FROM Seminariodos201801397.dbo.Producto;
SET IDENTITY_INSERT Producto OFF;

SET IDENTITY_INSERT Tiempo ON;
	INSERT INTO Tiempo(idTiempo,Año,Mes,Dia) SELECT * FROM Seminariodos201801397.dbo.Tiempo;
SET IDENTITY_INSERT Tiempo OFF;

SET IDENTITY_INSERT Cliente ON;
	INSERT INTO Cliente(idCliente,CodCliente,Nombre,Direccion,Numero,Tipo) SELECT * FROM Seminariodos201801397.dbo.Cliente;
SET IDENTITY_INSERT Cliente OFF;

SET IDENTITY_INSERT Vendedor ON;
	INSERT INTO Vendedor(idVendedor,CodVendedor,Nombre,Vacacionista) SELECT * FROM Seminariodos201801397.dbo.Vendedor;
SET IDENTITY_INSERT Vendedor OFF;

SET IDENTITY_INSERT Sucursal ON;
	INSERT INTO Sucursal(idSucursal,CodSucursal,Nombre,DireccionSucursal,Region,Departamento) SELECT * FROM Seminariodos201801397.dbo.Sucursal;
SET IDENTITY_INSERT Sucursal OFF;

SET IDENTITY_INSERT Proveedor ON;
	INSERT INTO Proveedor(idProveedor,CodProveedor,Nombre,Direccion,Numero,Web) SELECT * FROM Seminariodos201801397.dbo.Proveedor;
SET IDENTITY_INSERT Proveedor OFF;

SET IDENTITY_INSERT Venta ON;
	INSERT INTO Venta(idVenta,idCliente,idProducto,idSucursal,idTiempo,idVendedor,Unidades,PrecioUnitario) SELECT * FROM Seminariodos201801397.dbo.Venta;
SET IDENTITY_INSERT Venta OFF;

SET IDENTITY_INSERT Compra ON;
	INSERT INTO Compra(idCompra,idProveedor,idProducto,idSucursal,idTiempo,Unidades,PrecioUnitario) SELECT * FROM Seminariodos201801397.dbo.Compra;
SET IDENTITY_INSERT Compra OFF;
