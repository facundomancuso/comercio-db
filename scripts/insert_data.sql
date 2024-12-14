-- DEFINIMOS LA DB A USAR
USE comercio;

-- INSERCIÓN DE REGISTROS A TABLA PROVINCIAS
INSERT INTO provincias (nombre_provincia) 
VALUES 
('Buenos Aires'),
('Catamarca'),
('Chaco'),
('Chubut'),
('CABA'),
('Córdoba'),
('Corrientes'),
('Entre Ríos'),
('Formosa'),
('Jujuy'),
('La Pampa'),
('La Rioja'),
('Mendoza'),
('Misiones'),
('Neuquén'),
('Río Negro'),
('Salta'),
('San Juan'),
('San Luis'),
('Santa Cruz'),
('Santa Fe'),
('Santiago del Estero'),
('Tierra del Fuego'),
('Tucumán');

-- INSERCIÓN DE REGISTROS A LA TABLA CIUDADES
INSERT INTO ciudades (id_provincia, nombre_ciudad, cp_ciudad)
VALUES
-- Buenos Aires
(1, 'La Plata', '1900'),
(1, 'Mar del Plata', '7600'),
-- Catamarca
(2, 'San Fernando del Valle de Catamarca', '4700'),
(2, 'Belén', '4740'),
-- Chaco
(3, 'Resistencia', '3500'),
(3, 'Sáenz Peña', '3730'),
-- Chubut
(4, 'Rawson', '9100'),
(4, 'Trelew', '9103'),
-- CABA
(5, 'Buenos Aires', 'C1000'),
(5, 'Caballito', 'C1406'),
-- Córdoba
(6, 'Córdoba', '5000'),
(6, 'Río Cuarto', '5800'),
-- Corrientes
(7, 'Corrientes', '3400'),
(7, 'Goya', '3450'),
-- Entre Ríos
(8, 'Paraná', '3100'),
(8, 'Concordia', '3200'),
-- Formosa
(9, 'Formosa', '3600'),
(9, 'Clorinda', '3605'),
-- Jujuy
(10, 'San Salvador de Jujuy', '4600'),
(10, 'Palpalá', '4615'),
-- La Pampa
(11, 'Santa Rosa', '6300'),
(11, 'General Pico', '6360'),
-- La Rioja
(12, 'La Rioja', '5300'),
(12, 'Chilecito', '5330'),
-- Mendoza
(13, 'Mendoza', '5500'),
(13, 'San Rafael', '5600'),
-- Misiones
(14, 'Posadas', '3300'),
(14, 'Eldorado', '3370'),
-- Neuquén
(15, 'Neuquén', '8300'),
(15, 'Cutral Có', '8340'),
-- Río Negro
(16, 'Viedma', '8500'),
(16, 'Cipolletti', '8324'),
-- Salta
(17, 'Salta', '4400'),
(17, 'Tartagal', '4410'),
-- San Juan
(18, 'San Juan', '5400'),
(18, 'Rawson', '5410'),
-- San Luis
(19, 'San Luis', '5700'),
(19, 'Villa Mercedes', '5730'),
-- Santa Cruz
(20, 'Río Gallegos', '9400'),
(20, 'Caleta Olivia', '9011'),
-- Santa Fe
(21, 'Santa Fe', '3000'),
(21, 'Rosario', '2000'),
-- Santiago del Estero
(22, 'Santiago del Estero', '4200'),
(22, 'Termas de Río Hondo', '4220'),
-- Tierra del Fuego
(23, 'Ushuaia', '9410'),
(23, 'Río Grande', '9420'),
-- Tucumán
(24, 'San Miguel de Tucumán', '4000'),
(24, 'Concepción', '4152');

