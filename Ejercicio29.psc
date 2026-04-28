Algoritmo ejercicio29
	//En una fábrica de neumáticos, se ha registrado el número de máquina (del 1 al 4) y la medida que tiene cada uno (diámetro).
	//Además, para cada máquina se conoce el diámetro máximo y mínimo permitido en la fabricación. Teniendo presente que se han de analizar 5000 neumáticos, dónde la información con la que se cuenta es:
	//Número de máquina, diámetro, diámetro máximo y mínimo permitido Hallar para cada máquina que porcentaje de neumáticos fueron fabricados fuera de tolerancia respecto de la producción total de cada máquina.
	//Los resultados deben de estar acompañados por una leyenda para poder interpretar los mismos.
	//la verdad me da paja señalizar todo, es muy largo (seguro lo haga mas adelante, pero ahora no)
	
	definir 
	
	
	Para Maquina<-1 Hasta 4 Con Paso 1 Hacer
		//agrega el minimo y el maximo de cada maquina para comparar luego si alguna sale de los parametros 
		Si Maquina=1 Entonces
			Escribir "Cual es el diametro Maximo";
			Leer Maxi1;
			Escribir "Cual es el diametro Minimo;
			Leer Min1;
		Fin Si
		
		Si Maquina=2 Entonces
			Escribir "Cual es el diametro Maximo";
			Leer Maxi2;
			Escribir "Cual es el diametro Minimo;
			Leer Min2;
		Fin Si
		
		Si Maquina=3 Entonces
			Escribir "Cual es el diametro Maximo";
			Leer Maxi3;
			Escribir "Cual es el diametro Minimo;
			Leer Min3;
		Fin Si
		
		Si Maquina=4 Entonces
			Escribir "Cual es el diametro Maximo";
			Leer Maxi4;
			Escribir "Cual es el diametro Minimo;
			Leer Min4;
		Fin Si
		
	Fin Para
	
	Para I<-1 Hasta 5000 Con Paso 1 Hacer
		Escribir "Número de máquina";
		leer MaquinaNum;
		Escribir "Diametro"
		Leer Diametro;
		//va viendo de cada maquina
		Si MaquinaNum=1 Entonces //si es la maquina 1
			ContarMaq1<-ContarMaq1+1; //avisa que entro 1 en la maquina 1
			Si Diametro<Maxi1 Entonces //ve si es menor que el maximo 
				Si Diametro> Min1 Entonces //ve si es mayor al minimo de la maquina 
					TotalSiNeu1<-TotalSiNeu1+1; //agrega que esta dentro de los  parametros de la maquina
				Fin Si
			Fin Si
		Fin Si
		 //hace lo mismo con todas las maquinas
		Si MaquinaNum=2 Entonces
			ContarMaq2<-ContarMaq2+1;
			Si Diametro<Maxi2 Entonces
				Si Diametro> Min2 Entonces
					TotalSiNeu2<-TotalSiNeu2+1;
				Fin Si
			Fin Si
		Fin Si
		
		Si MaquinaNum=3 Entonces
			ContarMaq3<-ContarMaq3+1;
			Si Diametro<Maxi3 Entonces
				Si Diametro> Min3 Entonces
					TotalSiNeu1<-TotalSiNeu3+1;
				Fin Si
			Fin Si
		Fin Si
		
		Si MaquinaNum=4 Entonces
			ContarMaq4<-ContarMaq4+1;
			Si Diametro<Maxi4 Entonces
				Si Diametro> Min4 Entonces
					TotalSiNeu4<-TotalSiNeu4+1;
				Fin Si
			Fin Si
		Fin Si
		
	Fin Para
	//ve entre las maquinas que si y todas las maquinas, el contrario de las buenas, son las fallas y los resta 
	Falla1<-ContarMaq1-TotalSiNeu1;
	Falla2<-ContarMaq2-TotalSiNeu2;
	Falla3<-ContarMaq3-TotalSiNeu3;
	Falla4<-ContarMaq4-TotalSiNeu4;
	//pregunta si entro en esa maquina en especifico 
	Si ContarMaq1>0 Entonces
		PorcenMaq1<-(Falla1/ContarMaq1)*100; //saca el procentaje de falla 
		Escribir "El Porcentaje de falla de la Maquina 1 es ", ContarMaq1;
	SiNo
		Escribir "No ingresaron datos de la maquina 1";
	Fin Si
	
	Si ContarMaq2>0 Entonces
		PorcenMaq2<-(Falla2/ContarMaq2)*100;
		Escribir "El Porcentaje de falla de la Maquina 2 es ", ContarMaq2;
	SiNo
		Escribir "No ingresaron datos de la maquina 2";
	Fin Si
	
	Si ContarMaq3>0 Entonces
		PorcenMaq3<-(Falla3/ContarMaq3)*100;
		Escribir "El Porcentaje de falla de la Maquina 3 es ", ContarMaq3;
	SiNo
		Escribir "No ingresaron datos de la maquina 3";
	Fin Si
	
	Si ContarMaq4>0 Entonces
		PorcenMaq4<-(Falla4/ContarMaq4)*100;
		Escribir "El Porcentaje de falla de la Maquina 4 es ", ContarMaq3;
	SiNo
		Escribir "No ingresaron datos de la maquina 3";
	Fin Si
	
FinAlgoritmo
