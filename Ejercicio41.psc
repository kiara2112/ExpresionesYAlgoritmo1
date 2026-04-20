Algoritmo Ejercicio41
    //Se ingresan 100 números enteros no nulos y se necesita obtener:  La suma de los números positivos múltiplos de 7. El promedio de los negativos ingresados en orden impar
	//Los valores se deben mostrar conjuntamente con una leyenda para poder interpretarse correctamente.
	
	definir Suma7, NumNeg, ContarNeg, Num, contar, PromeNeg como real;
	
	Suma7<-0;
	NumNeg<-0; //señaliza los primero
	ContarNeg<-0;
	
	Para Contar<-1 Hasta 100 Con Paso 1 Hacer //el contar es la posicion que se encuentra el numero de los 100 que ingresamos
		
		Escribir "Ingresar Numero"; //vuelve a pedir que ingreses numeros hasta que no sea 0
		Leer Num;
		
		Mientras Num=0 Hacer
			Escribir "Los Numeros no deben ser Nulos";
			Escribir "Ingresar Numero"; //vuelve a pedir que ingreses numeros hasta que no sea 0
			Leer Num;
		Fin Mientras
		
		Si Num Mod 7=0 Entonces //vemos si el numero es multiplo de 7 (si esa division da de resto 0)
			Suma7<-Suma7+Num;
		Fin Si
		
		Si Num<0 y (Contar mod 2<>0) Entonces //vemos si ese numero es negativo Y aparte la posicion que se encuentra NO es par (es decir es impar)
			NumNeg<-NumNeg+Num;
			ContarNeg<-ContarNeg+1; //suma y cuenta cuentos numeros negativos son, para el promedio
		Fin Si
		
	Fin Para
	
	Si ContarNeg>0 Entonces //antes de sacar promedio, pregunta si ingresaron numeros negativos (si no la division daria error)
		PromeNeg<-NumNeg/ContarNeg;
		Escribir "El promedio de negativos fue ",PromeNeg;//si hubo, saca el promedio y lo muestra
	SiNo
		Escribir "No ingresaron negativos ingresados en orden impar"; //si no se ingresaron, avisa que no ingresaron numeros negativos 
	Fin Si
	
	Escribir "La suma de los números positivos múltiplos de 7 fue ", Suma7; //puede encontrarse fuera del si, porque no afecta en nada
	
FinAlgoritmo
