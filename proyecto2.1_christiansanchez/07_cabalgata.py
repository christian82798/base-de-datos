'''#Ejercicio: Cabalgata de los reyes magos
#Los pajes tienen una cantidad de caramelos que introduce el usuario
#El número de niños en las calles por donde pasan los reyes también lo introduce el usuario
#Se quiere saber cuántos caramelos enteros hay por cada niño y cuantos caramelos sobran
#Si la cantidad de caramelos es menor que el número de niños debe salir un aviso
caramelos = int(input("Introduce la cantidad de caramelos: "))
peques = int(input("Introduce cuántos niños habrá en el desfile: "))
if caramelos >= peques:
    reparto= caramelos//peques
    sobran= caramelos % peques
    print("Hay", reparto,"caramelos por niño")
    print("Y sobran", sobran,"caramelos")
else:
    print("Cuidado, hay más niños que caramelos")'''


# Pedimos la cantidad de caramelos y el número de niños
caramelos = int(input("Introduce la cantidad de caramelos: "))
peques = int(input("Introduce cuántos niños habrá en el desfile: "))

if caramelos < 0:
    print("Aviso: la cantidad de caramelos no puede ser negativa")
elif peques <= 0:
    print("Aviso: debe haber más de cero niños")
elif caramelos < peques:
    print("Cuidado, hay más niños que caramelos")
else:
    reparto = caramelos // peques
    sobran = caramelos % peques
    print("Hay", reparto, "caramelos por niño")
    print("Y sobran", sobran, "caramelos")


