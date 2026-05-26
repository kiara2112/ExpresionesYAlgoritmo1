Algoritmo Ejercicio53
	//Ingresar un conjunto VEC1 de 50 números enteros. A partir de este conjunto generar otro VEC2 en el que cada elemento sea el doble del elemento homólogo de VEC1. Finalmente
	//imprimir ambos vectores a razón de un valor de cada uno por renglón.
	
	//(para que funcione)
	Definir VEC1, VEC2, Num, I como entero;
	Dimension VEC1[50]; //hacemos que el vector sea de 5 casilleros
	Dimension VEC2[50];
	
	Para Num<-0 Hasta 49 Con Paso 1 Hacer //empieza en 0 hasta 4 (5 puestos)
		Escribir "Ingresar Numero"; //pide el numero
		Leer I; //ingresamos el numero, aunque podemos ingresarlo directamente al vector (Leer VEC1[i]) y ignoramos la siguiente linea
		VEC1[Num]<-I; 
		VEC2[Num]<-VEC1[Num]*2; //multiplicamos el numero que ingresamos 
	Fin Para
	
	Para Num<-0 Hasta 49 Con Paso 1 Hacer //vamos leyendo 1 por 1 para mostrar los numeros
		Escribir "El valor del Vector1 en la posición ", Num, " es ", VEC1[Num], " y el vector2 es ", VEC2[Num];
	Fin Para
	
FinAlgoritmo




