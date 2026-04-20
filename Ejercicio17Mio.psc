Algoritmo Ejercico17
	//Se ingresan 100 números enteros no nulos (es decir que no llega el 0) y obtener el promedio
	//de los positivos y la cantidad de negativos. Mostrar ambos resultados con una leyenda aclaratoria.
	Definir I, NumPosi, Num, ContarPosi, SumarNeg Como Entero;
	Definir PromedioPosi como real;
	
	ContarPosi<-0;
	NumPosi<-0;
	SumarNeg<-0;
	PromedioPosi<-0
	
	Para I <-1 Hasta 100 Con Paso 1 Hacer
		Escribir "Ingresar Numero";
		Leer Num;
		
		Mientras Num=0 Hacer //verifica que el numero ingresado no sea 0 (nulo) y vuelve a pedir otro numero que no sea 0 para que sigan siendo 100 numeros enteros
			Escribir "El número no puede ser 0. Ingrese otro:";
            Leer num;
		Fin Mientras
		
		Si Num>0 Entonces //verifica si es negativo
			ContarPosi<-ContarPosi+1;
			NumPosi<-NumPosi+Num;
		SiNo
			SumarNeg<-SumarNeg+1;
		Fin Si
		
	Fin Para
	Si NumPosi<> 0 Entonces //verifica que minimo 1 numero sea positivo, si no, no saca promedio 
		PromedioPosi<-NumPosi/ContarPosi;
		Escribir "El Promedio es de ", PromedioPosi;
	SiNo
		Escribir "No Ingreso ningun Numero positivo";
	Fin Si
	Escribir "El total de Numeros negativos es ", SumarNeg;
FinAlgoritmo
