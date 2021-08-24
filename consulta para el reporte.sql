SELECT
factura_mantenimiento.id_factura_mantenimiento,
factura_mantenimiento.fecha_factura_mantenimiento,
factura_mantenimiento.subtotal_factura_mantenimiento,
factura_mantenimiento.iva_factura_mantenimiento,
factura_mantenimiento.total_factura_mantenimiento,
producto.nombre_producto,
producto.descripcion_producto,
producto.precio_producto,
clasificacion_producto.nombre_clasificacion_producto,
cliente.cedula_cliente,
cliente.nombres_cliente,
cliente.apellidos_cliente,
empleado.cedula_empleado,
empleado.nombres_empleado,
empleado.apellidos_empleado
from factura_mantenimiento
INNER JOIN public.producto on producto.id_producto = factura_mantenimiento.id_producto
INNER JOIN public.clasificacion_producto on clasificacion_producto.id_clasificacion_producto = producto.id_clasificacion_producto
INNER JOIN public.factura_mantenimiento on factura_mantenimiento.id_factura_mantenimiento = factura_mantenimiento.id_factura_mantenimiento
INNER JOIN public.cliente on cliente.id_cliente = factura_mantenimiento.id_cliente
INNER JOIN public.empleado on empleado.id_empleado = factura_mantenimiento.id_empleado
where factura_mantenimiento.id_factura_mantenimiento = 12;