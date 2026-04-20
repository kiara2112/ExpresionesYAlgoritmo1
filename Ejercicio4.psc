Algoritmo Ejercicio4
	//Escribir un algoritmo que lea (se entiende que deben de ser ingresados) cuatro números y acontinuación 
	//imprima el mayor de los cuatro.
	
	Definir Num1,Num2,Num3,Num4,Mayor como entero;
	
	Escribir "Pasame el Primer numero";
	Leer Num1;
	Escribir "Pasame el Segundo numero";
	Leer Num2;
	Escribir "Pasame el Tercer numero";
	Leer Num3;
	Escribir "Pasame el cuarto numero";
	Leer Num4;
	
	Mayor<-Num1; //Suponemos que Num1 es el mayor para empezar a comparar
	Si Num2>Mayor Entonces //hace esto con todos los numeros, ve si son mayores que el primero, y si lo son este se convierte en el Mayor
		Mayor<-Num2;
	Fin Si
	Si Num3>Mayor Entonces
		Mayor<-Num3;
	Fin Si
	Si Num4>Mayor Entonces
		Mayor<-Num4;
	Fin Si
	
Escribir "El numero mayor es " Mayor;
FinAlgoritmo
