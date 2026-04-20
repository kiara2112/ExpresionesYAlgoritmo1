Algoritmo Ejercicio9
	
	//Diseñar un algoritmo que calcule el salario mensual de una persona, teniendo como dato el valor hora, la cantidad de horas semanales 
	//(tener presente que en el mes tenemos 4 semanas). A ese valor, se le denomina, sueldo bruto. Al sueldo bruto, se le debe descontar el 11% por
	//jubilación, el 3% por obra social y el 3% por contribución al sistema de salud de jubilaciones,
	//éste nuevo valor es el sueldo neto, lo cual se debe mostrar al final de la operación.
	
	Definir HoraSem, PrecioHora Como Entero;
	definir SueldoBruto,SueldoNeto, DescuentJub,DescuentSocial,DescuentSalud como real;
	
	Escribir "¿Cuantas Horas semanales trabaja?";
	Leer HoraSem;
	Escribir "¿Cuanto gana por hora?";
	Leer PrecioHora;
	
	SueldoBruto<- (HoraSem*4)*PrecioHora; //La cuenta la hago directamente, sin separar horas
	
	DescuentJub<- SueldoBruto*11/100; //seria lo mismo que poner sueldoBruto*0,11
	DescuentSocial<- SueldoBruto*3/100;
	DescuentSalud<- SueldoBruto*3/100;
	
	SueldoNeto<-SueldoBruto-DescuentJub-DescuentSocial-DescuentSalud;
	
	Escribir "El Sueldo Bruto es ", SueldoBruto;
	Escribir "El Descuento por Jubilacion es ", DescuentJub;
	Escribir "El Descuento por Obra Social es ", DescuentSocial;
	Escribir "El Descuento por Sistema de Salud de Jubilacion es ", DescuentSalud;
	Escribir "El Sueldo Neto es ", SueldoNeto;
	
FinAlgoritmo
