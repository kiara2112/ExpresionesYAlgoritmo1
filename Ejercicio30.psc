Algoritmo Ejercico30
	//Ingresar una serie indeterminada de números. Cuando se ingrese cero (0), se detendrá el ingreso de números y se deberá informar el
	//promedio de todos los números ingresados y cuál fue el mayor valor de la serie.
	
	definir promedio, sumarnum, num, contarnum, NumMayor como real;
	ContarNum<-0;
	SumarNum<-0;
	
	Escribir "pasame numero"; //antes de ingresar dentro del mientras, ve que no sea 0 (asi no calcula todo lo que sigue siendo 0)
	Leer num;
	Mientras Num<>0 Hacer
		
		contarNum<-contarNum+1; //contar para el promedio
		Si contarNum=1 Entonces
			NumMayor<-Num; //utiliza el primer numero como el mayor, para empezar a compara
		Fin Si
		Si NumMayor<Num Entonces //verifica si hubo otro numero mayor 
			NumMayor<-Num;
		Fin Si
		SumarNum<-SumarNum+Num;
		
		Escribir "pasame numero"; //preguntar dentro del bucle, para que siga repitiendo hasta que alguien ingrese 0
		Leer num;
	Fin Mientras
	
	Si contarNum>0 Entonces //verifica que el primero numero ingresado no sea 0
		Promedio<-SumarNum/ContarNum; //no calcula el promedio cada vez que ingresa un numero, por eso se hace dentro del si luego de todo los numeros
		Escribir "El mayor de los numeros fue ", NumMayor;
		Escribir "El promedio de los numeros fue ", Promedio;
	SiNo
		escribir "Sin datos"; //si asi fue, no entraron datos
	Fin Si
FinAlgoritmo

