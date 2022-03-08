SELECT 'Clientes' as Tabla , COUNT(*) as Total FROM Cliente
UNION
SELECT 'Productos' as Tabla,COUNT(*) as Total FROM Producto
UNION
SELECT 'Proveedores' as Tabla,COUNT(*) as Total FROM Proveedor
UNION
SELECT 'Sucursales' as Tabla,COUNT(*) as Total FROM Sucursal
UNION
SELECT 'Tiempos' as Tabla,COUNT(*) as Total FROM Tiempo
UNION
SELECT 'Vendedores' as Tabla,COUNT(*) as Total FROM Vendedor
UNION
SELECT 'Compras' as Tabla,COUNT(*) as Total FROM Compra
UNION
SELECT 'Ventas' as Tabla,COUNT(*) as Total FROM Venta;
