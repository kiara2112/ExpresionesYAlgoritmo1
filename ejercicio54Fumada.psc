Algoritmo ejercicio54Fumada
	
	
	Definir VEC1, Num, Guardar, par, impar, suma como entero;
	Dimension VEC1[101]; //hacemos que el vector sea de 5 casilleros
    Par<-1;
	Impar<-0;
	VEC1[100] <- 0;
	Para Num<-0 Hasta 99 Con Paso 1 Hacer
		Escribir "Pasar numero a guardar";
		leer Guardar;
		VEC1[Num]<-guardar;
		Suma<-guardar+suma;
	Fin Para
	
	Para i <- 0 Hasta 99 Hacer
		Si suma MOD 2 = 0 Entonces
			
			Si i MOD 2 = 0 Entonces
				Escribir VEC1[i]
			FinSi
			
		Sino
			
			Si i MOD 2 <> 0 Entonces
				Escribir VEC1[i]
			FinSi
			
		FinSi
		
	FinPara
	
	
	
	
FinAlgoritmo
