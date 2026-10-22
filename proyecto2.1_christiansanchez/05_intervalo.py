'''#Ejemplo IN RANGE. Comprobar que un dato está dentro de un intervalo, por ejemplo entre 1 y 10 --> range(1,11)

numero = int(input("Introduce un número entero: "))
if numero in range(1,11):
    print("El número",numero,"está entre 1 y 10, ambos incluidos")
else:
    print("El número está fuera del intervalo")'''

numero = int(input("Introduce un número entero: "))

if numero in range(12, 18):
    print("El número", numero, "está entre 12 y 17, ambos incluidos")
else:
    print("El número está fuera del intervalo")