-- INSERCIÓN DE REGISTROS A LA TABLA CLIENTES
INSERT INTO clientes (codigo_cliente, nombre_cliente, apellido_cliente, dni_cliente, edad_cliente, direccion_cliente, id_ciudad, email_cliente, telefono_cliente, estado_cliente) 
VALUES
('C001', 'Juan', 'Pérez', '20325478901', 35, 'Av. Rivadavia 1000, Buenos Aires', 1, 'juan.perez@mail.com', '1123456789', 1),
('C002', 'Ana', 'Gómez', '20325478902', 28, 'Calle Falsa 123, La Plata', 2, 'ana.gomez@mail.com', '2212345678', 1),
('C003', 'Carlos', 'Sánchez', '20325478903', 45, 'Av. Corrientes 5000, Buenos Aires', 1, 'carlos.sanchez@mail.com', '1145678901', 1),
('C004', 'Laura', 'Rodríguez', '20325478904', 38, 'Calle San Martín 2345, Córdoba', 6, 'laura.rodriguez@mail.com', '3512345678', 1),
('C005', 'Pedro', 'Martínez', '20325478905', 50, 'Calle Libertador 4000, Mendoza', 13, 'pedro.martinez@mail.com', '2612345678', 1),
('C006', 'Lucía', 'Fernández', '20325478906', 32, 'Av. Independencia 230, Rosario', 21, 'lucia.fernandez@mail.com', '3412345678', 1),
('C007', 'Jorge', 'López', '20325478907', 29, 'Calle Belgrano 100, Salta', 17, 'jorge.lopez@mail.com', '3872345678', 1),
('C008', 'Marta', 'González', '20325478908', 41, 'Av. San Juan 1200, Tucumán', 24, 'marta.gonzalez@mail.com', '3812345678', 1),
('C009', 'Luis', 'Pérez', '20325478909', 55, 'Calle Los Tilos 2000, Neuquén', 15, 'luis.perez@mail.com', '2992345678', 1),
('C010', 'Carla', 'Sosa', '20325478910', 38, 'Av. Los Andes 500, Santa Fe', 21, 'carla.sosa@mail.com', '3422345678', 1);

-- INSERCIÓN DE REGISTROS A LA TABLA CATEGORIAS EMPLEADOS
INSERT INTO categorias_empleados (nombre_categoria)
VALUES
('Administrador'),
('Gerente'),
('Vendedor');

-- INSERCIÓN DE REGISTROS A LA TABLA EMPLEADOS
INSERT INTO empleados (id_categoria, codigo_empleado, nombre_empleado, apellido_empleado, dni_empleado, edad_empleado, direccion_empleado, id_ciudad, email_empleado, telefono_empleado, estado_empleado) 
VALUES
(1, 'E001', 'Juan', 'Gómez', '20325478901', 34, 'Av. Rivadavia 1000, Buenos Aires', 1, 'juan.gomez@mail.com', '1123456789', 1),
(2, 'E002', 'Ana', 'Rodríguez', '20325478902', 28, 'Calle Falsa 123, Córdoba', 6, 'ana.rodriguez@mail.com', '3512345678', 1),
(3, 'E003', 'Carlos', 'Fernández', '20325478903', 40, 'Calle San Martín 2000, Mendoza', 13, 'carlos.fernandez@mail.com', '2612345678', 1),
(1, 'E004', 'Laura', 'Sánchez', '20325478904', 29, 'Calle Libertador 5000, Tucumán', 24, 'laura.sanchez@mail.com', '3812345678', 1);

-- INSERCIÓN DE REGISTROS A LA TABLA RUBROS
INSERT INTO rubros_productos (nombre_rubro) 
VALUES
('Computación'),
('Electrónica'),
('Telefonía'),
('Redes y Conectividad'),
('Periféricos');

-- INSERCIÓN DE REGISTROS A LA TABLA SUBRUBROS
INSERT INTO subrubros_productos (id_rubro, nombre_subrubro) 
VALUES
(1, 'Laptops'),
(1, 'Componentes PC'),
(1, 'Software'),
(2, 'Cámaras de Seguridad'),
(2, 'Televisores'),
(2, 'Reproductores de Audio'),
(3, 'Smartphones'),
(3, 'Accesorios para móviles'),
(4, 'Routers'),
(5, 'Teclados y Ratones');

