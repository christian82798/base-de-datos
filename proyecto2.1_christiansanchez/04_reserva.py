'''#Permiso para acceder a un local tipo disco que requiere ser adulto >= 18 y tener invitación/reserva

edad = int(input("Edad: "))
reserva = input("¿Tienes reserva? Escribo sí o no: ")

if edad >=18 and reserva == "sí":
    print("Puedes pasar")
else:
    print("No puedes pasar")'''

edad = int(input("Edad: "))
reserva = input("¿Tienes reserva? Escribe sí o no: ")

if edad < 0 or edad > 120:
    print("Aviso: la edad debe estar entre 0 y 120")

elif reserva != "sí" and reserva != "no":
    print("Aviso: debes responder únicamente sí o no")

elif edad >= 18 and reserva == "sí":
    print("Puedes pasar")

else:
    print("No puedes pasar")