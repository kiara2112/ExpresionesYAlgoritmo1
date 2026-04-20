Algoritmo ejercicio36
   //Se han registrado tres temperaturas en el transcurso del mes con el siguiente formato: Día, Temp1, Temp2, Temp3
	//Se necesitar realizar un listado con la temperatura promedio de cada día. Asimismo, se necesita saber cuál ha sido la temperatura más baja y el día más caluroso (con mayor
	//promedio). Los valores se deben mostrar conjuntamente con una leyenda para poder interpretarse correctamente.
	
	
	definir Dia, Temp1, Temp2, Temp3, PromedioTemp, TempMen, PromeMayor, DiaCaluroso como real;
	
	Escribir "Que dia es?"; //antes del mientras, para saber que entra dentro del programa
	leer Dia;
	
	Mientras Dia<=30 Hacer //para que termine el programa, debe ser mayor que <= a 30, porque si no el programa corta un dia antes 
		
		Escribir "temperatura 1";
		leer Temp1;
		Escribir "temperatura 2";
		leer Temp2;
		Escribir "temperatura 3";
		leer Temp3;
		
		PromedioTemp<-(Temp1+Temp2+Temp3)/3; //saca el promedio de las 3 temperaturas
		
		Si Dia=1 Entonces //esto solo es para semañizar el primer dia
			TempMen<-Temp1;
			PromeMayor<-Promediotemp;
			diaCaluroso<-1;
		Fin Si
		
		Si temp1<tempMen Entonces //comparamos con cada dia si la temperatura menor es alguna de las 3
			TempMen<-Temp1;
		Fin Si
		Si temp2<tempMen Entonces
			TempMen<-Temp2;
		Fin Si
		Si temp3<tempMen Entonces
			TempMen<-Temp3;
		Fin Si
		
		Si PromedioTemp>PromeMayor Entonces //comparamos el primer promedio (o el que ya tenemos) y ve cual es el promedio mas alto y que dia sucede esto
			PromeMayor<-PromedioTemp;
			DiaCaluroso<-Dia;
		Fin Si
		
		Escribir "del día ", dia, " el Promedio de temperatura es ", promedioTemp;
		
		Escribir "Que dia es?";
		leer Dia;
		
	Fin Mientras
	
	Escribir "La temperatura más baja fue: ", TempMen;
	Escribir "el día más caluroso (mayor promedio) fue: ", DiaCaluroso;
	
FinAlgoritmo
