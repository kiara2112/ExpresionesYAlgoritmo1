Algoritmo Ejercicio34
	//En un curso de 45 alumnos, se han tomado tres exámenes parciales, y la información que llega es la siguiente: Alumno, Nota1, Nota2,Nota3 y Nota4
	//Cuando se ingresa cada conjunto de datos, calcular el promedio y generar un listado que además del alumno, coloque el promedio con una leyenda que permita identificar si está
	//aprobado o no (para aprobar la nota debe ser superior o igual a 6). Además, al final se debe de informar la cantidad de alumnos aprobados y desaprobados
	
	definir alumno, aprobados, desaprobados, nota2, Nota1, nota3, nota4, promedio, i como real;
	
	Aprobados<-0;
	desaprobados<-0;
	
	Para i<-1 Hasta 3 Con Paso 1 Hacer
		
		Escribir "Alumno"; //ingresa alumno
		Leer alumno;
		
		Escribir "Nota 1"; //todas sus notas
		Leer Nota1;
		Escribir "Nota 2";
		Leer Nota2;
		Escribir "Nota 3";
		Leer Nota3;
		Escribir "Nota 4";
		Leer Nota4;
		
		Promedio<-(Nota1+nota2+nota3+nota4)/4; //saca el promedio de SumaDeNota/CantidadDeNotas
		
		Si Promedio>=6 Entonces //si el promedio es mayor o igual a 6, se suma al acumulador y avisa el promedio del alumno con su nombre
			Aprobados<-Aprobados+1;
			Escribir "el alumno ", alumno," esta aprobado con ", promedio;
		SiNo
			desaprobados<-desaprobados+1;
			Escribir "el alumno ", alumno," esta desaprobado con ", promedio;
		Fin Si
		
	Fin Para
	
	Escribir "la cantidad de alumnos APROBADOS son ", aprobados; //luego de todo, avisa cual es la cantidad de alumnos aprobados y desaprobados
	Escribir "la cantidad de alumnos DESAPROBADOS son ", desaprobados;
	
FinAlgoritmo
