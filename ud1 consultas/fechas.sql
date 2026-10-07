-- Funciones de fecha
-- Obtener la fecha y hora actual (NOW)  
select adddate(now(), interval 2 hour) , now();
-- Formatear la fecha de pedido como “YYYY-MM” 
select concat_ws("-",year(now()),month(now())); 
select date_format(now(), "%d-%m-%Y");

 -- Extraer el trimestre (QUARTER) de la fecha de pedido
-- 3.4.ultimo dÃia del mes de cada pedido
-- 3.5. Diferencia en meses desde el registro de cada cliente hasta hoy 
select datediff(fecha_registro,now()) from clientes;
-- 3.6. Semana del año de cada pago (YEARWEEK)
-- 3.7. Restar 2 horas a la fecha/hora de cada pedido (SUBTIME)
-- 3.8. Sumar 10 minutos a la fecha/hora de cada pago (ADDTIME) 
