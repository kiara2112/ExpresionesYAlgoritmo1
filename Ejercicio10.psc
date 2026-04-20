Algoritmo Ejercicio10
	//Una empresa de software, ha decidido un aumento en sus salarios, en base a la siguiente escala:
	//0-150.000 = %20
	//150.001- 200.000 = %10
	//200.001- 250.000 = %5
	//250.001- 300.000 = %0
	//Diseñar un algoritmo que calcule el salario mensual de una persona, teniendo como dato el valor hora y la cantidad de horas semanales (tener presente que en el mes tenemos 4 semanas).}
	//A ese valor, se le denomina, sueldo bruto. Al mismo aplicarle el porcentaje de aumento correspondiente (según la tabla anterior).
	//Al sueldo bruto, se le debe descontar el 11% por jubilación, el 3% por obra social y el 3% por contribución al sistema de salud de jubilaciones, éste nuevo valor es el sueldo neto, lo cual
	//se debe mostrar al final de la operación.
	
	Definir HoraSem, PrecioHora Como Entero;
	definir SueldoBruto,SueldoNeto, DescuentJub,DescuentSocial,DescuentSalud,AumentoSueldo,SueldoAumentado como real;
	
	Escribir "¿Cuantas Horas semanales trabaja?";
	Leer HoraSem;
	Escribir "¿Cuanto gana por hora?";
	Leer PrecioHora;
	
	SueldoBruto<- HoraSem*4*PrecioHora; //La cuenta la hago directamente, sin separar horas
	AumentoSueldo<-0;
	
	Si (SueldoBruto>0) y (SueldoBruto<=150000) Entonces
		AumentoSueldo<-SueldoBruto*20/100;
	Fin Si
	Si (SueldoBruto>=150001) y (SueldoBruto<=200000) Entonces
		AumentoSueldo<-SueldoBruto*5/100;
	Fin Si
	Si (SueldoBruto>=200001) y (SueldoBruto<=250000) Entonces
		AumentoSueldo<-SueldoBruto*5/100;
	Fin Si
	Si (SueldoBruto>=250001) Entonces //este no es necesario que este porque no hay aumento y (SueldoBruto<=300000) no afecta mucho en la cuenta
		Escribir "No hay aumento :(";
	Fin Si
	
	DescuentJub<- SueldoBruto*11/100; //seria lo mismo que poner sueldoBruto*0,11
	DescuentSocial<- SueldoBruto*3/100;
	DescuentSalud<- SueldoBruto*3/100;
	

	SueldoAumentado<-SueldoBruto+AumentoSueldo;
	SueldoNeto<-SueldoAumentado-DescuentJub-DescuentSocial-DescuentSalud;
	
	Escribir "El Sueldo Bruto es ", SueldoBruto;
	Escribir "El Descuento por Jubilacion es ", DescuentJub;
	Escribir "El Descuento por Obra Social es ", DescuentSocial;
	Escribir "El Descuento por Sistema de Salud de Jubilacion es ", DescuentSalud;
	Escribir "El Aumento de sueldo es de ", AumentoSueldo;
	Escribir "El Sueldo Neto es ", SueldoNeto;
	
FinAlgoritmo


//Si SueldoBruto>0 y SueldoBruto<=150000 Entonces
//AumentoSueldo<-SueldoBruto*20/100;
//SiNo
	//Si SueldoBruto>=150001 y SueldoBruto<=200000 Entonces
		//AumentoSueldo<-SueldoBruto*10/100;
	//SiNo
		//Si SueldoBruto>=200001 y SueldoBruto<=250000 Entonces
			//AumentoSueldo<-SueldoBruto*5/100;
		//SiNo
			//Si SueldoBruto>=250001 y SueldoBruto<=300000 Entonces
				//Escribir "Sobrepasa el sueldo, no abra aumento"
			//Fin Si
		//Fin Si
	//Fin Si
//Fin Si
