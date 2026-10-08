select categoria , count (id_producto) from productos group by categoria; 
select categoria, 
		avg(precio) as precio_medio
from productos
group by categoria 
having avg (precio) > 100
order by precio_medio desc;


-- Agrupa los clientes por pais y muestra solo aquellos países que tengan más de 5 clientes registrados. 
select pais 
from clientes 
group by pais
having count(*) > 5; 
-- Agrupa a los clientes por el año de su fecha_registro (usando la función YEAR()) y muestra los años en los que se registraron más de 10 clientes. 
select year(fecha_registro) 
from clientes 
group by year(fecha_registro) 
having count(id_cliente) > 10; 
-- Encuentra los pedidos cuyo coste total sea nulo (por error del sistema). 
select * from pedidos where coste_total is null; 

select pais , count(id_cliente)
from clientes 
where pais not in ('España') 
group by pais 
having count(id_cliente) >=2;





