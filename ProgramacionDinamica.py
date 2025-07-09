print("INGRESE LA CANTIDAD DE ASIENTOS:")
n = int(input())


asientos = [0] * (n + 1)
saltos = [0] * (n + 1)


for i in range(1, n + 1):
    print(f"INGRESE LOS NUMEROS DE SALTOS PERMITIDOS {i}:")
    asientos[i] = int(input())


for i in range(1, n + 1):
    saltos[i] = 9999

saltos[1] = 0

for i in range(1, n + 1):
    for j in range(1, asientos[i] + 1):
        if (i + j) <= n:
            if saltos[i] + 1 < saltos[i + j]:
                saltos[i + j] = saltos[i] + 1


print("EL MINIMO NUMERO DE SALTOS PARA LLEGAR AL FINAL SON:", saltos[n])
print(":)")
