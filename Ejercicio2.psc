Algoritmo Ejercicio2
	//Diseñar un algoritmo que lea e imprima una serie de números enteros distintos de cero y
	//calcule la suma de los mismos. El algoritmo termina con el ingreso de 0, y debe mostrar la suma de los mismos.
	
	Definir Num, SumaNum como enteros;
	Num<-1; //para entrar dentro del Mientras
	SumaNum<-0;
	
	Escribir "Manda un Numero que no sea 0";//tiene que preguntar fuera antes de ingresar al Mientras
	Leer Num;
	
	Mientras Num <> 0 Hacer
		Escribir "Manda un Numero que no sea 0";
		Leer Num;
		SumaNum<-SumaNum+Num;
		//Escribir Num; No se si aca debe de imprimirse, aunque me lo pida pero como lo ingreso yo queda raro
	Fin Mientras
Escribir "La suma de los numeros son ", SumaNum;
FinAlgoritmo
