Algoritmo ejercicio38
	//En un colegio se necesita saber el promedio de altura de sus alumnos en cada turno, la información que llega es la siguiente: Alumno/a, altura (en cmtrs), turno (1- Mañana / 2 ? Tarde)
	//El fin del ingreso de datos se produce cuando llega el alumno=0.
	//Los valores se deben mostrar conjuntamente con una leyenda para poder interpretarse correctamente
	Definir alumno, Altura, turno, AlturaMana, ContarAluMana, AlturaTarde, ContarAluTar, contarTotal, PromedioTarde, PromedioMana  Como Real;
	
	
	Escribir "Alumno (con fin 0)"; //ingresamos el alumno (si es 0, termina toda la operacion y queda el ejercicio sin datos)
	leer alumno;
	
	alturatarde<-0;
	alturamana<-0;
	ContarAlumana<-0; //señalizamos todos los acumuladores a 0
	contaralutar<-0;
	contartotal<-0;
	
	Mientras alumno<>0 Hacer //si el numero que ingresamos anterioremente y posteriormente no es 0, seguimos ejecutando
		Escribir "Altura"; 
		leer Altura;
		Escribir "turno (1-Mañana / 2-Tarde)";
		Leer Turno;
		
		contarTotal<-contartotal+1; //contamos para saber luego si no se ingreso ningun datos y queda sin datos (no creo que sea necesario, pero ayuda un poco)
		Si turno=1 Entonces
			AlturaMana<-AlturaMana+Altura; //sumamos las alturas
			ContarAluMana<-ContarAluMana+1; //sumamos alumnos de la mañana (para luego sacar el promedio solo con los de la mañana, no con todos los alumnos)
		Fin Si
		
		Si Turno=2 Entonces 
			AlturaTarde<-AlturaTarde+Altura; //hacemos lo mismo pero con los del turno tarde
			ContarAluTar<-ContarAluTar+1;
		Fin Si
		
		Escribir "Alumno (con fin 0)"; //volvemos a preguntar el alumno, porque el anterior se encontraba fuera del mientras
		leer alumno;
	Fin Mientras
	
	Si ContarTotal<>0 Entonces //si no se ingreso ningun numero y el primero fue 0 (el contador sigue en 0, porque no se entro dentro del mientras), avisa que no hubo ningun tipo de dato
		Si ContarAluMana<>0 Entonces 
			PromedioMana<-AlturaMana/contarAlumana; //si ingreso minimo 1, saca el promedio y dice cual fue
			Escribir "el promedio de altura de la MAÑANA es ", PromedioMana;
		SiNo
			Escribir "sin datos de la mañana";//si no se ingreso ningun alumno de la mañana, avisa que no ingresaron datos de ese horario
		Fin Si
		
		Si contarAlutar<>0 Entonces //se hace lo mismo con los de la tarde
			PromedioTarde<-AlturaTarde/contarAlutar;
			Escribir "el promedio de altura de la Tarde es ", Promediotarde;
		SiNo
			Escribir "sin datos de la tarde";
		Fin Si
	SiNo
		escribir "sin datos";
	Fin Si
	
	
FinAlgoritmo
