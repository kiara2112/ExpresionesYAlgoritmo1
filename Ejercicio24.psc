Algoritmo Ejercicio24
	//En una oficina trabajan 25 empleados, de los cuales se ingresan el nombre y el sueldo. Incrementar en un 14% los sueldos menores a $ 75.000- e informar:
	//Nombre y nuevo sueldo de cada empleado, Cantidad de empleados con sueldo inferior a $ 75.000, Importe total de sueldos a abonar.
	
	definir i, nombre, sueldo, contmen, totalsueldos como real;
	
	contmen<-0;
	totalsueldos<-0;
	
	Para i<-1 Hasta 25 Con Paso 1 Hacer //ya que hay un pare, se elige un para 
		
		Escribir "pasame nombre";
		leer nombre;
		Escribir "pasame sueldo";
		Leer sueldo;
		
		Si Sueldo<75000 Entonces //verifica que el sueldo sea menor a 75k
			Sueldo<-sueldo*114/100; //igual a sacar el 1,14
		Fin Si
		Si Sueldo<75000 Entonces //verifica que el sueldo con el aumento no sea mayor a 75k
			ContMen<-ContMen+1;
		Fin Si
		TotalSueldos<-totalsueldos+sueldo; //suma los sueldos
		Escribir nombre; //nombra el nombre y sueldo de la persona, antes de pasar al proximo
		Escribir sueldo;
		
	Fin Para
	Escribir "hubieron ", contmen, "trabajadores con sueldos bajos"; //fuera del para 
	Escribir "Se debe pagar en total $", totalsueldos;
FinAlgoritmo
