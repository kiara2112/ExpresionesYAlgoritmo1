Algoritmo Ejercicio23Profe
	Definir suma, dato, contador, menor, posicion Como Entero;
    Definir promedio Como Real;
	
	suma<-0;
	dato<-0;
	contador<-1;
	menor<-0;
	posicion<-0;
	
    Mientras contador <= 25 Hacer
		
        Escribir "Ingrese un número entero:";
        Leer dato;
		
        Si contador = 1 Entonces
            menor <- dato;
            posicion <- contador;
        FinSi
		
        Si dato < menor Entonces
            menor <- dato;
            posicion <- contador;
        FinSi
		
        suma <- suma + dato;
        contador <- contador + 1;
		
    FinMientras
	
    promedio <- suma / 25;
	
    Escribir "La suma de los valores ingresados es: ", suma;
    Escribir "El promedio es: ", promedio;
    Escribir "El menor valor ingresado es: ", menor;
    Escribir "La posición del menor valor es: ", posicion;
	
FinAlgoritmo
