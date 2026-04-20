Algoritmo Ejercicio45
	//Se cuenta con un conjunto de números positivos, ordenados en forma creciente. Cada número se repite una cantidad de veces indefinida y el último número del conjunto es 0 (cero).
	//Se solicita realizar un algoritmo que, ingresando por teclado dichos números, informe: La cantidad de veces que se repite cada uno. Informe el número que más veces se repitió.
	
	Definir Num, NumAux, CantNum, ContarM, MaxNum, NumRepit como real;
	
	Escribir "ingresa numero"; //ingresamos el numero
	Leer Num;
	
	CantNum<-0;
	ContarM<-0; //señalizamos los acumuladores en 0
	MaxNum<-0; //si el primer numero que ingresamos es 0, el programa va a mandar que fue 0 y que se repitio 1 vez (aunque no se si fuera 0, porque es la condicion de fin)
	NumRepit<-1;
	
	Mientras Num<>0 Hacer //si mandamos 0, el programa completo se para
		NumAux<-Num; //agarramos este numero y vamos a utilizarlo para repetir las veces que se manden (dentro del otro mientras), hasta que cambiemos el numero 
		
		Mientras Num=NumAux Hacer //si el numero es el mismo, el programa se repite
			CantNum<-CantNum+1; //contamos las veces que el numero es mandado
			Escribir "ingresa numero";
			Leer Num;
		Fin Mientras
		
		ContarM<-ContarM+1; //eso solo funciona para saber cual es el numero que mas veces se mando, necesitamos uno para empezar
		
		Si ContarM=1 Entonces //el  primer numero que sale del mientras va a ser el utilizado, hasta que venga un numero mas grande
			MaxNum<-NumAux; //como el num de NUM ya es otro, vamos a utilizar el del auxiliar que sigue siendo el mismo, hasta que termine esta tonda
			NumRepit<-CantNum; //cuantas veces el numero se repitio
		Fin Si
		
		Si CantNum>NumRepit Entonces //aca comparamos los diferentes numeros que salen del segundo y vemos si alguno se repitio mas veces, para cambiarlo
			MaxNum<-NumAux;
			NumRepit<-CantNum;
		Fin Si 
		
		Escribir "El numero " NumAux, " Se repitio ", CantNum; //aca muesta el numero que tenemos (en esta ronda), cuantas veces se repitio y cual fue, en cada ronda cambia
		
		CantNum<-0; //la suma de cantidad de veces que se repite un numero se convierte en 0, ya que ahora va a acumular de otro numero y es necesario ponerlo en 0
	Fin Mientras
	
	escribir "el número que más veces se repitió fue: ", MaxNum, " la cantidad de ", NumRepit; //luego que mandemos 0, va mostrar que numero se repitio mas veces y cual fue
	
	
	
	
	
FinAlgoritmo
