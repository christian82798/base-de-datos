-- 7 
select categoria, avg(precio) as precio_promedio 
from productos 
where stock > 5
group by categoria 
having avg(precio) > 50; 
-- 8 
select nombre, (precio*stock) as valor_total from productos
where precio > 5000 and precio >= 15; 
-- 19 
select id_producto, sum(precio_unitario) as suma_total
from detalle_pedido
where precio_unitario > 15  
group by id_producto 
having sum(precio_unitario) > 50 limit 5; 
-- 20 
select id_pedido, id_detalle from detalle_pedido
where id_detalle > 4 and id_pedido > 10
order by cantidad desc; 
-- 21
select id_producto, sum(cantidad*precio_unitario) as valor_total
from detalle_pedido 
where id_detalle >= 2
group by id_producto
having sum(cantidad*precio_unitario) > 1000; 
-- 22 
select id_pedido, avg(precio_unitario) as precio_unitario_medio,max(cantidad) as cantidad_maxima_vendida 
from detalle_pedido 
where id_detalle > 200 
group by id_pedido 
having max(cantidad) limit 10; 
-- 23 
select id_producto, id_pedido >= 5
from detalle_pedido 
where avg(precio_unitario) > 40;
-- 24 
select id_pedido from detalle_pedido where id_detalle > 500 and precio_unitario < 100 limit 5; 

-- 13 
select id_cliente, coste_total, estado
from pedidos 
where estado = 'entregado' and coste_total > 300 limit 5; 

-- 14 
select year(fecha_pedido) as año, month(fecha_pedido) as mes
from pedidos 
where id_pedido > 10 and coste_total > 75 and estado = 'cancelado'; 

-- 16 
select id_cliente, estado, coste_total, id_pedido
from pedidos
where id_pedido > 3 and estado = 'enviado' or 'entregado' and coste_total > 50; 

-- 18 
select id_cliente, id_pedido, coste_total
from pedidos 
where coste_total > 100 and id_pedido >= 2; 
-- 1
select pais, avg(day(fecha_registro))
from clientes 
where nombre = 5 
group by pais 
having  avg(day(fecha_registro)) > 365; 

-- 5
select pais, email, fecha_registro
from clientes 
where email is not null; 

-- 9 
select categoria, precio, descripcion
from productos
where categoria = 'electronica' or 'informatica' and descripcion = 'pro' or 'premium'; 
 
 -- 10 
 select categoria, avg(stock)
 from productos  
 where id_producto > 3
 group by categoria 
 having avg(stock) < 20;










