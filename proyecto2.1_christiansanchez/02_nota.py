'''nota = float(input("Introduce la nota que has sacado en el cuestionario: "))

# Con if podemos comprobar si el usuario ha aprobado o no
if nota >= 5:
    print("Has aprobado, enhorabuena")

print("Lo siento por tu suspenso, más suerte la próxima vez")'''

#correccion
nota = float(input("Introduce la nota que has sacado en el cuestionario: "))
if nota < 0 or nota > 10:
    print("La nota no es válida. Debe estar entre 0 y 10")
else:

    if nota >= 5:
        print("Has aprobado, enhorabuena")
    else:
        print("Lo siento por tu suspenso, más suerte la próxima vez")