-- INSERCIÓN DE REGISTROS A LA TABLA PRODUCTOS
INSERT INTO productos (codigo_producto, id_subrubro, nombre_producto, descripcion_producto, precio_producto, stock_producto)
VALUES
('PROD001', 1, 'Camiseta Deportiva', 'Camiseta deportiva de algodón, ideal para hacer ejercicio', 25.50, 100),
('PROD002', 2, 'Laptop Gamer', 'Laptop con procesador i7, 16GB de RAM y tarjeta gráfica RTX 3060', 1200.00, 50),
('PROD003', 3, 'Auriculares Bluetooth', 'Auriculares inalámbricos con cancelación de ruido y carga rápida', 85.00, 150),
('PROD004', 4, 'Zapatillas Running', 'Zapatillas deportivas para correr, con amortiguación avanzada', 60.75, 75),
('PROD005', 5, 'Smartwatch', 'Reloj inteligente con monitor de frecuencia cardíaca y GPS integrado', 150.00, 200),
('PROD006', 6, 'Tablet Android', 'Tablet con pantalla de 10 pulgadas, ideal para leer y navegar', 180.00, 30),
('PROD007', 7, 'Cámara Fotográfica', 'Cámara digital con lente intercambiable y 24 megapíxeles', 800.00, 40),
('PROD008', 8, 'Silla de Oficina', 'Silla ergonómica ajustable con soporte lumbar', 120.00, 20),
('PROD009', 9, 'Teclado Mecánico', 'Teclado mecánico retroiluminado para gamers', 70.00, 90),
('PROD010', 10, 'Mochila Escolar', 'Mochila con varios compartimentos y diseño resistente al agua', 35.00, 110);

-- INSERCIÓN DE REGISTROS A LA TABLA FORMAS DE PAGO
INSERT INTO formas_de_pago (nombre_pago)
VALUES
('Efectivo'),
('Débito'),
('Crédito');

-- INSERCIÓN DE REGISTROS A LA TABLA ESTADOS VENTAS
INSERT INTO estados_ventas (nombre_estado)
VALUES
('Abonada'),
('Pendiente'),
('Anulada');

-- INSERCIÓN DE REGISTROS A LA TABLA VENTAS
INSERT INTO ventas (id_cliente, id_empleado, fecha_venta, subtotal_venta, subtotal_iva, total_venta)
VALUES
(1, 1, '2024-12-01', 500.00, 90.00, 590.00, 1, 1),
(2, 2, '2024-12-02', 350.00, 63.00, 413.00, 2, 1),
(3, 3, '2024-12-03', 1200.00, 216.00, 1416.00, 3, 2),
(4, 4, '2024-12-04', 800.00, 144.00, 944.00, 3, 3),
(5, 1, '2024-12-05', 450.00, 81.00, 531.00, 2, 2),
(6, 2, '2024-12-06', 300.00, 54.00, 354.00, 1, 3),
(7, 3, '2024-12-07', 600.00, 108.00, 708.00, 3, 1),
(8, 4, '2024-12-08', 250.00, 45.00, 295.00, 1, 1),
(9, 1, '2024-12-09', 1000.00, 180.00, 1180.00, 2, 1),
(10, 2, '2024-12-10', 700.00, 126.00, 826.00, 1, 1);

-- INSERCIÓN DE REGISTROS A LA TABLA DETALLES_VENTA
INSERT INTO detalles_ventas (id_venta, id_producto, precio_unitario_producto, cantidad_producto, porcentaje_iva, subtotal_producto, subtotal_iva, total_producto)
VALUES
(1, 1, 25.50, 5, 18.00, 127.50, 22.95, 150.45),
(1, 3, 85.00, 3, 18.00, 255.00, 45.90, 300.90),
(2, 2, 1200.00, 1, 18.00, 1200.00, 216.00, 1416.00),
(2, 4, 60.75, 2, 18.00, 121.50, 21.87, 143.37),
(3, 5, 150.00, 2, 18.00, 300.00, 54.00, 354.00),
(3, 6, 180.00, 3, 18.00, 540.00, 97.20, 637.20),
(4, 7, 800.00, 1, 18.00, 800.00, 144.00, 944.00),
(5, 8, 120.00, 1, 18.00, 120.00, 21.60, 141.60),
(6, 9, 70.00, 4, 18.00, 280.00, 50.40, 330.40),
(7, 10, 35.00, 5, 18.00, 175.00, 31.50, 206.50);
