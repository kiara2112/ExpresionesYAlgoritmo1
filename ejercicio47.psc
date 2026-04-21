Algoritmo ejercicio47
	//Se tiene la información de las ventas del mes efectuadas a los clientes diariamente, ordenado por el código de cliente, contando en el lote de datos la siguiente información: el código de
	//cliente, el día y el importe vendido. El último dato del lote tiene cliente igual a cero. Se solicita un algoritmo para informar: El listado de las ventas a cada cliente, indicando, además, el total vendido al cliente.
	//Informar el cliente que más compras realizó. De cada cliente, informar el promedio de las compras que realizó. Informar el cliente que menor importe total compró.
	
	
	Definir ClienteCode, Dia, Vendido, ClienteAct, VendidoClient, ContarVentas, promedio, ClienteConta, ContarMayor, VenMenClint, ClienteMen, ClienteMay como real;
	
	Escribir "pasa código de cliente";
	leer ClienteCode;
	Escribir "dia";
	Leer Dia;
	Escribir "importe vendido";
	Leer Vendido;
	
	VendidoClient<-0;
	ContarVentas<-0;
	ClienteConta<-0;
	ClienteMen<-0;
	VenMenClint<-0;
	ClienteMay<-0;
	ContarMayor<-0;
	
	Mientras ClienteCode<>0 Hacer
		
		ClienteAct<-ClienteCode; //cliente actual (esto cambia si el code del clinente es otro)
		
		Mientras ClienteCode=ClienteAct Hacer //mientras el code sea el mismo que el actual, se va a repetir el ciclo 
			
			VendidoClient<-Vendido+VendidoClient; //cantidad de importe que vendio el cliente (acumulador)
			
			ContarVentas<-ContarVentas+1; //cantidad de ventas que tuvo el cliente (contador)
			
			Escribir "pasa código de cliente"; //vuelve a preguntar todo dentro del ciclo
			leer ClienteCode;
			Escribir "dia";
			Leer Dia;
			Escribir "importe vendido";
			Leer Vendido;
			
		Fin Mientras
		
		Promedio<-VendidoClient/ContarVentas; //saca el promedio de ventas con la cantidad
		
		ClienteConta<-ClienteConta+1; //solo sirve para ver cual es el primer numero ingresado (y cambiar los numeros a los numeros a los comparadores)
		
		Si ClienteConta=1 Entonces //si el clientecontar es 1, cambia todo los comparadores para tener una base para las demas comparaciones 
			ContarMayor<-ContarVentas;
			VenMenClint<-VendidoClient;  // Inicialización del primero
			ClienteMen<-ClienteAct;
			ClienteMay<-ClienteAct;
			
		Fin Si
		
		Si ContarVentas>ContarMayor Entonces  // Cliente con más compras
			ContarMayor<-ContarVentas; //la cantidad de ventas que tuvo (para que sea el nuevo tope maximo)
			ClienteMay<-ClienteAct; //y que cliente que logro esto
		Fin Si
		
		Si VendidoClient<VenMenClint Entonces  // Cliente con menor importe total
			VenMenClint<-VendidoClient; //cual fue el impore menor que tuvo con el total
			ClienteMen<-ClienteAct; //que cliente logro esto
		Fin Si
		
		// Resultados por cliente
		Escribir "El promedio del cliente ", ClienteAct, " fue ", Promedio; //cual fue el promedio del cliente
		Escribir "el total vendido al cliente fue ", VendidoClient; //total que vendio el cliente (precio)
		
		
		Promedio<-0; //como se sobrepone no es necesario señalizarlo con 0
		VendidoClient<-0; //lo que vendio el cliente debe de ponerse en 0
		ContarVentas<-0; //la cantidad de ventas hay que ponerlas en 0
		
	Fin Mientras
	
	Escribir "El Cliente ", ClienteMen, " Fue el que menor importe total compró, con ", VenMenClint; //las comparaciones que hicimos anteriormente dentro del mientra, su resultado
	Escribir "El Cliente ", ClienteMay, " Fue el más compras realizó, con ", ContarMayor;
	
FinAlgoritmo
