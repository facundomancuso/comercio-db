-- DEFINIMOS LA DB A USAR
USE comercio;

-- CREACIÓN DE TABLA PROVINCIAS
CREATE TABLE provincias (
	id_provincia INT NOT NULL auto_increment,
    nombre_provincia VARCHAR(50) NOT NULL UNIQUE,
    PRIMARY KEY (id_provincia)
);

-- CREACIÓN DE TABLA CIUDADES
CREATE TABLE ciudades (
	id_ciudad INT NOT NULL auto_increment,
    id_provincia INT NOT NULL,
    nombre_ciudad VARCHAR(30) NOT NULL,
    -- UNICO PARA QUE NO SE REPITA UN CODIGO POSTAL
    cp_ciudad VARCHAR(4) NOT NULL UNIQUE,
    -- LLAVE PRIMARIA
    PRIMARY KEY (id_ciudad),
);

-- CREACION DE TABLA CLIENTES
CREATE TABLE clientes (
    id_cliente INT NOT NULL AUTO_INCREMENT,
    -- UNICO PARA QUE NO SE REPITA EL CODIGO
    codigo_cliente VARCHAR(10) NOT NULL UNIQUE,
    nombre_cliente VARCHAR(50) NOT NULL,
    apellido_cliente VARCHAR(50) NOT NULL,
    -- UNICO PARA QUE NO SE REPITA EL DNI
    dni_cliente VARCHAR(10) NOT NULL UNIQUE,
    edad_cliente INT NOT NULL,
    direccion_cliente VARCHAR(255) NOT NULL,
    id_ciudad INT NOT NULL,
    -- UNICO PARA QUE NO SE REPITA EL EMAIL
    email_cliente VARCHAR(255) NOT NULL UNIQUE,
    telefono_cliente VARCHAR(15) NOT NULL,
    -- 1 PARA ACTIVO, 0 PARA INACTIVO, POR DEFECTO ACTIVO (1)
    estado_cliente BIT NOT NULL DEFAULT 1,
    -- LLAVE PRIMARIA
    PRIMARY KEY (id_cliente)
);

-- CREACION DE TABLA CATEGORIAS EMPLEADOS
CREATE TABLE categorias_empleados (
    id_categoria INT NOT NULL AUTO_INCREMENT,
    -- UNICO PARA QUE NO SE REPITA LA CATEGORIA
    nombre_categoria VARCHAR(20) NOT NULL UNIQUE,
    -- LLAVE PRIMARIA
    PRIMARY KEY (id_categoria)
);

-- CREACION DE TABLA EMPLEADOS
CREATE TABLE empleados (
    id_empleado INT NOT NULL AUTO_INCREMENT,
    id_categoria INT NOT NULL,
    -- UNICO PARA QUE NO SE REPITA EL CODIGO
    codigo_empleado VARCHAR(10) NOT NULL UNIQUE,
    nombre_empleado VARCHAR(50) NOT NULL,
    apellido_empleado VARCHAR(50) NOT NULL,
    -- UNICO PARA QUE NO SE REPITA EL DNI
    dni_empleado VARCHAR(10) NOT NULL UNIQUE,
    edad_empleado INT NOT NULL,
    direccion_empleado VARCHAR(255) NOT NULL,
    id_ciudad INT NOT NULL,
    -- UNICO PARA QUE NO SE REPITA EL EMAIL
    email_empleado VARCHAR(255) NOT NULL UNIQUE,
    telefono_empleado VARCHAR(15) NOT NULL,
    -- 1 PARA ACTIVO, 0 PARA INACTIVO, POR DEFECTO ACTIVO (1)
    estado_empleado BIT NOT NULL DEFAULT 1,
    -- LLAVE PRIMARIA
    PRIMARY KEY (id_empleado)
);

-- CREACION DE TABLA RUBRO
CREATE TABLE rubros_productos (
    id_rubro INT NOT NULL AUTO_INCREMENT,
    -- UNICO PARA QUE NO SE REPITA EL NOMBRE DEL RUBRO
    nombre_rubro VARCHAR(50) NOT NULL UNIQUE,
    -- LLAVE PRIMARIA
    PRIMARY KEY (id_rubro)
);

-- CREACION DE TABLA SUBRUBRO
CREATE TABLE subrubros_productos (
    id_subrubro INT NOT NULL AUTO_INCREMENT,
    id_rubro INT NOT NULL,
    -- UNICO PARA QUE NO SE REPITA EL NOMBRE DEL SUBRUBRO
    nombre_subrubro VARCHAR(50) NOT NULL UNIQUE,
    -- LLAVE PRIMARIA
    PRIMARY KEY (id_subrubro)
);

-- CREACION DE TABLA PRODUCTOS
CREATE TABLE productos (
    id_producto INT NOT NULL AUTO_INCREMENT,
    -- UNICO PARA QUE NO SE REPITA EL CODIGO
    codigo_producto VARCHAR(10) NOT NULL UNIQUE,
    id_subrubro INT NOT NULL,
    -- UNICO PARA QUE NO SE REPITA EL NOMBRE
    nombre_producto VARCHAR(100) NOT NULL UNIQUE,
    descripcion_producto VARCHAR(255) NOT NULL,
    precio_producto DECIMAL(10, 2),
    -- POR DEFECTO STOCK EN 0
    stock_producto INT NOT NULL DEFAULT 0,
    -- LLAVE PRIMARIA
    PRIMARY KEY (id_producto)
);

-- CREACION DE TABLA VENTAS
CREATE TABLE ventas (
    id_venta INT NOT NULL AUTO_INCREMENT,
    id_cliente INT NOT NULL,
    id_empleado INT NOT NULL,
    fecha_venta DATE NOT NULL,
    subtotal_venta DECIMAL(10, 2),
    subtotal_iva DECIMAL(10, 2),
    total_venta DECIMAL(10, 2),
    -- LLAVE PRIMARIA
    PRIMARY KEY (id_venta)
);

-- CREACION DE TABLA DETALLES VENTAS
CREATE TABLE detalles_ventas (
    id_detalle INT NOT NULL AUTO_INCREMENT,
    id_venta INT NOT NULL,
    id_producto INT NOT NULL,
    precio_unitario_producto DECIMAL(10, 2),
    cantidad_producto INT NOT NULL,
    porcentaje_iva DECIMAL(10, 2),
    subtotal_producto DECIMAL(10, 2),
    subtotal_iva DECIMAL(10, 2),
    total_producto DECIMAL(10, 2),
    -- LLAVE PRIMARIA
    PRIMARY KEY (id_detalle)
);

-- CREACION DE LA TABLA FORMAS DE PAGO
CREATE TABLE formas_de_pago (
    id_forma_pago INT NOT NULL AUTO_INCREMENT,
    nombre_pago VARCHAR(20) NOT NULL UNIQUE,
    PRIMARY KEY (id_forma_pago)
);

-- CREACION DE LA TABLA ESTADO DE LA VENTA
CREATE TABLE estados_ventas (
    id_estado_venta INT NOT NULL AUTO_INCREMENT,
    nombre_estado VARCHAR(20) NOT NULL UNIQUE,
    PRIMARY KEY (id_estado_venta)
);

-- AGREGACION DE CAMPOS A LA TABLA VENTAS
ALTER TABLE ventas 
ADD COLUMN id_forma_pago INT NOT NULL;
ALTER TABLE ventas 
ADD COLUMN id_estado_venta INT NOT NULL;
