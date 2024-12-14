-- DEFINIMOS LA DB A USAR
use comercio;

-- RELACIÓN TABLAS ciudades Y provincias
ALTER TABLE ciudades
ADD CONSTRAINT fk_ciudades_provincias
FOREIGN KEY (id_provincia)
REFERENCES provincias(id_provincia);

-- RELACIÓN TABLAS clientes Y ciudades
ALTER TABLE clientes
ADD CONSTRAINT fk_clientes_ciudades
FOREIGN KEY (id_ciudad)
REFERENCES ciudades(id_ciudad);

-- RELACIÓN TABLAS empleados Y categorias
ALTER TABLE empleados
ADD CONSTRAINT fk_empleados_categorias
FOREIGN KEY (id_categoria)
REFERENCES categorias_empleados(id_categoria);

-- RELACIÓN TABLAS empleados Y ciudades
ALTER TABLE empleados
ADD CONSTRAINT fk_empleados_ciudades
FOREIGN KEY (id_ciudad)
REFERENCES ciudades(id_ciudad);

-- RELACIÓN TABLAS subrubros Y rubros
ALTER TALBE subrubros_productos
ADD CONSTRAINT fk_subrubros_rubros
FOREIGN KEY (id_rubro)
REFERENCES rubros_productos(id_rubro);

-- RELACIÓN TABLAS productos Y subrubros
ALTER TABLE productos
ADD CONSTRAINT fk_productos_subrubros
FOREIGN KEY (id_subrubro)
REFERENCES subrubros_productos(id_subrubro);

-- RELACIÓN TABLAS ventas Y clientes
ALTER TABLE ventas
ADD CONSTRAINT fk_ventas_clientes
FOREIGN KEY (id_cliente)
REFERENCES clientes(id_cliente);

-- RELACIÓN TABLAS ventas Y empleados
ALTER TABLE ventas
ADD CONSTRAINT fk_ventas_empleados
FOREIGN KEY (id_empleado)
REFERENCES empleados(id_empleado);

-- RELACIÓN TABLAS detalles_ventas Y ventas
ALTER TABLE detalles_ventas
ADD CONSTRAINT fk_detalles_ventas_ventas
FOREIGN KEY (id_venta)
REFERENCES ventas(id_venta);

-- RELACIÓN TABLAS detalles_ventas Y productos
ALTER TABLE detalles_ventas
ADD CONSTRAINT fk_detalles_ventas_productos
FOREIGN KEY (id_producto)
REFERENCES productos(id_producto);

-- RELACIÓN TABLAS ventas Y formas_de_pago
ALTER TABLE ventas 
ADD CONSTRAINT fk_ventas_pagos 
FOREIGN KEY (id_forma_pago) 
REFERENCES formas_de_pago(id_forma_pago);

-- RELACIÓN TABLAS ventas Y estados_ventas
ALTER TABLE ventas
ADD CONSTRAINT fk_ventas_estados
FOREIGN KEY (id_estado_venta)
REFERENCES estados_ventas(id_estado_venta);
