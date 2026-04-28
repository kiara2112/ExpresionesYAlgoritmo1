Algoritmo Ejercicio50
	//En un laboratorio de investigación se tiene el siguiente archivo, previamente ordenado: Enfermedad/Cantidad de Bacterias La finalización está determinada por EOF.
	//Se debe tener en cuenta que pueden existir más de un registro de bacterias por enfermedad. 
    //Se necesita (calcular y mostrar): El promedio general de bacterias de cada enfermedad. Cuantas enfermedades tienen una cantidad acumulada de bacterias superior a 30.000. 
	//Cuál ha sido la enfermedad con menor cantidad de bacterias.
	
	definir enfermedad, enfermedadACT, CantBacteria, CantBactTotal, RegistroBact, PromedioBact, ContarEnfe, CantBactMenor, CantBactMenor como real;
	
	
	Escribir "Ingresar enfermedad"; //ingresamos enfermedad
	leer Enfermedad;
	Escribir "ingresar cantidad de banteria"; //cantidad de bacterias
	leer CantBacteria;
	
	
	Mientras enfermedad<>0 Hacer //los atos terminan con EOF, pero pondre 0 para representar ahora en el momento
		
		enfermedadACT<-Enfermedad; //marca la enfermedad actual cual es
		
		Mientras enfermedad=enfermedadACT Hacer
			CantBactTotal<-CantBactTota+CantBacteria; //cuenta la cantidad de bacterias 
			RegistroBact<-RegistroBact+1; //las veces que ingresaron numeros para las bacterias 
			
			Escribir "Ingresar enfermedad";
			leer Enfermedad; //ingresamos lois datos dentro del 2 mientras 
			Escribir "ingresar cantidad de banteria";
			leer CantBacteria;
			
		Fin Mientras
		
		PromedioBact<-CantBactTota/RegistroBact; //sacamos el promedio de bacterias 
		Escribir "El promedio de bacterias de ", enfermedadACT, " es ", PromedioBact; //escribimos 
		
		Si CantBactTotal>=30000 Entonces //contamos la cantidad de bacterias que fueron mayores a 30k
			ContarBact30k<-ContarBact30k+1;
		Fin Si
		
		ContarEnfer<-ContarEnfer+1; //solo funciona para contar las enfermedades y ver cual es la primera para poner el menor 
		
		Si ContarEnfer=1 Entonces //primera enfermedad la usamos para empezar a comprar 
			EnferMenor<-enfermedadACT;
			CantBactMenor<-CantBactTotal;
		Fin Si
		
		Si CantBactMenor>CantBactTotal Entonces //comparamos si tiene menos bacterias que el que ya estaba 
			EnferMenor<-enfermedadACT;
			CantBactMenor<-CantBactTotal;
		Fin Si
		
		CantBactTotal<-0; //empezamos en 0 los datos del 2 mientras 
		RegistroBact<-0;
		
	Fin Mientras
	
	Escribir "las enfermedades que tienen una cantidad bacterias superior a 30.000 son ", ContarBact30k; //avisamos fuera del mientras las enfermedades con mas de 30k de bacterias 
	Escribir "La enfermedad con menor cantidad de bacterias es ", EnferMenor, " con ", CantBactMenor; //la enfermedad con menos bacterias 
FinAlgoritmo
