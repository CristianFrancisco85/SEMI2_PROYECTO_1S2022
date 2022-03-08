# OneSolution - BI
OneSolution es una cadena de tiendas por departamentos que vende tanto al público en general (por menor) como a clientes mayoristas. Se inició como un negocio pequeño, pero debido al auge que ha tenido la industria alimentaria en esta crisis ocasionada por la pandemia, las ventas y compras han aumentado en gran manera.

El proyecto OneSolution-BI, consiste en proveer una solución que resuelva los problemas anteriormente planteados, esto como fin principal para la generación de reportes sobre las compras y las ventas de la empresa con la facilidad de generar estos en intervalos de tiempo según sean las necesidades que se presenten.

## Proceso ETL

<p align="center">
  <img src="./images/FlujoControl.png" width="750"/>
</p>

El flujo de control (principal) controla todo nuestro ETL, consiste basicamente en 

- Vaciado de la base de datos
- Iteracion de Archivos .cp, en cada iteracion se realiza lo siguiente
    - Creacion de Dimensiones Proveedor,Producto,Sucursal,Tiempo
    - Creacion de Hecho Compras 

- Iteracion de Archivos .vt, en cada iteracion se realiza lo siguiente
    - Creacion de Dimensiones Clientes,Vendedor,Producto,Sucursal,Tiempo
    - Creacion de Hecho Ventas

## Creacion de Dimensiones - Compras
<p align="center">
  <img src="./images/dimensiones_compras.png" width="1000"/>
</p>

## Creacion de Hecho - Compra
<p align="center">
  <img src="./images/hecho_compras.png" width="1000"/>
</p>

## Creacion de Dimensiones - Ventas
<p align="center">
  <img src="./images/dimensiones_ventas.png" width="1000"/>
</p>

## Creacion de Dimensiones - Ventas
<p align="center">
  <img src="./images/hecho_ventas.png" width="1000"/>
</p>
