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
		
		Si Seccion=1 Entonces
			Cont1<-Cont1+1;
		Fin Si
		
		Si Seccion=2 Entonces
			Cont2<-Cont2+1;
		Fin Si
		
		Si Seccion=3 Entonces
			Cont3<-Cont3+1;
		Fin Si
		
		Si Seccion=4 Entonces
			Cont4<-Cont4+1;
		Fin Si
		
		Si Seccion=5 Entonces
			Cont5<-Cont5+1;
		Fin Si
	Fin Para
	
	escribir "Empleados sección 1:", cont1;
	escribir "Empleados sección 2:", cont2;
	escribir "Empleados sección 3:", cont3;
	escribir "Empleados sección 4:", cont4;
	escribir "Empleados sección 5:", cont5;
FinAlgoritmo
