Algoritmo ejercicio55
	//Ingresar un conjunto de números enteros en un vector denominado VEC1, de 41 posiciones. Luego generar otro vector VEC2, donde se han de intercambiar los valores de las posiciones
	//de VEC1 de forma equidistante. Imprimir en paralelo ambos vectores.
	
	Definir VEC1, VEC2, Num, I como entero;
	Dimension VEC1[41]; //hacemos que el vector sea de 41 casillas  
	Dimension VEC2[41];
	
	Para I<-0 Hasta 40 Con Paso 1 Hacer
		Escribir "pasar numeros"; //ingresamos el numero
		leer num;
		Vec1[I]<-Num; //lo agregamos al VEC1
	Fin Para
	
	Para I<-0 Hasta 40 Con Paso 1 Hacer
		VEC2[i]<-VEC1[40 - i]; //la poscion 40(la ultima del vector) menos el contador que se encuentra dentro del Para, asi va intercambiando el ultimo con el primero del VEC2
	Fin Para
	
	Para I<-0 Hasta 4 Con Paso 1 Hacer
		Escribir "El valor del Vector1 en la posición ", I, " es ", VEC1[I], " y el vector2 es ", VEC2[I]; //mostramos en orden del intercambio que hicimos
	Fin Para
FinAlgoritmo
