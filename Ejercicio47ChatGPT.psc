Algoritmo Ejercicio47ChatGPT
	Algoritmo ejercicio47
		
		Definir ClienteCode, Dia, ClienteAct Como Entero
		Definir Vendido, VendidoClient, Promedio Como Real
		Definir ContarVentas, ContarMayor Como Entero
		Definir ClienteMay, ClienteMen Como Entero
		Definir VenMenClint Como Real
		Definir primerCliente Como Logico
		
		// Inicialización
		VendidoClient <- 0
		ContarVentas <- 0
		ContarMayor <- 0
		VenMenClint <- 0
		primerCliente <- Verdadero
		
		Escribir "Ingrese código de cliente (0 para terminar): "
		Leer ClienteCode
		
		Mientras ClienteCode <> 0 Hacer
			
			ClienteAct <- ClienteCode
			VendidoClient <- 0
			ContarVentas <- 0
			
			Escribir "----- Cliente ", ClienteAct, " -----"
			
			Mientras ClienteCode = ClienteAct Hacer
				
				Escribir "Ingrese día: "
				Leer Dia
				Escribir "Ingrese importe vendido: "
				Leer Vendido
				
				// Listado de ventas
				Escribir "Día:", Dia, " Importe:", Vendido
				
				VendidoClient <- VendidoClient + Vendido
				ContarVentas <- ContarVentas + 1
				
				Escribir "Ingrese código de cliente (0 para terminar): "
				Leer ClienteCode
				
			FinMientras
			
			// Promedio
			Promedio <- VendidoClient / ContarVentas
			
			// Inicialización del primero
			Si primerCliente Entonces
				ContarMayor <- ContarVentas
				VenMenClint <- VendidoClient
				ClienteMay <- ClienteAct
				ClienteMen <- ClienteAct
				primerCliente <- Falso
			FinSi
			
			// Cliente con más compras
			Si ContarVentas > ContarMayor Entonces
				ContarMayor <- ContarVentas
				ClienteMay <- ClienteAct
			FinSi
			
			// Cliente con menor importe total
			Si VendidoClient < VenMenClint Entonces
				VenMenClint <- VendidoClient
				ClienteMen <- ClienteAct
			FinSi
			
			// Resultados por cliente
			Escribir "Total vendido: ", VendidoClient
			Escribir "Promedio de compras: ", Promedio
			
		FinMientras
		
		// Resultados finales
		Escribir "El cliente que menor importe total compró es: ", ClienteMen, " con ", VenMenClint
		Escribir "El cliente que más compras realizó es: ", ClienteMay, " con ", ContarMayor
		
FinAlgoritmo
FinAlgoritmo
