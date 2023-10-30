Algoritmo Evaluacion
	Definir eval Como Real;
	Definir rendimiento Como Caracter;
	Definir char Como Caracter;
	Definir salir Como Logico;
	Definir error Como Logico;
	salir = Falso;
	
	Mientras !salir Hacer
		Escribir "Ingresa el valor de la Evaluaci�n del Empleado: " Sin Saltar;
		Leer eval;
		Si eval == .0 Entonces
			error = Falso;
			rendimiento = "Inaceptable";
		SiNo
			Si eval == .4 Entonces
				error = Falso;
				rendimiento = "Aceptable";
			SiNo
				Si eval >= .6 Y eval <= 1
					error = Falso;
					rendimiento = "Excelente";
				SiNo
					error = Verdadero;
					Escribir "No existe esa Evaluaci�n, Intentalo de Nuevo.";
				FinSi
			FinSi
		FinSi
		Si !error Entonces
			Escribir "La evaluaci�n del Empleado ha sido: " eval " Su Nivel de Rendimiento es: " rendimiento " Conseguir�: " 2400 * eval;
		FinSi
		Escribir "�Deseas Efectuar Otra Evaluaci�n? N o n para Salir, Cualquier Otra Tecla para Continuar: ";
		Leer char;
		Borrar Pantalla;
		Si char == "n" O char == "N" Entonces
			salir = Verdadero;
		FinSi
	FinMientras
FinAlgoritmo