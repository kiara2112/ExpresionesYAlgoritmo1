Algoritmo ejercicio49
	//En una fábrica de zapatos, tienen varias máquinas que producen distintos modelos de zapatos, tiene el siguiente archivo de producción, previamente ordenado: Tamaño/Cantidad
	//La finalización está determinada por el fin del archivo EOF. Se debe tener en cuenta que pueden existir más de una cantidad por tamaño (varios registros que dependen de que máquina lo fabricó).
    //Se necesita (calcular y mostrar): El promedio general de cada tamaño. Cuantos tamaños tienen una cantidad total mayor a 300. Cuál ha sido el tamaño con menor fabricación.
	
	
	definir Tamano, cantidad, TamanoACT, ContadorRegistros, ContarZapatos, TamanoMay300, CantMenor, TamanoMenor, PromedioTamano, TamanoCant como real;
	
	
	Escribir "Tamaño del zapato"; 
	Leer Tamano;
	Escribir "Cantidad De zapatos";
	Leer cantidad;
	
	TamanoCant<-0;
	ContadorRegistros<-0; //señalizamos con 0 los principales
	ContarZapatos<-0;
	TamanoMay300<-0;
	
	Mientras Tamano<>0 Hacer //aca es cuando el archivo dio 0, no ingresaron mas datos. Ahora veo como lo soluciono
		
		TamanoACT<-Tamano; //auxiliar para saber cuando cambia
		
		Mientras TamanoACT=tamano Hacer //mientras el tamaño sea el mismo que el actual, se va a repetir el ciclo 
			
			TamanoCant<-TamanoCant+Cantidad; //cantidad de zapatos de ese tamaño
			ContadorRegistros<-ContadorRegistros+1; //cantidad de registros (maquinas)
			
			Escribir "Tamaño del zapato"; //se vuelve a preguntar
			Leer Tamano;
			Escribir "Cantidad De zapatos";
			Leer cantidad;
			
		Fin Mientras
		
		ContarZapatos<-ContarZapatos+1; //los zapatos que entraron para poner cual sea el menor
		
		PromedioTamano<-TamanoCant/ContadorRegistros; //promedio entre cantidad y maquinas que registraron
		Escribir "El promedio del tamaño ", TamanoACT, " es ", PromedioTamano;
		
		Si TamanoCant>=300 Entonces //cual tiene la cantidad menor en total
			TamanoMay300<-Tamanomay300+1;
		Fin Si
		
		Si ContarZapatos=1 Entonces //usamos el primer tamaño para comparar con los demas
			TamanoMenor<-TamanoACT;
			CantMenor<-TamanoCant;
		Fin Si
		
		Si TamanoCant<TamanoMenor  Entonces //cual en cantidad dio menos 
			TamanoMenor<-TamanoACT;
			CantMenor<-TamanoCant;
		Fin Si
		//señalizamos en 0 para el proximo tamaño
		PromedioTamano<-0; //este no deberia porque se superpone mas adelante
		TamanoCant<-0; //reiniciamos la cantidad de zapatos y registros totales
		ContadorRegistros<-0;
		
	Fin Mientras
	
	Escribir "La cantidad de Tamaños con una cantidad mayor a 300 es ", TamanoMay300; //avisamos del general cual hizo mas de 300 zapatos
	Escribir "El tamaño con menor fabricación fue ", TamanoMenor, " Con ", CantMenor; //el tamaño que menos fabricaron en total
	
	
FinAlgoritmo
