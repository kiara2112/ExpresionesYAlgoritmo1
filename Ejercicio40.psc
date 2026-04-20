Algoritmo Ejercicio40
	//Se ingresan 100 pares de valores enteros NumA y NumB, los cuales no son iguales y obtener:
	//La suma de los valores menores de cada par, El promedio de los negativos, El máximo valor de NumA y su orden de ingreso, El mínimo valor de NumB y su orden de ingreso
	//Los valores se deben mostrar conjuntamente con una leyenda para poder interpretarse correctamente.
	
	
	Definir i, NumA, NumB, MaxNumA, MaxPosiNumA, MinNumB, MinPosiNumB, SumaMen, ContarNeg, SumaNeg, PromedioNeg Como Real;
	
	SumaMen<-0; //empezamos todo los acumuladores y contadores en 0
	SumaNeg<-0;
	ContarNeg<-0;
	
	Para I<-1 Hasta 4 Con Paso 1 Hacer //como tenemos un pare, usamos un para
		escribir "Valor A";
		leer NumA;
		Escribir "Valor B";
		leer NumB;
		
		Si I=1 Entonces//para tener un numero base de menor y mayor, utilizamos el primer dato que ingresamos y los consideramos el menor y el mayor (aunque no lo sean porque faltan muchos numeros, es para comparar) 
			MaxNumA<-NumA; //antes estaba un contar pero era innecesario porque tenemos un para, y para saber cuando empezamos usamos el i en uno
			MaxPosiNumA<-1;
			MinNumB<-NumB;
			MinPosiNumB<-1;
		Fin Si
		
		Si NumB<>NumA Entonces //no deben ser el mismo numero para sumarlos, pide el menor de los 2, si no hay un menor no se suma ninguno y seguimos con el programa
			Si 	NumA<NumB Entonces //si no son lo mismo, hay 1 de los 2 que es menor, y aca los compara para sumarlos al acumulador de menores
				SumaMen<-SumaMen+NumA;
			SiNo
				SumaMen<-SumaMen+NumB;
			Fin Si
		Fin Si
		
		Si NumA<0 Entonces //aca ve si NumA es negativo, por eso menor a 0
			SumaNeg<-SumaNeg+NumA; //si es menor, se agrega a un acumulador de negativos (para luego sacar el promedio) 
			ContarNeg<-ContarNeg+1; //ver cuantos negativos van habiendo 
		Fin Si
		
		Si NumB<0 Entonces //hace lo mismo que con el Numero A
			SumaNeg<-SumaNeg+NumB;
			ContarNeg<-ContarNeg+1;
		Fin Si
		
		Si NumA>MaxNumA Entonces //Vemos si el numero nuevo que ingreso, es mayor al anterior que habia ingresado, 
			MaxNumA<-NumA; //lo cambia y es el nuevo dato que va a empezar a comparar
			MaxPosiNumA<-I; //como utilizamos un I, no es necesario un contar ya que hace el mismo trabajo
		Fin Si            //ve en que posicion fue introducido y lo agrega
		
		Si NumB<MinNumB Entonces //hace lo mismo que con el Numero A, pero siendo menor de B
			MinNumB<-NumB;
			MinPosiNumB<-I;
		Fin Si
		
	Fin Para
	
	Si ContarNeg<>0 Entonces //antes de sacar el promedio de negativo, averigua que haya ingresado algun negativo
		PromedioNeg<-SumaNeg/ContarNeg;
		Escribir "el promedio de los negativos fue ", promedioneg;
	SiNo
		Escribir "no ingresaron datos negativos"; //si no es el caso, avisa que ningun negativo ingreso y nos saca el promedio
	Fin Si
	
	Escribir "La suma de los valores menores de cada par es ", SumaMen; 
	Escribir "El máximo valor de NumA fue ", MaxNumA,"  y su orden de ingreso fue ", MaxPosiNumA; //muestra todo los datos que anteriormente fuimos acumulando y contando
	Escribir "El mínimo valor de NumB fue ", MinNumB, "  y su orden de ingreso fue ", MinPosiNumB;
	
FinAlgoritmo
