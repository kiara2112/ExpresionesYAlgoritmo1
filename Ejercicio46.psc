Algoritmo Ejercicio46
	//Se cuenta con un conjunto de temperaturas tomadas en distintos días de un mismo mes (30 días), ordenadas cronológicamente. En cada día se tomaron diferentes cantidades de
	//temperaturas. Se solicita realizar un algoritmo que, leyendo el día y la temperatura, muestre, para cada día, la temperatura máxima, la temperatura mínima y la temperatura promedio registradas.
	
	
	definir Temp, Dia, DiaAct, TempCant , TempTotal, TempMay, Tempmen, PromedioTemp como real;
	
	Escribir "pasame temperatura"; //empezamos desde afuera del mientras
	leer temp;
	Escribir "que dia es?";
	Leer dia;
	
	TempMay<-0;
	TempMen<-0;
	PromedioTemp<-0;
	TempCant<-0;
	TempTotal<-0;

	Mientras Dia<=30 Hacer
		DiaAct<-Dia; //para saber que dia nos encontramos
		
		Mientras Dia=DiaACT Hacer //dia el dia que mandamos es el mismo que el actual, sigue el programa, si cambia termina el mientras y muestra los datos acumulados 
			
			TempCant<-TempCant+1; //cantidad de temperaturas en 1 dia
			TempTotal<-Temp+TempTotal; //totla de temperatura (sacar promedio)
			
			Si TempCant=1 Entonces //esto solo es para semañizar en la primera temperatura
				TempMen<-Temp;
				TempMay<-Temp;
			Fin Si
			
			Si temp<tempMen Entonces //comparamos si la temperatura que ingreso es la menor 
				TempMen<-Temp;
			Fin Si
			
			Si temp>tempMay Entonces  //comparamos si la temperatura que ingreso es la menor 
				TempMay<-Temp;
			Fin Si
			
			Escribir "pasame temperatura"; //dentro del segundo mientras vuelve a preguntar la temperatura
			leer temp;
			Escribir "que dia es?";
			Leer dia;
		Fin Mientras
		
		PromedioTemp<-TempTotal/TempCant; // saca el promedio
		
		Escribir "el promedio de la temperatura del dia ", DiaACT, " Es ", PromedioTemp;
		Escribir "La temperatura maxima fue ", TempMay;
		Escribir "La temepratura minima fue ", TempMen;
		
		TempMay<-0;
		TempMen<-0;
		PromedioTemp<-0; //señaliza en 0 todo los acumuladores de cada dia, para que cuando empecemos a trabajar con otro dia no se superpongan
		TempCant<-0; //solo funciona cada dia, cuando cambia se vuelve 0
		TempTotal<-0;
		
	Fin Mientras
	
	
FinAlgoritmo
