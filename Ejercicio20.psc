Algoritmo Ejercico20
	//Desarrollar un algoritmo que permita ingresar 3 calificaciones de un alumno, calcule el promedio de las mismas e informe si está aprobado o no, 
	//según sea el promedio. Promedio >=7, Aprobado. Promedio >=4 y <7, Diciembre. Promedio <4, Marzo.
	
	Definir califica1, califica2, califica3, promedio Como Real;
	
	Escribir "ingresar el 1° puntaje del alumno";
	leer califica1;
	Escribir "ingresar el 2° puntaje del alumno";
	leer califica2;
	Escribir "ingresar el 3° puntaje del alumno";
	Leer califica3;
	
	Promedio<-(califica1+califica2+califica3)/3; //saca promedio de del alumno
	
	Si Promedio>=7 y promedio<=10 Entonces // promedio<=10 es innecesario poner
		Escribir "Aprobado con ", promedio;
	Fin Si
	Si promedio>=4 y promedio<7 Entonces
		Escribir "A diciembre con ", promedio;
	Fin Si
	Si Promedio<4 y promedio>=0 Entonces // promedio>=0 es innesesario poner
		Escribir " A Marzo con ", promedio;
	Fin Si
	Si Promedio<0 o Promedio>10 Entonces //esto es innecesario ponerlo, pero por las dudas XD
		Escribir "Promedio invalido";
	Fin Si
	
FinAlgoritmo
