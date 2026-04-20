Algoritmo Ejercicio11Profe
	
	Definir Codigo Como Entero;
	Definir Centi, Farh,Kelvin como real;
	
	Escribir "Ingrese el código 1- Fahrenheit // 2- Kelvin:";
    Leer Codigo;
	
    Mientras Codigo = 1 O Codigo = 2 Hacer //mete dentro de un mientras para que pueda repetirse varias veces sin pararlo, hasta que pongan otro code y pare
		
        Escribir "Ingrese la temperatura en grados Centígrados:";
        Leer Centi;
		
        Si Codigo = 1 Entonces //ve el codigo ingresado y hace la conversion
            Farh <- (9/5) * Centi + 32;
            Escribir "La temperatura en Fahrenheit es: ", Farh;
        Sino
            Kelvin <- Centi + 273;
            Escribir "La temperatura en Kelvin es: ", Kelvin;
        FinSi
		
        Escribir "Ingrese el código 1- Fahrenheit // 2- Kelvin:"; //vuelve a preguntar pero dentro del Mientras, hasta que ponga otro code
        Leer Codigo;
		
    FinMientras
	
    Escribir "El código ingresado es incorrecto";//si el codigo no es el correcto, sale del mientras y avisa de que el codigo no fue bien ingresado
	
FinAlgoritmo