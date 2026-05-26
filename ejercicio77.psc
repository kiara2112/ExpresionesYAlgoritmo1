Algoritmo ejercicio77
	//En una empresa de software se ha registrado la siguiente información por cada tarea realizada: Categoría Empleado, Área y Horas Trabajadas
	//Las categorías de los empleados están registradas según los siguientes códigos: 0. Jefe de Proyecto. 1. Analista Funcional. 2. Programador
	//Dentro de la empresa hay 10 áreas distintas. El fin de ingreso de datos se produce cuando llega la categoría 3. Los datos ingresan respetando el formato establecido y pueden llegar en cualquier orden
	//(entiéndase cualquier número de fila y columna, dentro de los valores establecidos). Hallar la cantidad de horas trabajadas en cada sección por cada categoría, imprimir dicha información.
	//Además, se necesita conocer el total de horas por cada categoría.
	definir categoria, area, hstrabaj, Empre1 como entero;
	
	Dimension empre1[11,3];

	Para area <- 0 Hasta 10  //esto no es importante, solo funciona para empezar el algoritmo
		
        Para categoria <- 0 Hasta 2
			
            empre1[area,categoria]<-0; //señalizamos todo en 0
			
        FinPara
		
    FinPara
	
	Escribir "Categoria empleado (0.Jefe de Proyecto 1.Analista Funcional 2.Programador)"; //del 0 al 9 (10 filas)
    Leer Categoria; //la categoria (3 columnas)
	
    Escribir "Area (0 a 9)"; //del 0 al 9 (10 filas)
    Leer Area;
	
    Escribir "Horas trabajadas"; //lo que va quedar dentro 
    Leer HStrabaj;
	
	Mientras Categoria<>3 Hacer //si el numero no es 3, seguimos ejecutando
		
		Empre1[Area,Categoria]<-HSTrabaj+Empre1[Area,Categoria]; //se puede repetir la llegada de datos (aunque la consigna no lo diga, lo hago por las dudas porque pueden llegar en cualquier orden)
		
		Escribir "Categoria empleado (0.Jefe de Proyecto 1.Analista Funcional 2.Programador)"; //del 0 al 9 (10 filas)
		Leer Categoria;
		
		Escribir "Area (0 a 9)"; //del 0 al 9 (10 filas)
		Leer Area;
		
		Escribir "Horas trabajadas";
		Leer HStrabaj;
		
	Fin Mientras
	
	
	
	Para Categoria<-0 Hasta 2 Con Paso 1 Hacer //muestra los datos dentro de la matriz
		
		Para Area<-0 Hasta 9 Con Paso 1 Hacer //va posicion a posicion de la matriz
			
			Escribir "El total de la categoria ", Categoria, " y del Area ", Area, " es ", Empre1[Area,Categoria]; //en la categoria y area tal hay 
			
		Fin Para
		
	Fin Para
	
	
	
	Para Categoria<-0 Hasta 2 Con Paso 1 Hacer //el primer bucle va ser el que decide que se suma (se suman las categorias, asi que dentro del para es el que cambia)
		
		Para Area<-0 Hasta 9 Con Paso 1 Hacer //va posicion a posicion de la matriz
			
			Empre1[10,Categoria]<-Empre1[10,Categoria]+Empre1[Area,Categoria]; //ve en la fila 10 de cada categoria, lo suma y lo agrega ahi
			
		Fin Para
		
	Fin Para
	
	
	Para categoria<-0 Hasta 2 Con Paso 1 Hacer //muestra lo de la fila 10 
		
		Escribir "El Total de la Categoría ",categoria, " es:", Empre1[10,Categoria];
		
	Fin Para
	
	
FinAlgoritmo



//Para Area<-0 Hasta 9 Con Paso 1 Hacer //el primer bucle va ser el que decide que se suma

//Para Categoria<-0  Hasta 2 Con Paso 1 Hacer
	
	//Empre1[area,3]<-Empre1[area,3]+Empre1[Area,Categoria];
	
//Fin Para

//Fin Para







 