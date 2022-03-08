CREATE TABLE Producto (
    idProducto INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    CodProducto NVARCHAR (150) NOT NULL,
    Nombre NVARCHAR (150) NOT NULL,
    Categoria NVARCHAR (150) NOT NULL,
    Marca NVARCHAR (150) NOT NULL,
);

CREATE TABLE Tiempo (
    idTiempo INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    Año INT NOT NULL,
    Mes INT NOT NULL,
    Dia INT NOT NULL,
);

CREATE TABLE Cliente (
    idCliente INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    CodCliente NVARCHAR (150) NOT NULL,
    Nombre NVARCHAR (150) NOT NULL,
    Direccion NVARCHAR (150) NOT NULL,
    Numero NVARCHAR (150) NOT NULL,
    Tipo NVARCHAR (150) NOT NULL,
);

CREATE TABLE Vendedor (
    idVendedor INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    CodVendedor NVARCHAR (150) NOT NULL,
    Nombre NVARCHAR (150) NOT NULL,
    Vacacionista INT NOT NULL,
);

CREATE TABLE Sucursal (
    idSucursal INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    CodSucursal NVARCHAR (150) NOT NULL,
    Nombre NVARCHAR (150) NOT NULL,
    Region NVARCHAR (150) NOT NULL,
    Departamento NVARCHAR (150) NOT NULL,
);

CREATE TABLE Proveedor (
    idProveedor INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    CodProveedor NVARCHAR (150) NOT NULL,
    Nombre NVARCHAR (150) NOT NULL,
    Direccion NVARCHAR (150) NOT NULL,
    Numero NVARCHAR (150) NOT NULL,
    Web INT NOT NULL,
);

CREATE Table Venta (
    idVenta INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    idCliente INT NOT NULL,
    idProducto INT NOT NULL,
    idSucursal INT NOT NULL,
    idTiempo INT NOT NULL,
    idVendedor INT NOT NULL,
    Unidades INT NOT NULL,
    PrecioUnitario DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente),
    FOREIGN KEY (idProducto) REFERENCES Producto(idProducto),
    FOREIGN KEY (idSucursal) REFERENCES Sucursal(idSucursal),
    FOREIGN KEY (idTiempo) REFERENCES Tiempo(idTiempo),
    FOREIGN KEY (idVendedor) REFERENCES Vendedor(idVendedor)
);

CREATE TABLE Compra (
    idCompra INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    idProveedor INT NOT NULL,
    idProducto INT NOT NULL,
    idSucursal INT NOT NULL,
    idTiempo INT NOT NULL,
    Unidades INT NOT NULL,
    PrecioUnitario DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (idProveedor) REFERENCES Proveedor(idProveedor),
    FOREIGN KEY (idProducto) REFERENCES Producto(idProducto),
    FOREIGN KEY (idSucursal) REFERENCES Sucursal(idSucursal),
    FOREIGN KEY (idTiempo) REFERENCES Tiempo(idTiempo),
);
