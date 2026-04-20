Algoritmo ejercicio33
	//Una empresa tiene 4 áreas de producción y por cada tarea realizada en cada pieza se registra la siguiente información: Área Nro, Horas Empleadas. 
	//El fin del ingreso de datos se produce cuando ingresa el área Nro 5. Leer sucesivamente los datos y determinar el total de horas empleado por cada área y que
	//porcentaje representa cada área respecto al total de horas de producción. Los valores de los respectivos resultados deberán estar acompañados por sus respectivas
	//leyendas que indican que representa cada valor.
	
	Definir Area, Horas, HorasArea1, HorasArea2, HorasArea3, HorasArea4, Horastotal, porcenArea1, porcenArea2, porcenArea3, porcenArea4 como Real;
	
	Escribir "Numero de área"; //Preguntamos que area empezamos (si es 5, para todo y termina el programa, por eso pasa fuera)
	leer area;
	
	Horas<-0;
	HorasArea1<-0;
	HorasArea2<-0;
	HorasArea3<-0; //mucha señalizacion JAJA
	HorasArea4<-0;
	PorcenArea1<-0;
	PorcenArea2<-0;
	PorcenArea3<-0;
	PorcenArea4<-0;
	Horastotal<-0;
	
	Mientras Area<>5 Hacer //ve que no se ingrese 5 (empieza el programa)
		
		Escribir "Numero de horas empleadas";
		leer horas;
		Horastotal<-Horastotal+horas; //para sacar el procentaje, pregunta la cantidad de horas totales
		
		Si area=1 Entonces
			HorasArea1<-HorasArea1+Horas; //suma las hs que hay en cada area
		Fin Si
		Si area=2 Entonces
			HorasArea2<-HorasArea2+Horas;
		Fin Si
		Si area=3 Entonces
			HorasArea3<-HorasArea3+Horas;
		Fin Si
		Si area=4 Entonces
			HorasArea4<-HorasArea4+Horas;
		Fin Si
		
		Escribir "Numero de área"; //pregunta a que area ahora vamos a sumar o terminar
		leer area;
	Fin Mientras
	
	Si HorasTotal=0 Entonces //si el primer numero que ingresamos es 5, no saca el porcentaje de nada y manda directamente error que no hay datos
		Escribir "No se ingresaron datos de ningun tipo";
	SiNo
		Si HorasArea1=0 Entonces //pregunta si la cantidad de hs es 0 (significa que no se ingreso ningun dato de tiempo ahi
			Escribir "Sin datos area 1";
		SiNo
			PorcenArea1<-(HorasArea1/Horastotal)*100; //saca el porcentaje en relacion a la cantidad de entero, (individual/total)*100
			Escribir "el procentaje del area 1 es ", porcenArea1;
		Fin Si
		
		Si HorasArea2=0 Entonces
			Escribir "Sin datos area 2";
		SiNo
			PorcenArea2<-(HorasArea2/Horastotal)*100;
			Escribir "el procentaje del area 2 es ", porcenArea2;
		Fin Si
		
		Si HorasArea3=0 Entonces
			Escribir "Sin datos area 3";
		SiNo
			PorcenArea3<-(HorasArea3/Horastotal)*100;
			Escribir "el procentaje del area 3 es ", porcenArea3;
		Fin Si
		
		Si HorasArea4=0 Entonces
			Escribir "Sin datos area 4";
		SiNo
			PorcenArea4<-(HorasArea4/Horastotal)*100;
			Escribir "el procentaje del area 4 es ", porcenArea4;
		Fin Si
	Fin Si
	
FinAlgoritmo
