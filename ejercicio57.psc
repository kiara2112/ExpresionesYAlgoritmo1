Algoritmo ejercicio57
	//Ingresar un conjunto de números enteros en un vector (VEC1) de 30 posiciones y ordenar de forma descendente el mismo en un segundo vector VEC2 mediante el método de burbuja Mostrar en paralelo ambos vectores.
	
	Definir VEC1, VEC2, Aux, num, i, j como entero;
	Dimension VEC1[30]; //hacemos que el vector sea de 5 casilleros
	Dimension VEC2[30];
	
	
	Para I<-0 Hasta 29 Con Paso 1 Hacer
		Escribir "Pasar numero a guardar";
		leer Num;
		VEC1[i]<-Num; //segun parece, los 2 deben de llenarse al mismo tiempo (vere si cambia eso)
		VEC2[i]<-Num;
	Fin Para
	
	Para I<-0 Hasta 28 Con Paso 1 Hacer //por qué en la guia ponen hasta 28 (porque J es la suma de I+1, si este fuera 29, abajo seria 31 y saldria fuera del vector y no daria el resultado
		Para j<-I+1 Hasta 29 Con Paso 1 Hacer //va comparando uno por uno con el siguiente
			Si Vec2[J]>Vec2[I] Entonces //ve si el segundo es mayor que el primero y los intercambia con el auxiliar
				Aux<-Vec2[I];
				Vec2[I]<-Vec2[J];
				Vec2[J]<-Aux;
			Fin Si
		Fin Para
	Fin Para
	
	Para i <- 0 Hasta 29 Hacer
        Escribir VEC1[i], "      ", VEC2[i]; //muestra la diferencia con el primer vector y el segundo
    FinPara
	
	
	
	
FinAlgoritmo
