Algoritmo Ejercicio54
	//Ingresar un conjunto de números enteros en un vector denominado VEC1 de 100 componentes. Si la suma de los componentes (el total del vector) resulta par,
	//imprimir las de índice par, sino las de índice impar.
	
	
	//NO ME DA LPM, NO ENTIENDO

	
	Definir VEC1, Num, Guardar, par, impar, suma como entero;
	Dimension VEC1[101]; //hacemos que el vector sea de 5 casilleros
    Par<-1;
	Impar<-0;
	VEC1[100] <- 0;
	Para Num<-0 Hasta 99 Con Paso 1 Hacer
		Escribir "Pasar numero a guardar";
		leer Guardar;
		VEC1[Num]<-guardar;
		Suma<-guardar+suma;
	Fin Para

	
	Si Suma MOD 2=0 Entonces
		Para Par<-Par*2 Hasta 100 Con Paso 1 Hacer
			escribir VEC1[Par];
		Fin Para
	SiNo
		Para Impar<-(Impar*2)-1 Hasta 100 Con Paso 1 Hacer
			escribir VEC1[Impar];
		Fin Para
	Fin Si
	
FinAlgoritmo
