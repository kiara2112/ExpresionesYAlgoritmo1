Algoritmo Ejercicio19
	//Realizar un algoritmo que permita ingresar la cantidad de productos comprados y el precio unitario de éstos, cuando la cantidad es igual a cero se termina el ingreso de datos. 
	//Se desea conocer el monto a abonar teniendo en cuenta que si la compra es superior a $15000- se realiza un descuento del 12%.
	//Mostrar el resultado final con una leyenda indicando el valor original, el descuento y el valor final.
	
	Definir PrecioUni, descuento, total Como Real;
	Definir CantProduct,Subtotal, ContarProduct Como Entero;
	
	ContarProduct<-0;
	Subtotal<-0;
	Descuento <- 0;
	
	
	Escribir "Pasa cantidad de productos"; //esto sucede fuera de mientras para verificar que el primer numero no sea 0 y no haga todo al pedo
	leer CantProduct;

	Mientras CantProduct <> 0 Hacer //si no es 0 el primer numero, sigue el mientras
		ContarProduct<-ContarProduct+1; //suma los productos que ingresan para saber que no se ingresaron ningun precio luego
		
		Escribir "Pasame el precio de producto";
		leer PrecioUni;
		Subtotal<-CantProduct*PrecioUni+Subtotal; //saca el precio de todo los productos
		
		Escribir "Pasa cantidad de productos"; //
		leer CantProduct;
		
	Fin Mientras
	Si SubTotal > 15000 Entonces
		Descuento <- SubTotal * 0.12;
		Total <- SubTotal - Descuento;
	Sino
		Total <- SubTotal;
	FinSi
	
	Si ContarProduct=0 Entonces
		escribir "No se ingresaron datos";
	SiNo
		Escribir "el subtotal ", subtotal;
		Escribir "El descuento es ", descuento;
		Escribir "El total a pagar es ", total;
	Fin Si
	
FinAlgoritmo
