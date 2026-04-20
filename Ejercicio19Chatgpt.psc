Algoritmo Ejercicio19Chatgpt
		
		Definir CantProductos, Contador Como Entero;
		Definir CantProduct, PrecioUni, Subtotal, Descuento, Total Como Real;
		
		Subtotal <- 0;
		Descuento <- 0;
		
		Escribir "Ingrese cantidad de productos (0 para terminar): ";
		Leer CantProductos;
		
		Mientras CantProductos <> 0 Hacer
			
			Contador <- 0;
			
			Mientras Contador < CantProductos Hacer
				
				Escribir "Ingrese cantidad del producto: ";
				Leer CantProduct;
				
				Escribir "Ingrese el precio unitario: ";
				Leer PrecioUni;
				
				Subtotal <- Subtotal + (CantProduct * PrecioUni);
				
				Contador <- Contador + 1;
				
			FinMientras
			
			Escribir "Ingrese cantidad de productos (0 para terminar): ";
			Leer CantProductos;
			
		FinMientras
		
		Si Subtotal > 15000 Entonces
			Descuento <- Subtotal * 0.12;
		Sino
			Descuento <- 0;
		FinSi
		
		Total <- Subtotal - Descuento;
		
		Escribir "Subtotal: $", Subtotal;
		Escribir "Descuento: $", Descuento;
		Escribir "Total a pagar: $", Total;
		
FinAlgoritmo
