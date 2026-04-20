Algoritmo Ejercicio18
	//Ingresar un solo par de valores A y B y efectuar las 4 operaciones básicas. Considerar que, si se intenta dividir por cero, en lugar del resultado, 
	//se debe imprimir el mensaje "No es posible la división"
	
	Definir A , B como entero;
	
	escribir "ingrese valor del A";
	Leer A;
	Escribir "Inggrese valor del B";
	leer B;
	//las demas cuenta si deberian de poder hacerse, ya que solo me pde en division que sea 0
	Escribir "(" A ")+(" B ")=" (a+b);
	Escribir "(" A ")-(" B ")=" (a-b);
	Escribir "(" A ")*(" B ")=" (a*b);
	Si B<>0 Entonces //verifica que no sea 0, ya que no puede dicidir
		Escribir "(" A ")/(" B ")=" (a/b);
	SiNo
		Escribir "no se puede dividir por 0";
	Fin Si
FinAlgoritmo
