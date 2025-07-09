def buscarSaltos(posicion, asientos, n):

    if posicion >= n:
        minimo = 0
    else:
        minimo = 9999 
        for i in range(1, asientos[posicion] + 1):
            if (posicion + i) <= n:
                saltosTemporal = buscarSaltos(posicion + i, asientos, n)
                saltosTemporal = saltosTemporal + 1

                if saltosTemporal < minimo:
                    minimo = saltosTemporal

    return minimo


print("INGRESE LA CANTIDAD DE ASIENTOS :")
n = int(input())


asientos = [0] * (n + 1)  # +1 porque no usaremos la posición 0

for i in range(1, n + 1):
    print(f"INGRESE LOS NUMEROS DE SALTOS PERMITIDOS {i}:")
    asientos[i] = int(input())

print("NUMERO DE ASIENTOS")
for i in range(1, n + 1):
    print(f"ASIENTO {i}: SALTO MAXIMO = {asientos[i]}")

print("-------------------------------------------")

resultado = buscarSaltos(1, asientos, n)

print("EL MINIMO NUMERO DE SALTOS PARA LLEGAR AL FINAL SON:", resultado)
