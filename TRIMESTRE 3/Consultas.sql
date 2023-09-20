/*Listar todas las facturas y los productos asociados a cada factura:*/

SELECT f.idfactura, f.facturaVenta, p.denominacion AS producto, f.cliente_idcliente
FROM conder.factura f
JOIN conder.factura_has_producto fp ON f.idfactura = fp.factura_idfactura
JOIN conder.producto p ON fp.producto_idproducto = p.idproducto;


/*Encontrar la cantidad total de productos en stock por bodega: */

SELECT b.designacion AS bodega, SUM(p.stock) AS stock_total
FROM conder.bodega b
JOIN conder.producto p ON b.idbodega = p.bodega_idbodega
GROUP BY b.idbodega;

/*Listar los nombres de los proveedores y sus productos asociados:*/

SELECT pr.idproveedor, pr.rol_idrol, r.descripcion AS rol, p.denominacion AS producto
FROM conder.proveedor pr
JOIN conder.rol r ON pr.rol_idrol = r.idrol
JOIN conder.producto p ON pr.idproveedor = p.proveedor_idproveedor;

/*Listar las órdenes de compra y las fechas de compra asociadas a una bodega específica:*/

SELECT o.idordenCompra, o.descripcion, o.fechaCompra, b.designacion AS bodega
FROM conder.ordencompra o
JOIN conder.bodega b ON o.bodega_idbodega = b.idbodega
WHERE b.designacion = 'Bodega Principal';

/*Listar los clientes y sus correos electrónicos:*/

SELECT c.idcliente, u.nombre AS nombre_cliente, u.correo
FROM conder.cliente c
JOIN conder.usuario u ON c.idcliente = u.idusuario;

/*Calcular el monto total de una factura y listar los productos asociados a una factura específica:*/

SELECT f.idfactura, f.facturaVenta, SUM(p.precio) AS monto_total, GROUP_CONCAT(p.denominacion) AS productos
FROM conder.factura f
JOIN conder.factura_has_producto fp ON f.idfactura = fp.factura_idfactura
JOIN conder.producto p ON fp.producto_idproducto = p.idproducto
WHERE f.idfactura = '01';

/*Encontrar los productos próximos a vencer en una fecha específica:*/

SELECT p.idproducto, p.denominacion, p.fechaCaducidad
FROM conder.producto p
WHERE p.fechaCaducidad BETWEEN '2023-09-15 ' AND '2024-09-30';

/*Listar los productos que tienen un precio superior a un valor específico:*/

SELECT idproducto, denominacion, precio
FROM conder.producto
WHERE precio > 10000;

/*Encontrar los proveedores que suministran productos a una subcategoría específica:*/

SELECT DISTINCT pr.idproveedor, pr.rol_idrol, r.descripcion AS rol, p.denominacion AS producto, s.descripcion AS subcategoria
FROM conder.proveedor pr
JOIN conder.rol r ON pr.rol_idrol = r.idrol
JOIN conder.producto p ON pr.idproveedor = p.proveedor_idproveedor
JOIN conder.subcategoria s ON p.subCategoria_idsubCategoria = s.idsubCategoria
WHERE s.descripcion = 'Pañales y pañitos humedos';

/*Listar las facturas y los nombres de los clientes que han realizado compras en una fecha específica:*/

SELECT f.idfactura, f.facturaVenta, u.nombre AS nombre_cliente
FROM conder.factura f
JOIN conder.cliente c ON f.cliente_idcliente = c.idcliente
JOIN conder.usuario u ON c.idcliente = u.idusuario
WHERE f.facturaVenta BETWEEN '2023-01-01 10:30:00' AND '2023-09-15 23:59:59';

/*Calcular el promedio de precios de los productos por marca:*/

SELECT m.descripcion AS marca, AVG(p.precio) AS promedio_precio
FROM conder.marca m
JOIN conder.producto p ON m.idmarca = p.marca_idmarca
GROUP BY m.descripcion;

/*Listar los productos en una subcategoría específica ordenados por precio de forma ascendente:*/

SELECT idproducto, denominacion, precio
FROM conder.producto
WHERE subCategoria_idsubCategoria = '11'
ORDER BY precio ASC;

/*Encontrar los productos que tienen una fecha de caducidad próxima (por ejemplo, dentro de los próximos 30 días):*/

SELECT idproducto, denominacion, fechaCaducidad
FROM conder.producto
WHERE fechaCaducidad BETWEEN CURDATE() AND DATE_ADD(CURDATE(), INTERVAL 30 DAY);

/*Listar los productos que tienen una cantidad en stock menor a un valor específico (por ejemplo, menos de 22 unidades):*/

SELECT idproducto, denominacion, stock
FROM conder.producto
WHERE stock < 22;

/*Listar las facturas y sus montos totales ordenados de forma descendente por fecha de venta:*/

SELECT f.idfactura, f.facturaVenta, SUM(p.precio) AS total_venta
FROM conder.factura f
JOIN conder.factura_has_producto fp ON f.idfactura = fp.factura_idfactura
JOIN conder.producto p ON fp.producto_idproducto = p.idproducto
GROUP BY f.idfactura, f.facturaVenta
ORDER BY f.facturaVenta DESC;

