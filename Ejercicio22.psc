Algoritmo Ejercicio22
	//Dada una serie de 16 números, todos distintos de cero, informar cuántos son pares y el promedio de los impares.
	
	definir i, num, pares, contarimpar,contarpar, SumarImpar, promedio como real;
	
	SumarImpar<-0;
	contarpar<-0;
	promedio<-0;
	contarimpar<-0;
	
	Para i<-1 Hasta 16 Con Paso 1 Hacer
		Escribir "Pasame un num que no sea 0"; //ve con que numero empezamos
		Leer Num;
		
		Mientras Num=0 Hacer // verifica que el numero no sea 0, y que no cuente en la suma de los 16 numeros 
			Escribir "Consigna incorrecta, ingrese otro numero";
			Leer Num;
		Fin Mientras
		
		Si (Num mod 2=0) Entonces //ve si es par 
			contarPar<-contarPar+1;
		SiNo
			SumarImpar<-SumarImpar+Num; //si no es, agrega a los impares
			ContarImpar<-ContarImpar+1;
		Fin Si
		
	Fin Para
	Si contarimpar<>0 Entonces //por si ningun numero impar entro a la cuenta, avisa que no entro ninguno y no saca el promedio 
		promedio<-SumarImpar/contarimpar;
		Escribir "el promedio de los numeros impares son ", promedio;
	SiNo
		Escribir "no ingresaron numeros negativos";
	Fin Si
	
	Escribir "de los 16 numeros, pares son ", contarPar; //avisa cuantos son pares
	
FinAlgoritmo
