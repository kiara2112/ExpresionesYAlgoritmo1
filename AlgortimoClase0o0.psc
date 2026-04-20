Algoritmo AlgortimoClase0o0
	//ingresan un par de numeros enteros , calcular la suma de ambos. la condicion de fines es cuando NA=0 Y NB=0
	definir NA,NB, SumaNum Como Entero;
	Escribir "Pasar numero 1 entero";
	leer NA;
	Escribir "Pasar numero 2 entero";
	Leer NB;
	SumaNum<-0;
	Mientras (NA<>0) o (NB<>0) Hacer
		SumaNum <- NB + NA + SumaNum;
		Escribir "Pasar numero 1 entero";
		leer NA;
		Escribir "Pasar numero 2 entero";
		Leer NB;
	Fin Mientras
	Escribir "la suma de los numeros es ", SumaNum;
FinAlgoritmo
