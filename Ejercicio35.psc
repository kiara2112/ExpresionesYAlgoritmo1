Algoritmo Ejercicio35
	//Una fábrica de automóviles realizó una encuesta sobre los gustos de los compradores de acuerdo a las siguientes opciones: Lujo, Maniobrabilidad, Rapidez, Economía, Otros motivos
	//El ingreso de datos, se produce con la Edad, Nro de Opción; cuando se ingresa en el Nro de Opción el número 6, indica el fin del ingreso de datos Se necesita calcular:
	//La cantidad de encuestados entre 18 y 30 años, inclusive, que prefieren la economía, La cantidad total de encuestados, El porcentaje de encuestados mayores a 30 años que prefieren el lujo
	//La cantidad de encuestados mayores a 40 años y menores a 55 años, que prefieren la rapidez, Los valores se deben mostrar conjuntamente con una leyenda para poder interpretarse correctamente.
	
	
	definir gustos, edad, ContarEco, ContarRapi, ContarLujo, ContarTotal, porcentaje30 como entero;
	
	ContarTotal<-0;
	ContarEco<-0; //empezar en 0 todos los contar
	ContarLujo<-0;
	ContarRapi<-0;
	
	escribir "1. Lujo, 2. Maniobrabilidad, 3. Rapidez, 4. Economía, 5. Otros motivos,6. terminar accion";
	leer gustos; //preguntamos que elegimos 
	
	Mientras Gustos<>6 Hacer
		
		Escribir "edad"; //edad
		leer edad;
		
		ContarTotal<-ContarTotal+1; //vamos contando la cantidad total de todos los que ingresan
		
		
		Si (Edad>=18 y edad<=30) y (gustos=4) Entonces //entre 18 y 30 (incluyente) que elijan economia 
			ContarEco<-ContarEco+1;
		Fin Si
		
		Si (Edad>30) y (gustos=1) Entonces //mayores de 30 que elijan lujo
			ContarLujo<-ContarLujo+1;
		Fin Si
		
		Si (Edad>40 y edad<55) y (gustos=3) Entonces //mayores de 40 y menoresz a 55, que eijan rapidez
			ContarRapi<-ContarRapi+1;
		Fin Si
		
		escribir "1. Lujo, 2. Maniobrabilidad, 3. Rapidez, 4. Economía, 5. Otros motivos,6. terminar accion";
		leer gustos;
		
	Fin Mientras
	
	Si ContarTotal<>0 Entonces //si ningun dato se ingreso, avisa que no hubo ingreso de datos, si hubo muestran todos los ingresados
		
		porcentaje30<-(contarlujo/contartotal)*100; //saca el procentaje del total de la gente que era mayor a 30 y eligio lujo
		Escribir "La cantidad de encuestados entre 18 y 30 años, economia es ", ContarEco;
		escribir "el porcentaje de encuestados mayores a 30 años, lujo es ", porcentaje30;
		Escribir "La cantidad de encuestados mayores a 40 años y menores a 55 años, rapidez es ", ContarRapi;
		escribir "La cantidad total de encuestados ", ContarTotal;
	SiNo
		Escribir "Sin datos";
	Fin Si
	
FinAlgoritmo
