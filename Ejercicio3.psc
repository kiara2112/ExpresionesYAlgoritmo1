Algoritmo Ejercicio3
	//Diseñar un algoritmo que imprima y sume la serie de números 3,6,9,12...99.
	
	Definir ContadorTres , SumTres como entero;
	
	ContadorTres<-3;
	SumTres<-0;

	Mientras ContadorTres < 100 Hacer //no queda si dice que no es igual <>, si no que es mayor a 100 
		Escribir ContadorTres;
		SumTres<- SumTres+ContadorTres; //Primero Sumamos para la cuenta
		ContadorTres<-ContadorTres + 3; //despues le sumamos 3 para seguir
	Fin Mientras
Escribir "La suma de los numeros da " SumTres;
FinAlgoritmo
