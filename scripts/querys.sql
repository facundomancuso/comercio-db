-- CONSULTAS BASICAS
/*
    CONSULTAS BASICAS
    EN ESTA SECCIÓN, COPIA LA CONSULTA QUE DESEES CONSULTAR Y PEGALO EN TU QUERY DE MySQL PARA EJECUTARLA
*/

-- OBTENER TODOS LOS CLIENTES
SELECT * FROM clientes;

-- OBTENER TODOS LOS PRODUCTOS DE UN SUBRUBRO ESPECÍFICO
SELECT * FROM productos 
-- FILTRAR POR ID DE SUBRUBRO
WHERE id_subrubro = 1;

-- OBTENER VENTAS EN UN RANGO DE FECHAS
SELECT * FROM ventas
WHERE fecha_venta
BETWEEN '2024-01-01'
AND '2024-12-31';

-- OBTENER PRODUCTOS CON BAJO STOCK
SELECT 
nombre_producto AS "Nombre Producto",
stock_producto AS "Stock Actual"
FROM productos
WHERE stock_producto <= 30
ORDER BY stock_producto DESC;

-- CONSULTAS DE ACTUALIZACIÓN
/*
    CONSULTAS DE ACTUALIZACIÓN
    EN ESTA SECCIÓN, COPIA LA CONSULTA QUE DESEES CONSULTAR Y PEGALO EN TU QUERY DE MySQL PARA EJECUTARLA
*/

-- ACTUALIZAR EL ESTADO DE UN CLIENTE
UPDATE clientes 
SET estado_cliente = 0 
WHERE id_cliente = 4;

-- ELIMINAR UN PRODUCTO DE LA BASE DE DATOS
DELETE FROM productos
-- ELIMINACIÓN POR ID DE PRODUCTO
WHERE id_producto = 1;


-- CONSULTAS AVANZADAS
/*
    CONSULTAS AVANZADAS
    EN ESTA SECCIÓN, COPIA LA CONSULTA QUE DESEES CONSULTAR Y PEGALO EN TU QUERY DE MySQL PARA EJECUTARLA
*/

-- OBTENER LOS PRODUCTOS VENDIDOS POR ALGUN EMPLEADO
SELECT 
-- CAMPOS A MOSTRAR
v.id_venta, 
v.fecha_venta, 
e.nombre_empleado, 
p.nombre_producto,
dv.cantidad_producto,
dv.total_producto
-- TABLAS A CONSULTAR
FROM ventas AS v
JOIN empleados AS e ON v.id_empleado = e.id_empleado
JOIN detalles_ventas AS dv ON v.id_venta = dv.id_venta
JOIN productos AS p ON dv.id_producto = p.id_producto
-- FILTRAR POR ID DE EMPLEADO
WHERE e.id_empleado = 2
-- ORDENAMIENTO
ORDER BY v.fecha_venta DESC;

-- OBTENER LISTADO DE CLIENTES POR ALGUNA CIUDAD
SELECT 
-- CAMPOS A MOSTRAR
cli.codigo_cliente AS "Codigo Cliente", 
CONCAT(cli.nombre_cliente, ' ', cli.apellido_cliente) AS "Nombre Cliente",
CONCAT(ciu.nombre_ciudad, ' - ', p.nombre_provincia) AS "Localidad"
-- TABLAS A CONSULTAR
FROM clientes AS cli
JOIN ciudades AS ciu ON cli.id_ciudad = ciu.id_ciudad
JOIN provincias AS p ON ciu.id_provincia = p.id_provincia
-- FILTRAR POR ID DE CIUDAD
WHERE ciu.id_ciudad = 2
-- ORDENAMIENTO
ORDER BY cli.id_cliente;

