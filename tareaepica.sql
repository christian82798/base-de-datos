-- Calcula el precio promedio por categoria y muestra solo las categorías cuyo precio promedio supere los 50. 
select categoria , AVG(precio) as precio_promedio 
from productos
group by categoria 
having avg (precio) > 50; 
-- Suma el total de stock por categoria y muestra las categorías que tienen menos de 100 unidades en total.
select categoria , sum(stock) as total_stock 
from productos 
group by categoria 
having sum(stock) < 100; 
-- Cuenta cuántos productos hay en cada categoria y muestra solo aquellas categorías que tienen exactamente 1 producto. 
select categoria , count(*) as total_productos
from productos 
group by categoria 
having count(*) = 1; 
-- Encuentra el precio máximo por categoria y muestra aquellas cuyo producto más caro cueste más de 200.
select categoria , max(precio) as precio_máximo 
from productos 
group by categoria 
having max(precio) > 200; 
-- Encuentra el precio mínimo por categoria y muestra aquellas cuyo producto más barato cueste menos de 10. 
select categoria , min(precio) as precio_mínimo 
from productos 
group by categoria 
having min(precio) < 10; 
-- Filtra los productos que tienen stock mayor a 0, calcula el precio promedio por categoria y muestra las categorías con un promedio menor a 30.
select categoria , avg(precio) as precio_promedio 
from productos 
where stock > 0
group by categoria 
having avg(precio) < 30; 
-- Calcula la diferencia entre el precio máximo y el precio mínimo por categoria. Muestra solo las categorías donde esta diferencia sea mayor a 100.
select categoria , max(precio) - min(precio) as diferencia
from productos 
group by categoria
having max(precio) - min(precio) > 100; 
-- Excluye la categoría 'Ropa', suma el valor del inventario (precio * stock) por categoria y muestra solo aquellas con un valor total superior a 1000.
select categoria , sum(precio*stock) as valor_total 
from productos
where categoria <> 'ropa'
group by categoria 
having sum(precio*stock) > 1000; 

-- tabla pedidos 
-- Agrupa los pedidos por su estado y muestra los estados que tienen más de 10 pedidos asociados. 
select estado, count(*) as total_pedidos
from pedidos
group by estado 
having count(*) > 10;
-- Calcula la suma del coste_total por cada id_cliente y muestra solo los clientes que han gastado más de 1000 en total. 
select id_cliente, sum(coste_total) as total 
from pedidos
group by id_cliente
having sum(coste_total) > 1000;
-- Calcula el coste promedio de los pedidos agrupados por estado y muestra aquellos estados con un promedio superior a 50. 
select estado, avg(coste_total) as coste_promedio 
from pedidos 
group by estado 
having avg(coste_total) > 50;
-- Excluye los pedidos 'cancelados', cuenta los pedidos restantes por id_cliente y muestra los clientes con más de 2 pedidos válidos. 
select id_cliente, count(*) as total_pedidos 
from pedidos 
where estado <> 'cancelado' 
group by id_cliente
having count(*) > 2;
-- Agrupa los pedidos por la fecha exacta (sin horas, usando DATE(fecha_pedido)) y muestra los días en los que se hicieron más de 5 pedidos. 
select date(fecha_pedido) as fecha, count(*) as total_pedidos
from pedidos
group by date(fecha_pedido)
having count(*) > 5;
-- Muestra los id_cliente cuyo pedido individual más caro (MAX(coste_total)) haya sido superior a 500. 
select id_cliente, max(coste_total) as pedido_mas_caro 
from pedidos
group by id_cliente 
having max(coste_total) > 500;
-- Filtra solo los pedidos 'cancelados', agrúpalos por id_cliente y muestra los clientes que han cancelado 3 o más pedidos. 
select id_cliente, count(*) as total_cancelados 
from pedidos 
where estado <> 'cancelado' 
group by id_cliente
having count(*) >= 3;
-- Agrupa los pedidos por el mes de la fecha_pedido y muestra los meses cuyo total acumulado (SUM(coste_total)) supere los 5000. 
select month(fecha_pedido) as fecha_mes , sum(coste_total) as total_acumulado 
from pedidos 
group by month(fecha_pedido) 
having sum(coste_total) > 5000; 

