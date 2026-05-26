Algoritmo ejercicio75
	//Realizar un proceso donde se genere una matriz, denominada MAT1, dónde los datos se han de almacenar dentro de una matriz compuesta por 10 filas y 8 columnas; y su contenido sean números enteros.
	//Se deben de ingresar los siguientes datos; Número A<=10; Número B<=8 y Número C (que representan la dirección del número a guardar en la matriz y un número entero distinto de Cero que representa C).
	//Sí el número C, es un cero representa el final del ingreso de datos. Pueden existir ingresos de datos que tienen la misma dirección, por lo tanto, se deben de acumular los valores ingresados. 
   //A continuación, desarrollar un algoritmo que realice los siguientes procedimientos: Imprima la matriz MAT1. Calcule e imprima el valor promedio de los componentes que conforman cada fila de la matriz en la columna 9.
	//Genere e imprima un vector VECMAXCOL donde cada componente sea el valor máximo de cada columna.
	
	
    Definir NumA,Numb,NumC Como Entero;
    Definir Fila, columna, VECMAXCOL, i, MAT1 Como Real;

	Dimension MAT1[11,10]; //MAT1[Fila,Columna]
    Dimension VECMAXCOL[8];
	
	Para Fila <- 0 Hasta 10 //esto no es necesario para el pseudocodigo, pero para probar su funcionamineto lo agrego
		
        Para Columna <- 0 Hasta 8
			
            MAT1[fila,Columna] <- 0;
			
        FinPara
	fin para
	
	Para Fila <- 0 Hasta 7 //igualmente que el para de arriba, no es necesario para la evalucacion pero lo agrego para trabajar ahora
		
        VECMAXCOL[Fila] <- 0; //ponemos todo en 0
		
    FinPara
	

    Escribir "Ingrese el numero de fila (0 a 9)"; //del 0 al 9 (10 filas)
    Leer NumA;
	
    Escribir "Ingrese el numero de columna (0 a 7)"; //del 0 al 7 (8 filas)
    Leer NumB;
	
    Escribir "Ingrese el dato (0 termina)";
    Leer NumC;
	
	Mientras NumC<>0 Hacer //si se ingresa 0, termina el ingreso de datos
		
		MAT1[NumA,Numb]<-MAT1[NumA,Numb]+NumC; //Suma el valor nuevo al que ya estaba, si se ingresa un valor en una celda que ya habia contenido, agrega.
		
		Escribir "Ingrese el numero de fila (0 a 9)";
		Leer NumA;
		
		Escribir "Ingrese el numero de columna (0 a 7)"; //volvemos a pedir los datos dentro de minetras
		Leer NumB;
		
		Escribir "Ingrese el dato (0 termina)";
		Leer NumC;
		
	Fin Mientras
	
	//Calcular promedio
	Para Fila<-0 Hasta 9 Con Paso 1 Hacer //Recorre cada fila de datos, del 0 al 9 (10 filas)
		Para Columna<-0 Hasta 7 Con Paso 1 Hacer //Recorre cada columna de datos, del 0 al 7 (10 filas)
			MAT1[Fila,8]<-MAT1[Fila,8]+MAT1[Fila,Columna]; //va sumando los numeros de cada Fila, en la ultima columna (la 8, la que no ingresamos datos)
		Fin Para
		MAT1[Fila,8]<-MAT1[fila,8]/8; //dividimos los 8 numeros, por 8  (aunque podriamos usar columna, es mejor asi) y nos da el promedio
		escribir "el promedio de la fila ", Fila, " es ", MAT1[Fila,8]; //muestra el promedio
	Fin Para

	//Buscar máximos de cada columna.
	Para columna<-0 Hasta 7 Con Paso 1 Hacer //Recorre cada columna de datos, del 0 al 7 (8 columnas)
		MAT1[10,columna]<-MAT1[0,columna]; //señaliza el primero de la columna (que seria la fila) y lo utiliza como el mayor para comparar con los demas
		Para fila<-0 Hasta 9 Con Paso 1 Hacer //ahora va fila por fila para ver cual es el numero mayor
			Si MAT1[10,columna]<MAT1[Fila,columna] Entonces //si alguno es mayor que el primero que ingresamos, lo agrega en la posicion 10 (donde andamos guardando los mayores
				MAT1[10,columna]<-MAT1[Fila,columna]; //los cambia
			Fin Si
		Fin Para
	Fin Para
	
	Para columna <- 0 Hasta 7 //esto no sabria si es mejor hacerlo en el anterior paras
        VECMAXCOL[columna] <- MAT1[10,columna]; //ponemos los numeros de la ultima fila, en el vector de los maximo
		escribir "el maximo de la fila ", Fila, " es ", VECMAXCOL[Fila]; //lo mostramos
    FinPara

FinAlgoritmo
