Algoritmo Ejercicio27
	//Ingresar las medidas de los 3 lados de un triángulo rectángulo e informar si se verifican
	//sus catetos y la hipotenusa. Informarlo con una leyenda
	Definir cate1, cate2, hipo, hipocuenta como real;

	
	Escribir "pasame cateto 1";
	leer cate1;
	Escribir "pasame cateto 2";
	leer cate2;
	Escribir "pasame hipotenusa";
	leer hipo;
	
	Hipocuenta<-raiz(cate1^2+cate2^2);
	
	Si Hipocuenta=hipo Entonces
		escribir "es un triangulo cuadrado";
	SiNo
		Si hipo < cate1 o hipo < cate2 Entonces
			escribir "los catetos no pueden ser mayor que la hipotenusa";
		SiNo
			Escribir "no es un triangulo rectangulo";
		Fin Si
	Fin Si
	
FinAlgoritmo
