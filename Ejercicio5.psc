Algoritmo Ejercicio5
	//Diseñar un algoritmo que lea (se entiende que deben de ser ingresados) tres números y
	//encuentre si uno de ellos es la suma de los otros dos (que los muestre al final mediante una leyenda).
	
	Definir Num1, Num2, Num3 como entero;
	
	Escribir "Pasame el Primer numero";
	Leer Num1;
	Escribir "Pasame el Segundo numero";
	Leer Num2;
	Escribir "Pasame el Tercer numero";
	Leer Num3;

	Si Num1=(Num2+Num3) Entonces // Aca es una sucesion de Si para comparar en cada uno si es la suma de otro, si no, el ultimo si no queda como pasa
		escribir Num1, " es la suma de ", Num2, " Y ", Num3;
	SiNo
		Si Num2=(Num1+Num3) Entonces
			escribir Num2, " es la suma de ", Num1, " Y ", Num3;
		SiNo
			Si Num3=(Num2+Num1) Entonces
				escribir Num3, " es la suma de ", Num2, " Y ", Num1;
			SiNo
				escribir "El numero no es la suma de ningun numero";
			Fin Si
		Fin Si
	Fin Si
	
FinAlgoritmo

//Esta es otra forma que no nos deja ver (por el momento como vi), si ningun numero es la suma de otra. Solo si pasa eso

//Si Num1=(Num2+Num3) Entonces
	//escribir Num1, " es la suma de ", Num2, " Y ", Num3;
//Fin Si
//Si Num2=(Num1+Num3) Entonces
	//escribir Num2, " es la suma de ", Num1, " Y ", Num3;
//Fin Si
//Si Num3=(Num2+Num1) Entonces
	//escribir Num3, " es la suma de ", Num2, " Y ", Num1;
//Fin Si