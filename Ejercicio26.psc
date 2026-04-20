Algoritmo Ejercicio26
	//Ingresar las medidas de los 3 lados de un triángulo e informar de que tipo de triángulo se trata. Equilatero, Isosceles, Escaleno. Informarlo con una leyenda
	
	
	definir lado1, lado2, lado3 como real;
	Escribir "pasame lado 1";
	leer lado1;
	Escribir "pasame lado 2";
	leer lado2;
	Escribir "pasame lado 3";
	leer lado3;
	
	Si (lado1>=0) o (lado2>=0) o (lado3>=0) Entonces //nO ME FUNCIONA COMO QUISIERA, AAAAAAAAAA (eso fija que ningun numero sea 0 o negativo, ya que un triangulo no puede tener numeros negativos ni 0)
		Si (lado1 = lado2) Y (lado2 = lado3) Entonces //aca verifica que todos los lados sean iguales, si 1, 2 y 2 , 3 son iguales, todos los lados son iguales
			escribir "equilatero";
		SiNo
			Si (lado1 = lado2) O (lado1 = lado3) O (lado2 = lado3) Entonces //aca ve si minimo hay 2 lados iguales (no supe como optimizarlo)
				escribir "isoseles";
			SiNo
				Escribir "escaleno"; //si ningun lado es igual, es la ultima opcion que es escaleno, no necesita otro si
			Fin Si
		Fin Si
	SiNo
		Escribir "un triangulo no tiene 0 o lados negativos";
	Fin Si
	
	
FinAlgoritmo
