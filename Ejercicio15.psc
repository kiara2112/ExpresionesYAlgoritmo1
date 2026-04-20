Algoritmo Ejercicio15
	//Ingresar dos valores en distintas variables y determinar cuál de ellos es el mayor, colocar una leyenda que indique cuál es el mayor y qué valor tiene.
	Definir A,B Como Entero;
	
	Escribir "Pasame el PRIMER Numero";
	leer A;
	Escribir "Pasame el SEGUNDO Numero";
	leer B;
	
	Si A>B Entonces
		Escribir A, " Es el Mayor";
	SiNo
		Si B>A Entonces
			Escribir B, " Es el Mayor";
		SiNo
			Escribir "Son el mismo Numero"; //por si da la posibilidad que ingresen el mismo numero
		Fin Si
	Fin Si
	
FinAlgoritmo
