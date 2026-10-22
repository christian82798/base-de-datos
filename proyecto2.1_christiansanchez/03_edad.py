'''#Podemos comprobar si una persona es mayor de edad
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
    print("Aún eres menor de edad, no puedes votar")'''

# Podemos comprobar si una persona es mayor de edad
edad = int(input("Dime tu edad: "))

# Comprobamos que la edad esté entre 0 y 120
if edad < 0 or edad > 120:
    print("Error: la edad debe estar entre 0 y 120")

elif edad >= 18:

    print(type(edad >= 18))
    print(edad >= 18)
    print("Eres mayor de edad, puedes votar")

else:
    print(type(edad >= 18))
    print(edad >= 18)
    print("Aún eres menor de edad, no puedes votar")


