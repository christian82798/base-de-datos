'''#Ejercicio: Usar if, el operador %, y el operador == para comprobar si un número entero es par o impar
numero = int(input("Introduce un número entero: "))
resto = numero % 2
if resto == 0:
    print(numero,"es par")
else:
    print(numero,"es impar")'''


numero = int(input("Introduce un número entero: "))

resto = numero % 2
print("El resto de dividir", numero, "entre 2 es", resto)

if resto == 0:
    print(numero, "es par")
else:
    print(numero, "es impar")

if numero % 5 == 0:
    print(numero, "es múltiplo de 5")
else:
    print(numero, "no es múltiplo de 5")