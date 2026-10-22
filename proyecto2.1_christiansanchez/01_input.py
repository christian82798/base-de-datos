'''nombre = input("Nombre: ")
edad = input("Edad: ")
print("Hola,", nombre)
print(type(edad))
print(edad + "1")'''
# Antes, input() devolvía un str, aunque escribiéramos 16.
# Por eso, "16" + "1" daba "161", porque unía textos.
# Con int(), la edad se convierte en entero y 16 + 1 da 17.
# Con float(), la altura se convierte en un número decimal.
nombre = input("Nombre: ")
edad = int(input("Edad: "))
altura = float(input("Altura: "))
print("Hola,", nombre)
print(type(edad))
print(edad + 1)
print("Tu altura es:", altura)