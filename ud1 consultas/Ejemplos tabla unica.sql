-- 1. Funciones numéricas
-- 1.1. Truncar el precio de cada producto a 1 decimal 
select nombre, truncate(precio, 1) from productos; 
-- 1.2. Redondear hacia abajo (FLOOR) y hacia arriba (CEIL) el precio
select nombre, floor(precio),ceil(precio) from productos;
-- 1.3. Calcular el precio con IVA (21%) 
select nombre, precio, precio*(1.21) from productos;
-- 1.4. Descuento del 15% aplicado sobre el precio 
select nombre, precio, precio*(0.85) from productos;
-- 1.5. Desviación estándar y varianza del precio del catálogo 
select stddev(precio), variance(precio) from productos;
-- 1.6. Diferencia absoluta frente a un stock objetivo (600 uds.)
select nombre, stock, stock - 600 from productos;
-- 2. Funciones de cadena
-- 2.1. Concatenar categoría y nombre con separador usando CONCAT_WS 
select concat_ws(" - ", categoria, nombre)from productos;
-- 2.2. Extraer una subcadena del nombre de cada producto (pos. 4, longitud 5) 
select substring(nombre,4,5) from productos;
-- 2.3. Buscar la posición de una palabra dentro del nombre (por ejemplo 'Pro') 
select nombre, locate("pro",nombre) from productos;
-- 2.3. bis 
select substring(email,1,locate("@", email)-1)from clientes; 
-- 2.3. bis bis 
select email, substring(email,1,locate("@",email)-1)from clientes;
-- 2.4. Invertir el nombre de cada producto

-- 2.5. Rellenar a la izquierda el id_producto con ceros hasta 5 dígitos 

-- 2.6. Enmascarar el nombre de cliente con asteriscos según su longitud
-- 2.7. Reemplazar el símbolo '@' en el email para mostrarlo “ofuscado”