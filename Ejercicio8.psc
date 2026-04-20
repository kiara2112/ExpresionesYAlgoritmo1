Algoritmo Ejercicio8
	//Escribir un algoritmo que determine si el año es bisiesto o no. Se debe de tener en cuenta
	//que, para saberlo, un año es bisiesto si es múltiplo entero de 4 (por ejemplo, 2020 lo fue y
	//es un resultado entero, el 2021 no es un resultado entero). Ingresar el año y mostrar la leyenda apropiada

	Definir anio Como Entero;
	
	escribir "Ingrese un año: ";
	Leer anio;
	
	Si (anio mod 4=0) y (anio mod 100 <> 0) o (anio mod 400=0) Entonces //y (anio mod 100 <> 0) o (anio mod 400=0) esto no me lo pide la consigna, pero un año bisiesto es asi, no solo multiplo de 4 (1700 no es, pero es multiplo de 4)
		escribir "el Año ", anio, " es Bisiesto";
	SiNo 
		Escribir  "el Año ", anio, " es Bisiesto";
	Fin Si
FinAlgoritmo
