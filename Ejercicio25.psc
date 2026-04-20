Algoritmo Ejercicio25
	//En una empresa trabajan 250 empleados, de los cuales se ingresan el nombre, sueldo del convenio y cantidad de horas trabajadas.
	//El valor hora es el sueldo del convenio dividido 180 (porque se calcula sobre la base de 45 horas semanales).
	//Si la persona trabaja más de 180 horas mensuales, se considera cada una de éstas horas, una hora extra, y el valor de la misma es el 100% superior al valor de la hora normal.
	//Calcular el sueldo, teniendo presente en los casos de aquellos sueldos menores a $ 75.000- donde se debe de incrementar en un 14% Informar (mostrar al final):
	//Nombre y nuevo sueldo de cada empleado, Cantidad de empleados con sueldo inferior a $ 75.000-, Cantidad total de horas extras abonadas. importe total de sueldos a abonar. 
	
	definir sueldoConvenio, sueldo, nombre, hs, dif, contmen, TotalSueldos, hsextra, i, sueldohs como real;
	
	sueldoConvenio<-0;
	hsextra<-0;
	totalsueldos<-0;
	contmen<-0;
	dif<-0;
	sueldo<-0;
	
	Para i<-1 Hasta 2 Con Paso 1 Hacer
		Escribir "pedir nombre";
		leer nombre;
		Escribir "pedir sueldo del convenio"; //son el precio que deberia de pagar un trabajador segun el sindicato con 180hs (45 hs a la semana)
		leer sueldoConvenio;
		Escribir "pedir hs trabajadas"; //las horas del trabajador(pueden ser mas o menos que las dichas por el convenio)
		leer hs;
		
		sueldoHs<-sueldoConvenio/180; //la hora del convienio (lo que se dice que deberias de cobrar con 180hs), sacamos el sueldo por hs, asi podemos regularlo a nuestros horarios (si son mayores o menores a 180hs)
		
		Si  hs>180 Entonces// Cálculo de horas extras
			dif<-hs-180; //ve la diferencia de 180 hs al mes
				
			sueldo<- sueldoHs*180 + (dif * sueldoHs * 2); //saca el doble del sueldo y lo suma a lo que ya teniamos de sueldo por hs (el sueldo por hs mas las 180hs al mes) dando el sueldo
				
			hsextra<-hsextra+dif; //cuantas cuantas hs extras hay en total 
		SiNo
			sueldo<-sueldohs*hs; //si no hay hs extras, saca el sueldo normal (el sueldo por hs, con las que en realidad trabaja el laburante)
		Fin Si
		
		Si Sueldo<75000 Entonces //verifica que el sueldo sea menor a 75k
			Sueldo<-sueldo*114/100; //igual a sacar el 1,14
		Fin Si
		
		Si Sueldo<75000 Entonces //verifica que el sueldo con el aumento no sea mayor a 75k
			ContMen<-ContMen+1; //cuentas cuantos sueldos son menores a 75k
		Fin Si
		
		TotalSueldos<-totalsueldos+sueldo;
		
		Escribir "nombre es de ", nombre;//dentro del para para decir sueldo y nombre de cada uno
		escribir "sueldo es de ", sueldo;
		
	Fin Para
	
	Escribir "la cantidad de hs extras pagados fueron ", hsextra; //las horas extras que se deben de pagar
	Escribir " el total de sueldos a pagar es ", totalsueldos; //el total de sueldos en total
	Escribir "la cantidad de sueldos menores es de ", contmen;//los sueldos bajos
	
	
	
	
	
FinAlgoritmo
