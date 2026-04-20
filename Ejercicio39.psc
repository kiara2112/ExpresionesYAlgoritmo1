Algoritmo Ejercicio39
    //Se ingresa un par de valores enteros NumA y NumB, los cuales no son iguales y obtener: La cantidad de positivos, El promedio de los negativos, La suma de todos los valores de NumA positivos con valores NumB negativos.
	//El fin de ingreso de datos se produce cuando en el ingreso el NumA=0 y NumB=0. Los valores se deben mostrar conjuntamente con una leyenda para poder interpretarse correctamente.
	
	Definir NumA, Numb, ValoPosiNeg, Positivos, Negativos, ContarNeg, PromeNeg como real;
	
	Escribir "Ingresar Numero A"; //ingresan los numeros antes del Mientras 
	Leer NumA;
	Escribir "Ingresar Numero B";
	Leer Numb;
	
	Positivos<-0;
	Negativos<-0; //señalizacion de los acumuladores en 0
	ValoPosiNeg<-0;
	ContarNeg<-0;
	
	Mientras NUmA<>0 o NumB<>0 Hacer //ve que no sea LOS 2 NUMEROS negativos
		
		Mientras NumA=NumB Hacer //ve que los numeros ingresados no sean 0
			Escribir "Los Numeros no deben ser iguales";
			Escribir "Ingresar Numero A"; //vuelve a pedir que ingreses numeros hasta que no sean iguales
			Leer NumA;
			Escribir "Ingresar Numero B";
			Leer Numb;
		Fin Mientras
		
		Si NumA>0 Entonces //ve si el Numero es positivo (mayor a 0)
			Positivos<-Positivos+1; //suma en positivos
		SiNo//si no es positivo (debe ser negativo) pero si esta la posibilidad que sea 0 (lo cual lo contaria)
			Si NumA<0 Entonces //vuelve a ser un si para verificar que sea negativo
				Negativos <-Negativos + NumA; //cuenta en negativos
				ContarNeg <-ContarNeg+1; //cuantos negativos fueron
			Fin Si
		Fin Si
		
		Si NumB > 0 Entonces //hace lo mismo pero con el numero B
			Positivos <- Positivos + 1;
		Sino
			Si NumB < 0 Entonces
				Negativos <- Negativos + NumB;
				ContarNeg <- ContarNeg+1;
			FinSi
		FinSi
		
		Si NumA>0 Y NumB<0 Entonces //La suma de todos los valores de NumA positivos con valores NumB negativos. Si es mayor A a 0 y Menor B a 0
			ValoPosiNeg<-ValoPosiNeg+NumA+NumB; //aca suma los anteriores numeros y los 2 nuevos numeros
		Fin Si
		
		Escribir "Ingresar Numero A"; //vuelve a preguntar que ingresen numeros
		Leer NumA;
		Escribir "Ingresar Numero B";
		Leer Numb;
		
	Fin Mientras
	
	Si ContarNeg>0 Entonces //antes de sacar promedio, pregunta si ingresaron numeros negativos (si no la division daria error)
		PromeNeg<-Negativos/ContarNeg;
		Escribir "El promedio de negativos fue ",PromeNeg;//si hubo, saca el promedio y lo muestra
	SiNo
		Escribir "No ingresaron valores Negativos"; //si no se ingresaron, avisa que no ingresaron numeros negativos 
	Fin Si
	
	escribir "La cantidad de positivos es: ",Positivos; //estos valores estan bien que no esten dentro de un si, no afectan en nada que sean 0, solo lo avisan
	Escribir "La suma de valores de NumA positivos con valores NumB negativos: ", ValoPosiNeg;
	
FinAlgoritmo
