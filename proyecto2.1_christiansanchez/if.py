#If nos sirve para tomar decisiones en python
#veamos un ejemplo de como funciona

"""
nota = float(input("Introduce la nota que has sacado en el cuestionario: "))
#Con if podemos comprobar si el usuario ha aprobado o no
if nota >= 5:
    print("Has aprobado, enhorabuena")
print("Lo siento por tu suspenso, más suerte la próxima vez")
"""

"""
#Podemos comprobar si una persona es mayor de edad
edad = int(input("Dime tu edad: "))
if edad >= 18:
    #Con type (edad >=18) puedo ver que el dato es del tipo booleano
    print(type(edad >= 18))
    #Con print(edad >= 18) puedo ver qué valor booleano obteno True o False
    print(edad >= 18)
    print("Eres mayor de edad, puedes votar")
#Podemos usar "else" para dar instrucciones cuando NO se cumpla la condición if
else:
    print(type(edad >= 18))
    print(edad >= 18)
    print("Aún eres menor de edad, no puedes votar")

#Permiso para acceder a un local tipo disco que requiere ser adulto >= 18 y tener invitación/reserva

edad = int(input("Edad: "))
reserva = input("¿Tienes reserva? Escribo sí o no: ")

if edad >=18 and reserva == "sí":
    print("Puedes pasar")
else:
    print("No puedes pasar")


#Ejemplo IN RANGE. Comprobar que un dato está dentro de un intervalo, por ejemplo entre 1 y 10 --> range(1,11)

numero = int(input("Introduce un número entero: "))
if numero in range(1,11):
    print("El número",numero,"está entre 1 y 10, ambos incluidos")
else:
    print("El número está fuera del intervalo")

#Ejercicio: Usar if, el operador %, y el operador == para comprobar si un número entero es par o impar
numero = int(input("Introduce un número entero: "))
resto = numero % 2
if resto == 0:
    print(numero,"es par")
else:
    print(numero,"es impar")

#Ejercicio: Cabalgata de los reyes magos
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
    print("Cuidado, hay más niños que caramelos")
"""

