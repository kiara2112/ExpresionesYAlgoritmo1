Algoritmo Ejercicio53ChatGPT
	
	Definir VEC1, VEC2 Como Entero;
    Dimension VEC1[5];
    Dimension VEC2[5];
	
    Definir i Como Entero;
	
    // Cargar VEC1
    Para i <- 0 Hasta 4 Hacer
        Escribir "Ingrese un numero:";
        Leer VEC1[i];
		VEC2[i] <- VEC1[i] * 2;     // Generar VEC2 con el doble de VEC1
    FinPara
	
    // Mostrar ambos vectores
    Escribir "VEC1    VEC2";
	
    Para i <- 0 Hasta 4 Hacer
        Escribir VEC1[i], "      ", VEC2[i];
    FinPara

FinAlgoritmo
