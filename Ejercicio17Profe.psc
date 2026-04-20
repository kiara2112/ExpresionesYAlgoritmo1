Algoritmo Ejercico17Profe
	//Se ingresan 100 números enteros no nulos (es decir que no llega el 0) y obtener el promedio
	//de los positivos y la cantidad de negativos. Mostrar ambos resultados con una leyenda aclaratoria.
    Contador <- 0
    SumaPos <- 0
    ContarPos <- 0
    ContarNeg <- 0
    DatoEntrada <- 0
	
    Escribir "Ingrese un número entero distinto de cero:"
    Leer DatoEntrada
	
    Mientras Contador < 100 Hacer
		
        Mientras DatoEntrada = 0 Hacer
            Escribir "El valor del dato de entrada es incorrecto"
            Escribir "Ingrese un número entero distinto de cero:"
            Leer DatoEntrada
        FinMientras
		
        Contador <- Contador + 1
		
        Si DatoEntrada > 0 Entonces
            ContarPos <- ContarPos + 1
            SumaPos <- SumaPos + DatoEntrada
        Sino
            ContarNeg <- ContarNeg + 1
        FinSi
		
        Escribir "Ingrese un número entero distinto de cero:"
        Leer DatoEntrada
		
    FinMientras
	
    Si ContarPos > 0 Entonces
        Promedio <- SumaPos / ContarPos
        Escribir "El promedio de los positivos es: ", Promedio
    Sino
        Escribir "No ingresaron valores positivos"
    FinSi
	
    Escribir "La cantidad de negativos es: ", ContarNeg
FinAlgoritmo
