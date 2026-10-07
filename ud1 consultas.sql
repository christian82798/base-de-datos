-- Mostrar todos los clientes registrados 
select *  from clientes;
-- Mostrar todos los productos disponibles 
select * from productos;
-- Mostrar todos los pedidos realizados 
select * from pedidos; 
-- Mostrar solo el nombre y el email de todos los clientes
select nombre , email from clientes;
-- Mostrar solo el nombre y el precio de todos los productos
select nombre , precio from productos;
-- Mostrar solo el nombre y el estado de todos los pedidos 
select id_pedido , estado from pedidos; 
-- Mostrar los productos ordenados por precio de mayor a menor 
select * from productos order by precio desc;
-- Mostrar los pedidos ordenados por fecha de pedido de más reciente a más antigua
select * from pedidos order by fecha_pedido desc;
-- Mostrar los 5 primeros clientes registrados 
select * from clientes limit 5;
-- Mostrar los 3 últimos pedidos realizados 
select * from pedidos order by fecha_pedido desc limit 3;
-- Mostrar los productos cuyo precio esté entre 100 y 500 euros 
select * from productos where precio between 100 and 500;
-- Mostrar los clientes que sean de España 
select * from clientes where pais = "España"; 
-- Mostrar los pedidos que tengan un estado que no sea 'pendiente' 
select * from pedidos where estado <> "pendiente";
-- Mostrar los productos cuyo nombre contenga la palabra 'Laptop'
select * from productos where nombre like '%Laptop%';
-- Buscar productos cuyo nombre comiencen por 'Laptop' o 'laptop' 
select * from productos where nombre like '%Laptop%';
-- Mostrar los clientes que tengan un email que contenga '@example.com' 
select * from clientes where email like '%@example.com%';
-- Mostrar los productos cuya categoría sea 'Electrónica' o 'Muebles' usando el operador IN 
select * from productos where categoria in ('electrónica' , 'muebles');
-- Mostrar los pedidos que tengan un total entre 100 y 500 euros 
select * from pedidos where coste_total between 100 and 500;
-- Obtener la longitud del nombre de cada cliente 

-- Obtener el total de pedidos realizados

-- Obtener el precio promedio de los productos

-- Obtener el precio más bajo de los productos

-- Obtener el precio más alto de los productos



-- Convertir el nombre de los productos a mayúsculas

-- Convertir el nombre de los clientes a minúsculas

-- Obtener los primeros 3 caracteres del nombre de cada producto

-- Obtener los últimos 3 caracteres del nombre de cada producto



-- Obtener la fecha de hoy

-- Calcular cuántos días han pasado desde el registro de cada cliente hasta hoy