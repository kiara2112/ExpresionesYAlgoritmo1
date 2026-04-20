Algoritmo Ejercicio14
	//Ingresar UN número entero y determinar si es positivo, negativo o cero, mostrar una leyenda en cada caso.
	Definir Num Como Entero;
	
	Escribir "Pasame un Numero";
	leer Num;
	
	Si Num>=1 Entonces
		Escribir "El Numero es Positivo";
	SiNo
		Si Num<=(-1) Entonces
			Escribir "El Numero es Negativo";
		SiNo
			Escribir "El Numero es 0"; //si no es negativo ni positivo, es 0
		Fin Si
	Fin Si
	
FinAlgoritmo
