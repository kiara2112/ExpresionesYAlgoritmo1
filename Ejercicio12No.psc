Algoritmo Ejercicio12
	//En una fábrica hay 4000 empleados distribuidos en 5 secciones, se quiere determinar cuántos empleados hay en cada sección.
	//El dato de entrada es el nombre de la persona y la sección. Se debe mostrar como salida "Empleados sección 1:". Así todas las secciones.
	
	Definir i, cont1, cont2, cont3, cont4, cont5, nombre, seccion como entero;
	
	cont1<-0;
	cont2<-0;
	cont3<-0;
	cont4<-0;
	cont5<-0;
	
	
	Para i<-1 Hasta 5 Con Paso 1 Hacer
		Escribir "pedir nombre";
		leer nombre;
		Escribir "Pedir seccion";
		leer seccion;
		
		Segun seccion Hacer
			1:
				cont1<-cont1 + 1;
			2:
				cont2<-cont2 + 1;
			3:
				cont3<-cont3 + 1;
			4:
				cont4<-cont4 + 1;
			5:	
				cont5<-cont5 + 1;
			De Otro Modo:
				Escribir "Numero invalido";
		Fin Segun
	Fin Para
	
	escribir "Empleados sección 1:", cont1;
	escribir "Empleados sección 2:", cont2;
	escribir "Empleados sección 3:", cont3;
	escribir "Empleados sección 4:", cont4;
	escribir "Empleados sección 5:", cont5;
FinAlgoritmo
