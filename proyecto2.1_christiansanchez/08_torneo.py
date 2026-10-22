'''Archivo: 08_torneo.py
 Pide edad, autorización familiar y pago de inscripción. Las respuestas deben ser "sí" o "no"; las
edades admitidas son de 12 a 25 años, incluidos.
 Los menores de 18 necesitan autorización familiar. Todos deben haber pagado. Si se cumple todo,
permite participar.
 Si no puede participar, muestra el primer impedimento en este orden: datos no válidos, edad no
admitida, falta de autorización y falta de pago.
Pruebas mínimas: (12, no, sí); (17, sí, sí); (18, no, no). Añade una prueba con edad 26.
Comprobación: D3 y captura C7 de una participación denegada con su motivo.'''


edad = int(input("Introduce tu edad: "))
autorizacion = input("¿Tienes autorización familiar? Escribe sí o no: ")
pago = input("¿Has pagado la inscripción? Escribe sí o no: ")

if autorizacion != "sí" and autorizacion != "no":
    print("Participación denegada: autorización no válida")
elif pago != "sí" and pago != "no":
    print("Participación denegada: respuesta de pago no válida")

elif edad < 12 or edad > 25:
    print("Participación denegada: edad no admitida")

elif edad < 18 and autorizacion == "no":
    print("Participación denegada: falta autorización familiar")
