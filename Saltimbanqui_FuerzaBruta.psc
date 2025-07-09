Algoritmo Saltimbanqui_FuerzaBruta
	

    Definir n, i, resultado Como Entero
	
	Escribir "FUERZA BRUTA"
    Escribir "INGRESE LA CANTIDAD DE ASIENTOS :"
	
	Leer n
    
	Dimension asientos[n]
    
	Para i <- 1 Hasta n Hacer
        Escribir "INGRESE LOS NUMEROS DE SALTOS PERMITIDOS ", i, ":"
        Leer asientos[i]
	FinPara
	
	Escribir "NUMERO DE ASIENTOS"
    
	Para i <- 1 Hasta n Hacer
        Escribir "ASIENTO ", i, ": SALTO MAXIMO = ", asientos[i]
    FinPara
	
	
	Escribir "-------------------------------------------"
    resultado <- buscarSaltos(1, asientos, n)
    Escribir "EL MINIMO NUMERO DE SALTOS PARA LLEGAR AL FINAL SON:", resultado
	
FinAlgoritmo


Funcion minimo <- buscarSaltos(pos, asientos, n)
	
    Definir i, saltos_temporal, minimo Como Entero

    Si pos >= n Entonces
        minimo <- 0
		
    Sino

        minimo <- 9999
		
        Para i <- 1 Hasta asientos[pos] Hacer 
			
           
            Si (pos + i) <= n Entonces
				
               
                saltosTemporal <- buscarSaltos(pos + i, asientos, n)
				

                saltosTemporal <- saltosTemporal + 1
				

                Si saltosTemporal < minimo Entonces
                    minimo <- saltosTemporal
                FinSi
				
            FinSi

        FinPara

    FinSi

FinFuncion
