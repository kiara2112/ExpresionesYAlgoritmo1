Algoritmo Ejercicio48
	//Una compañía aérea realiza viajes a Europa. Ingresan los vuelos diarios ordenados por destino, indicando el Número de Vuelo, Cantidad de Pasajeros por Vuelo y el Código de
	//Destino (es una letra distinta para cada país)., Finaliza ingresando Código de Destino en blanco. Informar:
	//Si cada avión viaja completo o con lugares libres, considerando que la capacidad de todos los aviones es de 150 pasajeros. El porcentaje de vuelos completos del día. La cantidad de pasajeros que viajaron a cada país. 
	
	Definir CodeDestin, NumVuelo, CantPasajeroVuel, DestinoACT, Viajes, VueloComple, CantPasajeroPais, PorcenTotal como real; 
	
	
	Escribir "Pasar Destino (code)"; //el codigo de destino a donde vamos y el que si cambia, cambia de paisy el contador se reinicia
	Leer CodeDestin;
	
	Escribir "Num De vuelvo";
	Leer NumVuelo;
	
	Escribir "Pasar Cantidad de Pasajeros";
	Leer CantPasaJeroVuel;

	
	DestinoACT<-0;
	Viajes<-0; //señalizamos en 0 todo los contadores 
	VueloComple<-0; 
	CantPasajeroPais<-0;
	
	Mientras CodeDestin<>0 Hacer //si el destino es en blanco (puse 0 para representar), termina todo
		
		DestinoAct<-CodeDestin; //destino actual
		
		Mientras CodeDestin=DestinoAct Hacer //si el destino no cambia, 
			
			Viajes<-Viajes+1; //cantidad de viajes en total para el porcentaje
			
			Si CantPasajeroVuel=150 Entonces //si el viaje hay 150 personas, esta completo y cuenta el vielo completo y avisa
				Escribir "El Vuelo viaja completo";
				VueloComple<-VueloComple+1;
			Fin Si
			
			CantPasajeroPais<-CantPasaJeroVuel+CantPasajeroPais; //suma la cantidad de personas que viajaron a un pais
			
			Escribir "Pasar Destino (code)";
			Leer CodeDestin;
			
			Escribir "Num De vuelvo"; //vuelve a preguntar dentro del mientras
			Leer NumVuelo;
			
			Escribir "Pasar Cantidad de Pasajeros";
			Leer CantPasaJeroVuel;
			
		Fin Mientras
		
		Escribir "la cantidad de pasajeros que viajaron a ", DestinoACT, " Fue ", CantPasajeroPais; //cantidad de viajeros en tal pais
		
		CantPasajeroPais<-0; //borra para ver cuantas personas viajan en otro pais 
		
	Fin Mientras
	
	Si Viajes>0 Entonces //si el viaje son mas de 1 (es decir entraron datos), saca porcentaje y la cantidad ed viajes completos (150)
		PorcenTotal<-(VueloComple/Viajes)*100;
		Escribir "El porcentaje de viajes completos en el dia fueron %", PorcenTotal;
		Escribir "Viajaron una cantidad de ", Viajes, " De vuelos en total y ", VueloComple, " estuvieron completo";
	SiNo
		Escribir "No ingresaron viajes";
	Fin Si
	
FinAlgoritmo
