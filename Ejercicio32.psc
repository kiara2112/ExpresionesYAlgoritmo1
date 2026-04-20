Algoritmo Ejercicio32
	//Ingresar una serie indeterminada de números enteros. Cuando se ingrese cero (0), se detendrá el ingreso de números y se deberá informar el promedio de todos los números
	//ingresados, cuál fue el mayor valor de la serie, el menor y la posición dónde se encuentra cada uno.
	
	Definir Num, Contar, NumMayor, NumMenor, PosMay, PosMen como entero;
	
	Escribir "pasa numero";
	leer Num;
	Contar<-0;
	
	Mientras Num<>0 Hacer //mientras no sea 0, ingresar los numeros
		Contar<-Contar+1;
		
		Si Contar=1 Entonces //empieza a poner el primer numero como la base para ambas posiciones de menor y mayor
			NumMenor<-Num;
			PosMen<-1;
			NumMayor<-Num;
			PosMay<-1;
		Fin Si
		Si Num<NumMenor Entonces//compara el menor si es mas chico
			NumMenor<-Num;
			PosMen<-Contar;
		Fin Si
		Si Num>NumMenor Entonces//compara el mayor si es mas grande
			NumMayor<-Num;
			PosMay<-Contar;
		Fin Si
		
		Escribir "pasa numero";
		leer Num;
		
	Fin Mientras
	Si Contar>0 Entonces//por si el primer dato es 0, se avisa que no hay datos, si hay datos, te muestra el menor y el mayor
		Escribir "El MENOR de los num es ", NumMenor, " en la posicion ", PosMen;
		Escribir "El MAYOR de los num es ", NumMayor, " en la posicion ", PosMay;
	SiNo
		Escribir "Sin datos";
	Fin Si
	
FinAlgoritmo
