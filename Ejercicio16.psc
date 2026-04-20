Algoritmo Ejercicio16
	//Ingresar un número entero y determinar si el mismo es menor 10, si está comprendido entre 10 y 100 o si el valor ingresado es mayor que 100.
	//En los tres casos se debe mostrar una leyenda y el valor ingresado
	
	Definir Num Como Entero;
	
	Escribir "Ingresa un Numero Entero";
	Leer Num;
	
	Si Num<10 Entonces //verifica si es menor a 0
		Escribir "El Numero ",Num, " es menor a 10";
	Fin Si
	Si Num>=10 y Num<=100 Entonces //verifica que este entre 10 y 100
		Escribir "El Numero ",Num," esta Comprendido entre 10 y 100";
	Fin Si
	Si Num>100  Entonces //verifica que sea mayor a 100
		Escribir "El Numero ",Num, " es mayor a 100";
	Fin Si
	
FinAlgoritmo
