Algoritmo Ejercicio31
	//El dato de entrada de los alumnos es el número de DNI y 3 notas. Hallar el promedio de éstas e informar (mostrar), para cada alumno, el número de DNI, 
	//el promedio obtenido y el comentario que corresponda según el resultado del promedio obtenido: 
	//Desaprobado: <4, Aprobado: >=4 y <6, Bueno: >=6 y <8, Distinguido: >=8 y <10, Sobresaliente: 10. El fin del ingreso de datos es cuando se ingresa el DNI=0.
	
	Definir DNI, califica1, califica2, califica3, promedio como real;
	
	Promedio<-0;
	
	Escribir "pasame DNI";
	leer DNI;
	
	Mientras DNI<>0 Hacer
		
		contar<-contar+1 //esto no me lo pide ni es necesario, pero no se que hacer si el primer numero es 0
		
		Escribir "ingresar el 1° puntaje del alumno";
		leer califica1;
		Escribir "ingresar el 2° puntaje del alumno";
		leer califica2;
		Escribir "ingresar el 3° puntaje del alumno";
		Leer califica3;
		
		Promedio<-(califica1+califica2+califica3)/3; //promedio
		
		Escribir "numero de DNI: ", dni;
		Escribir "El promedio es ", Promedio;
		
		Si Promedio=10 Entonces 
			Escribir "Sobresaliente ";
		Fin Si
		Si Promedio>=8 y promedio<10 Entonces 
			Escribir "Distinguido ";
		Fin Si
		Si Promedio>=6 y promedio<8 Entonces 
			Escribir "Bueno ";
		Fin Si
		Si promedio>=4 y promedio<6 Entonces
			Escribir "Aprobado ";
		Fin Si
		Si Promedio<4 y promedio>=0 Entonces // promedio>=0 es innesesario poner
			Escribir "Desaprobado ";
		Fin Si
		Si Promedio<0 o Promedio>10 Entonces //esto es innecesario ponerlo, pero por las dudas XD no se como hacerlo
			Escribir "Promedio invalido";
		Fin Si
		
		Escribir "pasame DNI";
		leer DNI;
		
	Fin Mientras
	Si contar<0 Entonces //la verdad no se si pondria este, ya que no me pide un contador, pero si esta la opcion que el primero sea 0 no sabria si se debe de avisar
		Escribir "Sin datos";;
	Fin Si
FinAlgoritmo
