Algoritmo Ejercicio19Profe
	//Realizar un algoritmo que permita ingresar la cantidad de productos comprados y el precio unitario de éstos, cuando la cantidad es igual a cero se termina el ingreso de datos. 
	//Se desea conocer el monto a abonar teniendo en cuenta que si la compra es superior a $15000- se realiza un descuento del 12%.
	//Mostrar el resultado final con una leyenda indicando el valor original, el descuento y el valor final.
	
	Definir ContadorProductos, contador, producto,Sub_total,Descuento,Total,ValorProducto Como Real;
	
	ContadorProductos<-0;
	Contador<-0;
	Producto<-0;
	Sub_Total<-0;
	Descuento<-0;
	Total<-0;
	Valorproducto<-0;

	Escribir "La cantidad de productos debe ser mayor a 0";
	
	Leer ContadorProductos;
	
	Mientras ContadorProductos <> 0 Hacer
		
		Mientras Contador < ContadorProductos Hacer
			Contador <- Contador + 1;
			
			Escribir "Ingrese la cantidad del PRODUCTO ", Contador, ":";
			Leer Producto;
			
			Escribir "EL PRECIO del PRODUCTO ", Contador, " es:";
			Leer ValorProducto;
			
			Sub_Total <- Sub_Total + Producto * ValorProducto;
		FinMientras
		
		Si Sub_Total > 15000 Entonces
			Descuento <- Sub_Total * 0.12;
			Total <- Sub_Total - Descuento;
			
			Escribir "EL TOTAL es:", Sub_Total;
			Escribir "EL DESCUENTO es:", Descuento;
			Escribir "El Valor Final es:", Total;
		Sino
			Escribir "El Valor Final es:", Sub_Total;
		FinSi
		
		Escribir "Ingrese la cantidad de productos (0 para TERMINAR):";
		Leer ContadorProductos;
		
		Contador <- 0;
		Sub_Total <- 0;
		
	FinMientras
FinAlgoritmo
