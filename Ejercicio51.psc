Algoritmo Ejercicio51
	//En un archivo vienen informados los datos de las notas que los alumnos obtienen en las materias que cursan, se encuentra ordenado por Nro Legajo- Apellido y Nombre del alumno. Asimismo, existen más de una nota por materia,
    //por lo tanto, se desea saber: Cuál alumno resultó el de mayor promedio, y su promedio. La nota promedio de cada alumno en cada materia. El promedio general (de todos los alumnos y todas las materias).
	//Imprimir con una leyenda los valores solicitados. La finalización está determinada por las siglas NN (Ningún Nombre).
	
	Escribir "ingrese el Legajo/Apellido/Nombre: ";
	leer Legajo;
	Escribir "Ingrese el Código de la Materia: ";
	Leer Materia;
	Escribir "Ingrese la Nota de la Materia: ";
	Leer Nota;
	
	
	Mientras Nombre<>0 Hacer //inalización está determinada por las siglas NN (Ningún Nombre), pongo 0 para representarlo solamente 
		
		
		Mientras MateriaAct=Materia Hacer
			
			
			
			Escribir "ingrese el Legajo/Apellido/Nombre: ";
			leer Legajo;
			Escribir "Ingrese el Código de la Materia: ";
			Leer Materia;
			Escribir "Ingrese la Nota de la Materia: ";
			Leer Nota;
			
		Fin Mientras
		
		
	Fin Mientras
	
	
	
	
	
	
FinAlgoritmo
