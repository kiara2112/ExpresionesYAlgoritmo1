Algoritmo Ejercicio52
	//Generar un arreglo de 25 componentes en el cual el contenido del mismos contiene los primeros números naturales pares e imprimirlo.
	
	Definir NumPar, pares, I como entero;
	Dimension NumPar[25]; //empezamos (esto no es importante, solo es para empezarlo)
	
	Para Pares<-0 Hasta 24 Con Paso 1 Hacer
		NumPar[Pares]<-(Pares+1)*2; //si empieza desde 0, se debe de sumar el 1 para que la primera multiplicacion no nos de error. (0+1)*2=2 es lo mismo que abajo, pero 
		Escribir "Los primeros 25 numeros pares son, ", NumPar[pares];
	Fin Para
	
FinAlgoritmo

//Para Pares<-1 Hasta 25 Con Paso 1 Hacer
    //NumPar[Pares]<-(Pares + 1) * 2;
//Fin Para



//Definir NumPar, pares, I como entero;
//Dimension NumPar[26]; //empezamos (esto no es importante, solo es para empezarlo)

//Para Pares<-1 Hasta 25 Con Paso 1 Hacer //este solo funciona si son 26 partes, y que sea del 1 al 0 (pero de normal empieza en 0)
	//NumPar[Pares]<-(Pares * 2); //1*2=2 y asi va dando los pares, porque empezo desde 1
//Fin Para

//Para I<-1 Hasta 25 Con Paso 1 Hacer
	//Escribir "Los primeros 25 numeros pares son, ", NumPar[I];
//Fin Para





//	Para Pares<-0 Hasta 24 Con Paso 1 Hacer
//NumPar[Pares]<-(Pares+1)*2; //si empieza desde 0, se debe de sumar el 1 para que la primera multiplicacion no nos de error. (0+1)*2=2 es lo mismo que abajo, pero 
//Fin Para

//Para I<-0 Hasta 24 Con Paso 1 Hacer //de 0 al 24 (da los 25 puestos)
	//Escribir "Los primeros 25 numeros pares son, ", NumPar[I];
//Fin Para