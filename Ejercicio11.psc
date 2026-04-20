Algoritmo Ejercicio11Mio
	//Diseñar un algoritmo, en el cual se ingresa la temperatura en grados Celsius, y un código (1 ó 2), si el código es 1, lo convierte en grados Fahrenheit [ F = (9/5)* C +32], en caso de ser
	//el código 2, lo convierte en grados Kelvin [ K = C+273]. Se debe mostrar el resultado seleccionado.
	
	Definir CodigoTemp como entero;
	Definir Celsius, Fahren, Kelvin  Como Real;
	
	Escribir "¿Que temperatura hay en Celsius?";
	Leer Celsius;
	Escribir "Fahrenheit = 1 o Kelvin = 2?";
	Leer CodigoTemp;
	
	Si CodigoTemp=1 Entonces
		Escribir "La temperatura en Fahrenheit es ", (9/5)* Celsius +32;//la cuenta me la pasaron
	SiNo
		Escribir "La temperatura en Kelvin es ", celsius+273;//la cuenta me la pasaron
	Fin Si
	
FinAlgoritmo
