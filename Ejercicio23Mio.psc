Algoritmo Ejercicio23Mio
	//Ingresar 25 números enteros e informar (mostrar con una leyenda): la suma de los mismos, el promedio de los valores ingresados
	//el menor de todos estos números y en que ubicación se ingresó. 
	
	Definir Sumanum, num, contarnum, nummenor, posicionMenor, Promedio, i como real;
	//los acumuladores deben empezar con 0
	SumaNum<-0;
	ContarNum<-0;
	
	Para i<-1 Hasta 5 Con Paso 1 Hacer
		Escribir "pasar Num";
		leer Num;
		
		SumaNum<-SumaNum+Num; //suma del numero
		ContarNum<-ContarNum+1; //en en que posicion esta el numero que se ingreso
		
		Si ContarNum=1 Entonces //esto se utiliza solo la primera vez, para poner el primer numero agregado como el menor, y comparar con todos
			NumMenor<-Num;
			PosicionMenor<-1;
		Fin Si
		Si Num<NumMenor Entonces //aca compara los numeros que se van agregando con el menor
			NumMenor<-Num;
			PosicionMenor<-ContarNum;
		Fin Si
		
	Fin Para
	
	Promedio<-sumaNum/25; //saca el promedio fuera del para que no saque el promedio cada vez que ingrese un numero
	Escribir "La suma de los numeros es ", SumaNum;
	Escribir "el promedio ingresado es ", Promedio;
	Escribir "El menor de los numeros es ", NumMenor;
	Escribir "la posición de ingreso del menor valor es ", PosicionMenor;
	
FinAlgoritmo
