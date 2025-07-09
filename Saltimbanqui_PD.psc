Algoritmo Saltimbanqui_PD
	
  
    Definir n, i, j Como Entero
	
	Escribir "PROGRAMACION DINAMICA"
    Escribir "INGRESE LA CANTIDAD DE ASIENTOS:"
    Leer n
	

    Dimension asientos[n]
    Dimension saltos[n]
	

    Para i <- 1 Hasta n Hacer
        Escribir "INGRESE LOS NUMEROS DE SALTOS PERMITIDOS ", i, ":"
        Leer asientos[i]
    FinPara
	

    Para i <- 1 Hasta n Hacer
        saltos[i] <- 9999  
    FinPara
	
    saltos[1] <- 0
	

    Para i <- 1 Hasta n Hacer
        Para j <- 1 Hasta asientos[i] Hacer
            Si (i + j) <= n Entonces
                Si saltos[i] + 1 < saltos[i + j] Entonces
                    saltos[i + j] <- saltos[i] + 1
                FinSi
            FinSi
        FinPara
    FinPara
	

    Escribir "EL MINIMO NUMERO DE SALTOS PARA LLEGAR AL FINAL SON: ", saltos[n]

FinAlgoritmo

