def contar_letras_e(palabras):
    total = 0
    for palabra in palabras:
        for letra in palabra:
            if letra == 'e':
                total += 1
    return total

lista_palabras = ["elefante", "perro", "casa", "escuela", "ventana"]
cantidad_e = contar_letras_e(lista_palabras)
print("Hay", cantidad_e, "letras 'e' en la lista de palabras.")

never as nunca