-- OBTENER RESUMEN DE VENTAS POR CATEGORÍA DE EMPLEADO
SELECT
-- CAMPOS A MOSTRAR
v.id_venta AS nro_venta,
v.fecha_venta AS fecha_venta,
v.total_venta AS total_venta,
ca.nombre_categoria AS categoria_empleados,
e.nombre_empleado AS nombre_empleado
-- TABLAS A CONSULTAR
FROM ventas AS v
JOIN empleados AS e ON v.id_empleado = e.id_empleado
JOIN categorias_empleados AS ca ON e.id_categoria = ca.id_categoria
-- FILTRO DE LA CATEGORIA
WHERE ca.nombre_categoria = 'Vendedor'
-- ORDENAMIENTO
ORDER BY v.fecha_venta ASC;

-- OBTENER EL TOTAL FACTURADO DENTRO DE UN RANGO DE FECHAS
SELECT 
-- CAMPOS A MOSTRAR (OPERACION SUM PARA SUMAR)
SUM(total_venta) AS total_facturado
-- TABLA A CONSULTAR
FROM ventas
-- FILTRO POR FECHA (DESDE-HASTA)
WHERE fecha_venta BETWEEN '2024-01-01' AND '2024-12-31';

-- OBTENER EL TOTAL FACTURADO POR MES EN EL RANGO DE UN AÑO
SELECT
-- EXTRAE EL AÑO DE LA COLUMNA
YEAR(fecha_venta) AS anio,
-- EXTRAE EL MES DE LA COLUMNA
MONTH(fecha_venta) AS mes,
-- SUMA EL TOTAL FACTURADO (PARA CADA MES Y AÑO ESPECIFICADO)
SUM(total_venta) AS total_facturado
FROM ventas
-- EXPECIFICAMOS LAS FECHAS A CONSULTAR (DESDE-HASTA)
WHERE fecha_venta BETWEEN '2024-01-01' AND '2024-12-31'
-- AGRUPA LOS RESULTADOS POR AÑO Y POR MES
-- LA FUNCIÓN SUM SE APLICARA A CADA GRUPO
GROUP BY YEAR(fecha_venta), MONTH(fecha_venta)
-- ORDENAMIENTO
ORDER BY anio, mes;

-- OBTENER VENTAS POR FORMA DE PAGO
SELECT 
    -- CAMPOS A MOSTRAR
    fp.nombre_pago AS "Forma de Pago",
    SUM(v.total_venta) AS "Total Ventas"
-- TABLAS A CONSULTAR
FROM ventas AS v
JOIN formas_de_pago AS fp ON v.id_forma_pago = fp.id_forma_pago
-- AGRUPA POR NOMBRE 
GROUP BY fp.nombre_pago
-- ORDENAMIENTO
ORDER BY "Total Ventas" DESC;

-- OBTENER EL PRODUCTO MÁS VENDIDO
SELECT 
    -- CAMPOS A MOSTRAR
    p.nombre_producto, 
    SUM(dv.cantidad_producto) AS total_vendido
-- TABLAS A CONSULTAR
FROM detalles_ventas AS dv
JOIN productos AS p ON dv.id_producto = p.id_producto
-- GRUPO POR CADA PRODUCTO
GROUP BY p.nombre_producto
-- ORDENAMIENTO DESCENDIENTE
ORDER BY total_vendido DESC
-- DEVUELVE SOLO UN REGISTRO
LIMIT 1;

-- OBTENER EL PROMEDIO DE VENTAS POR CADA EMPLEADO
SELECT
    e.codigo_empleado AS "Código Empleado",
    e.nombre_empleado AS "Nombre Empleado",
    AVG(v.total_venta) AS "Promedio Venta"
-- TABLAS A CONSULTAR
FROM empleados AS e
LEFT JOIN ventas AS v ON e.id_empleado = v.id_empleado
-- GRUPO POR CADA EMPLEADO
GROUP BY e.codigo_empleado, e.nombre_empleado
-- ORDENAMIENTO POR EL MAYOR PROMEDIO
ORDER BY AVG(v.total_venta) DESC;