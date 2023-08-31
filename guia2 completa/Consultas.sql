-- Mostrar el precio total de una compra específica, incluyendo un descuento del 10% si el monto es mayor a $100:
SELECT ID_Compra, MontoCompra, 
       CASE WHEN MontoCompra > 100 THEN MontoCompra * 0.9 ELSE MontoCompra END AS PrecioTotalConDescuento
FROM Compras
WHERE ID_Compra = 1;

-- Obtener la cantidad total de productos en existencia en la tabla Productos:
SELECT SUM(Existencia) AS CantidadTotalEnExistencia
FROM Productos;
--Mostrar los detalles de los pedidos que tengan más de 3 productos, ordenados por cantidad de productos de forma descendente:
SELECT DP.ID_Pedido, DP.CantidadProductos, P.Descripcion
FROM DetallePedidos DP
JOIN Productos P ON DP.ID_Producto = P.ID_Producto
WHERE DP.CantidadProductos > 3
ORDER BY DP.CantidadProductos DESC;

--Mostrar los nombres de los proveedores y su cantidad de productos en existencia, excluyendo aquellos que no tengan productos en existencia:
SELECT PR.ID_Direccion, PR.NombreProveedor, COUNT(P.ID_Producto) AS CantidadProductosEnExistencia
FROM Proveedores PR
JOIN Productos P ON PR.ID_Direccion = P.ID_Proveedor
WHERE P.Existencia > 0
GROUP BY PR.ID_Direccion, PR.NombreProveedor;

--Obtener el nombre de los clientes que han realizado compras por un monto mayor a $500, mostrando también el total gastado por cada cliente:
SELECT C.NombresCliente, C.ApellidosCliente, SUM(Co.MontoCompra) AS TotalGastado
FROM Clientes C
JOIN Compras Co ON C.ID_Cliente = Co.ID_Cliente
WHERE Co.MontoCompra > 500
GROUP BY C.NombresCliente, C.ApellidosCliente;


--5 consultas que involucran consultas multitabla, subconsultas y joins
--Mostrar los nombres de los productos y sus precios que han sido comprados por cada cliente:
SELECT C.NombresCliente, C.ApellidosCliente, P.Descripcion, P.Precio
FROM Clientes C
JOIN Compras Co ON C.ID_Cliente = Co.ID_Cliente
JOIN DetalleCompras DC ON Co.ID_Compra = DC.ID_Compra
JOIN Productos P ON DC.ID_Producto = P.ID_Producto;

--Mostrar los proveedores que tienen productos con existencia menor a 10 y los nombres de esos productos:
SELECT PR.NombreProveedor, P.Descripcion
FROM Proveedores PR
JOIN Productos P ON PR.ID_Proveedor = P.ID_Proveedor
WHERE P.Existencia < 10;

--Mostrar los detalles de los pedidos junto con los nombres de los productos que han sido comprados:
SELECT DP.ID_Pedido, DP.CantidadProductos, P.Descripcion
FROM DetallePedidos DP
JOIN Productos P ON DP.ID_Producto = P.ID_Producto;

--Mostrar los nombres de los clientes y sus direcciones en el municipio "San Salvador":
SELECT C.NombresCliente, C.ApellidosCliente, D.Calle, D.Colonia, D.Municipio
FROM Clientes C
JOIN Direcciones D ON C.ID_Direccion = D.ID_Direccion
WHERE D.Municipio = 'San Salvador';

--Mostrar los productos que han sido comprados por más de un cliente, junto con la cantidad de clientes que los han comprado:
SELECT P.Descripcion, COUNT(DISTINCT C.ID_Cliente) AS CantidadClientes
FROM Productos P
JOIN DetalleCompras DC ON P.ID_Producto = DC.ID_Producto
JOIN Compras Co ON DC.ID_Compra = Co.ID_Compra
JOIN Clientes C ON Co.ID_Cliente = C.ID_Cliente
GROUP BY P.Descripcion
HAVING COUNT(DISTINCT C.ID_Cliente) > 1;
