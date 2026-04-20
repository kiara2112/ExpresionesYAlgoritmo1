Algoritmo Ejercicio44
	//Se ingresa números enteros no nulos (el ingreso del 0 representa el fin del ingreso de datos), de los cuales se debe calcular: El promedio de los negativos menores a -15 ingresados en orden impar.
	//El menor de los positivos y su orden de ingreso, El porcentaje de valores ingresados entre 25 y 50 respecto del total ingresado. Los valores se deben mostrar conjuntamente con una leyenda para poder interpretarse correctamente.
	
	definir Num, contar, Negativos, ContarNeg, Contpos, MenorPos, PosMenor, contarPorce, Promedio, Porcentaje como real;
	
	Escribir "Numero (no nulo)"; //empezamos con el numero fuera del mientras 
	Leer num;
	
	Contar<-0;
	Negativos<-0;
	ContarPorce<-0;
	contPos<-0; //señalizamos todo con 0
	ContarNeg<-0;
	menorPos<-0;
	posMenor<-0;
	
	Mientras Num<>0 Hacer //si el numero que ingresamos es 0, termina el programa
		
		contar<-contar+1; //vamos contando la cantidad de numeros (para el porcentaje ya la hubicacion de los numeros)
		
		Si Num<(-15) y (Contar mod 2<>0) Entonces //negativos menores a -15 ingresados en orden impar
			Negativos <-Negativos + Num; //la suma de numeros negativos
			ContarNeg <-ContarNeg+1; //cuantos numeros negativos ingresaron
		Fin Si
		
		Si num>0 Entonces//aca trabajamos con los numeros positivos
			
			contPos<-contPos+1; //para empezar con unos numeros, señalizamos este con 1 y vemos cuantos numeros positivos van ingresando (pero solo utilizamos al principio)
			
			Si contPos=1 Entonces //utilizamos el primer dato y lo usamos como el menor de los pósitivos para comparar mas adelnate 
				menorPos<-num;
				posMenor<-contar;
			FinSi
			
			Si num<menorPos Entonces //a partir de aca comparamos todos los numeros con el primer que señalizamos y todos los siguientes que vayan cambiando
				menorPos<-num;
				posMenor<-contar;
			FinSi
			
		FinSi
		
		Si Num>=25 y Num<=50 Entonces //vemos que numeros entre 25 y 50 ingresaron y vamos contando cuantos fueron
			ContarPorce<-ContarPorce+1;
		Fin Si
		
		Escribir "Numero (no nulo)"; //volvemos a preguntar, pero esta vez dentro del mientras
		Leer num;
		
	Fin Mientras
	
	Si ContarNeg>0 Entonces //por si esta la posibilidad que ningun numero negativo ingresa y no salga error, usamos un si para que si es verdadero sacamos el promedio
		promedio<-(Negativos/ContarNeg);
		Escribir" el promedio de negativos menores a -15 ingresados en orden impar fue: ", promedio;
	SiNo
		Escribir "No ingresaron negativos menores a -15 ingresados en orden impar"; //si no ingreso ninguno, no saca el promedio y avisa del mismo
	Fin Si
	
	Si ContarPorce>0 Entonces //hace lo mismo con los numeros entre 25 y 50, si no ingreso ninguno, no saca el porcentaje
		Porcentaje<-(ContarPorce/contar)*100;
		Escribir "el porcentaje de numeros entre 25 y 50 fue ", Porcentaje;
	SiNo
		Escribir "No ingresaron numeros entre 25 y 50"; //avisa que no salio ningun numero con estas caracteristicas
	Fin Si
	
	Escribir "el menor de los positivos fue: ",menorPos, " en la posicion ", posMenor; //muestra cual numero es menor (de los positivos) y en que posicion se encuentra
	
	
FinAlgoritmo
