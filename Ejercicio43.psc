Algoritmo Ejercicio43
	//Se ingresan 100 pares de valores enteros NumA y NumB, los cuales no son iguales y obtener:
	//La suma de los mayores a -5, El promedio de los múltiplos de 3 de NumB, Imprimir los números comprendidos entre 100 y 200, inclusive, del NumA, ¿Cuál es el
	//porcentaje de los negativos menores a -10 del NumB?
	//Los valores se deben mostrar conjuntamente con una leyenda para poder interpretarse correctamente.
	
	
	Definir NumA,NumB, SumaMayor, SumaNumB3, contarNumb3, ContarNumBNeg10, PromeMod3, porcentaje, i como real; 
	
	SumaMayor<-0;
	SumaNumB3<-0;
	ContarNumB3<-0;
	ContarNumBNeg10<-0;
	
	
	Para i<-1 Hasta 100 Con Paso 1 Hacer
		
		Escribir "Ingresar Numero A";  
		Leer NumA;
		Escribir "Ingresar Numero B";
		Leer Numb;
		
		Mientras NumA=NumB Hacer //ve que los numeros ingresados no sean 0
			Escribir "Los Numeros no deben ser iguales"; //vuelve a pedir que ingreses numeros hasta que no sean iguales
			Escribir "Ingresar Numero A"; 
			Leer NumA;
			Escribir "Ingresar Numero B";
			Leer Numb;
		Fin Mientras
		
		Si NumA>(-5) Entonces //La suma de los mayores a -5, de cada uno de los 2 numeros pares
			SumaMayor<-SumaMayor+NumA;
		Fin Si
		
		Si NumB>(-5) Entonces
			SumaMayor<-SumaMayor+NumB;
		Fin Si
		
		Si NumB Mod 3=0 Entonces 
			SumaNumB3<-SumaNumb3+Numb; //El promedio de los múltiplos de 3 de NumB
			ContarNumB3<-ContarNumb3+1;
		Fin Si
		
		Si NumA>=100 y NumA<=200 Entonces  //Imprime los números comprendidos entre 100 y 200, pero solo avisandolo cuando mandamos esos numeros 
			Escribir "Esta comprendido entre 100 y 200 del NumA ", NumA;
		Fin Si
		
		Si NumB<(-10) Entonces //porcentaje de los negativos menores a -10 del NumB
			ContarNumBNeg10<-ContarNumbNeg10+1;
		Fin Si
		
	Fin Para
	
	Si ContarNumB3>0 Entonces //ve que hayan ingresado múltiplos de 3 de NumB para sacar promedio, si no avisa que no ingreso ninguno (para que no de error)
		PromeMod3<-SumaNumB3/ContarNumB3;
		Escribir "Promedio de los múltiplos de 3 de NumB ",PromeMod3;
	SiNo
		Escribir "No ingresaron múltiplos de 3 de NumB";  
	Fin Si
	
	Si ContarNumBNeg10>0 Entonces //este es mas innecesario, pero porque la cantidad de numeros es 100, si fuera otro numero se tendria que hacer de esta forma
		Porcentaje<- (ContarNumBNeg10*100)/100; //como la multiplicacion de 100 y la division de 100 se cancelan, queda solo el contador, haciendo que el porcentaje sea la cantidad
		Escribir "el porcentaje de los negativos menores a -10 del NumB es ", Porcentaje; 
	SiNo
		escribir "El porcentaje de los negativos menores a -10 del NumB es 0"; //no es necesario dividirlo, pero es para que sea mas entendible y se sepa que hace
	Fin Si
	
	escribir "La suma de los mayores a -5 es ", SumaMayor; //muestra la suma de los numeros mayores
	
	
FinAlgoritmo
