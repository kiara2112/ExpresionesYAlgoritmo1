Algoritmo ejercicio76
	//Se tiene un archivo formado con la siguiente información: N° de Vendedor, Valor de la venta realizada
	//Existen 10 vendedores, y se debe de tener en cuenta que pueden existir varias ventas delmismo vendedor, los datos ingresan respetando el formato establecido y pueden llegar en cualquier orden.
	//El fin del ingreso de datos se da cuando llega el vendedor N° 11, Se necesita realizar: Leer e imprimir el contenido del archivo a medida que se van leyendo.
	//Hallar la cantidad total vendida por cada vendedor y emitir un listado ordenado en forma decreciente dónde figure el N° de vendedor y el total de su venta realizada.
	
	
	Definir vendedor, valorven Como Entero;
    Definir Venta,Aux, i, j, vendedo Como Real;
	
    Dimension Venta[11];
	dimension vendedo[11];
	
	Para i <- 0 Hasta 10 //no es necesario, señalizamos en 0 todo los lugares 
		
		venta[i]<-0;
		Vendedo[i]<-i; //aunque este si es un poco necesario, porque agrega en todo los puestos de vendedor un numero del 1 al 10para saber que vendedor es cada uno al momento del intercambio
		
	FinPara
	
	Escribir "Ingrese numero de vendedor (11 termina)"; //fuera del mientras, ingresamos valores para empezar
    Leer vendedor;
	Escribir "Valor de venta";
	leer ValorVen;
	
	
	Mientras Vendedor<>11 Hacer //si vendedor no es 11, sigue ejecutando
		
		Venta[vendedor]<-Venta[vendedor]+valorven; //por si pasa que se ingresa un valor en el mismo lugar, hace bucle y agrega el nuevo valor
		
		Escribir "El vendedor ", Vendedor, " tuvo un valor de venta de ", valorven;
		
		Escribir "Ingrese numero de vendedor (11 termina)"; //volvemos a ingresar los datos
		Leer Vendedor;
		Escribir "Valor de venta";
		leer ValorVen;
		
	Fin Mientras
	
	Para I<-0 Hasta 8 Con Paso 1 Hacer //ordenamos de forma decreciente 
		Para J<-I+1 Hasta 9 Con Paso 1 Hacer //le sumamos 1 para sumar y sea hasta el 10 
			
			Si Venta[I]<Venta[j] Entonces //vemos si el segundo es mayor que el primero y los intercambiamos
				//ejemplo
				aux<-Venta[i]; // 2<-0 <-2
				venta[i]<-venta[j]; //3<-2 <-3 
				venta[j]<-aux; //2<-3 <-2 
				
				aux<-Vendedo[i]; //como teniamos que ver que vendedor es, ponemos un auxiliar que al mismo tiempo cambie el vendedor en otra matriz
				vendedo[i]<-vendedo[j];
				vendedo[j]<-aux;
				
			Fin Si
		Fin Para
	Fin Para
	
	Para I<-0 Hasta 9 Con Paso 1 Hacer //mostramos todo los vendedores organizamos en forma decreciente con su respectivo vendedor
		
		Escribir "el vendedor ", Vendedo[i], " tiene una cantidad de ", venta[i];
		
	Fin Para
	
	
	
	
FinAlgoritmo
