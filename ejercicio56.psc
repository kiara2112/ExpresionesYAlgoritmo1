Algoritmo ejercicio56
	//Ingresar un conjunto de números enteros en un vector de 50 posiciones, VEC1 y detectar el mayor y menor, con sus respectivas posiciones. Además, obtener el promedio del conjunto de valores ingresado.
	
	Definir VEC1, Num, I, mayor, menor, posmen,posmay,suma como entero;
	definir promedio como real;
	Dimension VEC1[50]; //hacemos que el vector sea de 41 casillas  
	suma<-0;
	Para I<-0 Hasta 49 Con Paso 1 Hacer
		Escribir "pasar numeros"; //ingresamos el numero
		leer num;
		
		Vec1[I]<-Num; //lo agregamos al VEC1
		
		Si I=0 Entonces
			Mayor<-Vec1[I];
			Menor<-Vec1[I];
			posMen<-I;
			PosMay<-I;
		Fin Si
		
		Si Mayor<Vec1[I] Entonces
			Mayor<-Vec1[I];
			PosMay<-I;
		Fin Si
		
		Si Menor>Vec1[I] Entonces
			Menor<-Vec1[I];
			posMen<-I;
		Fin Si
		
		Suma<-Suma+Vec1[I];
	Fin Para
	
	promedio<-suma/50;
	Escribir "El numero mayor del vector es ", Mayor, " en la posicion ",posmay;
	Escribir "El numero mayor del vector es ", Menor, " en la posicion ",posmen;
	Escribir "el promedio del vector es ", promedio;
FinAlgoritmo
