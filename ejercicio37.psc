Algoritmo ejercicio37
//Se ingresan 100 valores enteros no nulos y se necesita calcular: Si el valor es menor a 100, calcularle a cada uno un 10% y acumularlo en una variable
//Si el valor es mayor a 1000, calcular a cada uno un 20% y acumularlo en una variable
//Con otro valor, calcular a cada uno un 15% y acumularlo en una variable. Al finalizar el proceso se debe mostrar las tres variables calculadas
	
	Definir i, contarmayor, contarmenor, contartotal, num Como Real;
	
	contarmayor<-0;
	contarmenor<-0; //se señalizan los acumuladores en 0
	contartotal<-0;
	
	
	Para i<-1 Hasta 100 Con Paso 1 Hacer // ya que me dan una cantidad determinada, uso un para
		
		Escribir "pasar valor(no nulo)"; //pregunto si el primer valor (como es para sucede dentro del bucle)
		leer Num;
		
		Mientras Num=0 Hacer //esto verifica que si se ingresa un 0, no cuente dentro de los 100 y me hace ingresar devuelta otro numero
			Escribir "pasar devuelta valor(no nulo);";
			leer Num;
		Fin Mientras
		
		Si Num<100 Entonces //menores de 100
			contarmenor<-contarmenor+(num*0.1);
		Fin Si
		
		Si Num>1000 Entonces //mayores de 1000
			contarmayor<-contarmayor+(num*0.2);
		Fin Si
		
		Si (Num<100) o (Num>1000) Entonces //esto es un o porque es un intervalo que siendo un y no se encuentran en ningun momento, asi que es o uno o otro. 
			Contartotal<-contartotal+(num*0.15); //se saca el 15% de los numeros que anterior mente fueron validos, si no se encuentran ahi no son contados en el total (de estos numeros)
		Fin Si
		
	Fin Para
	
	Escribir "Acumulados valores menores a 100: ", contarmenor; //se muestran los valores acumulados 
	Escribir "Acumulados valores mayores a 1000: ", contarmayor;
	Escribir "acumulados valores en total: ", contartotal;
	
FinAlgoritmo