-- tabla detalle_pedido 

-- Calcula la cantidad total vendida (SUM(cantidad)) por cada id_producto y muestra los productos que han vendido más de 50 unidades. 
select id_producto, sum(cantidad) as cantidad_total_vendida 
from detalle_pedido
group by id_producto 
having sum(cantidad) > 50;
-- Calcula el promedio de cantidad pedida por cada id_pedido y muestra los pedidos con un promedio superior a 3 unidades por línea. 
select id_pedido, avg(cantidad) as cantidad_promedio 
from detalle_pedido 
group by id_pedido 
having sum(cantidad) > 3;
-- Cuenta cuántas líneas de detalle (registros) tiene cada id_pedido y muestra los pedidos con más de 5 productos distintos. 
select id_pedido, count(*) as registros 
from detalle_pedido
group by id_pedido 
having count(*) > 5;
-- Calcula los ingresos generados por cada id_producto (SUM(cantidad * precio_unitario)) y muestra los que hayan generado más de 1000 de ingresos. 
select id_producto, sum(cantidad*precio_unitario) as ingresos_generados
from detalle_pedido 
group by id_producto
having sum(cantidad*precio_unitario) > 1000;
-- Agrupa por id_producto y muestra aquellos cuyo precio_unitario promedio aplicado en las ventas sea superior a 20. 
select id_producto, avg(precio_unitario) as precio_unitario_promedio
from detalle_pedido
group by id_producto 
having avg(precio_unitario) > 20;
-- Agrupa por id_pedido y muestra los pedidos cuya suma total de cantidades solicitadas (SUM(cantidad)) sea superior a 10 artículos. 
select id_pedido, sum(cantidad) as suma_total 
from detalle_pedido 
group by id_pedido 
having sum(cantidad) > 10;
-- Filtra los detalles donde el precio_unitario sea mayor a 15, agrúpalos por id_pedido y muestra los pedidos que conserven al menos 2 líneas de detalle. 
select id_pedido, count(*) as pedidos 
from detalle_pedido
where precio_unitario > 15
group by id_pedido 
having count(*) >=2;
-- Muestra los id_producto que han sido solicitados en más de 5 id_pedido diferentes (COUNT(id_pedido)).
select id_producto, count(distinct id_pedido) as total_pedidos
from detalle_pedido 
group by id_producto 
having count(distinct id_pedido) > 5; 

-- tabla pagos 

-- Suma el total_pagado agrupando por metodo_pago y muestra los métodos que han recaudado más de 2000. 
select metodo_pago, sum(total_pagado) as total_pagado 
from pagos 
group by metodo_pago
having sum(total_pagado) > 2000;
-- Calcula el promedio de pago por cada metodo_pago y muestra aquellos con un pago promedio inferior a 100. 

-- Cuenta cuántos pagos se han realizado por cada id_pedido y muestra los pedidos que tienen más de 1 pago (pagos fraccionados).
-- Muestra los metodo_pago cuyo pago individual máximo haya sido mayor a 500.
-- Agrupa los pagos por el día exacto de cobro (DATE(fecha_pago)) y muestra los días cuya recaudación total haya superado los 1000.
-- Filtra los pagos realizados en el año actual, agrúpalos por metodo_pago y muestra los que tengan más de 50 transacciones.
-- Agrupa los pagos por id_pedido y muestra los pedidos cuya suma de pagos totales exceda los 100.
-- Agrupa los pagos por el mes de la fecha_pago, calcula el promedio del total_pagado y muestra solo los meses con un ticket promedio superior a 150.









