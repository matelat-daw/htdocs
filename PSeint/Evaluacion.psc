Algoritmo Evaluacion
	Definir eval Como Real;
	Definir char Como Caracter;
	Definir salir Como Logico;
	salir = Falso;
	
	Mientras !salir Hacer
		Escribir "Ingresa el valor de la Evaluaci�n del Empleado: " Sin Saltar;
		Leer eval;
		Si eval == .0 Entonces
			Escribir "La Evaluaci�n del Empleado ha Sido: " eval " su Nivel de Rendimiento es Inaceptable, Conseguir�: " 2400 * eval;
		SiNo
			Si eval == .4 Entonces
				Escribir "La Evaluaci�n del Empleado ha Sido: " eval " su Nivel de Rendimiento es Aceptable, Conseguir�: " 2400 * eval;
			SiNo
				Escribir "La Evaluaci�n del Empleado ha Sido: " eval " su Nivel de Rendimiento es Excelente, Conseguir�: " 2400 * eval;
			FinSi
		FinSi
		Escribir "�Deseas Agregar a Otro Empleado? N o n para Salir, Cualquier Otra Tecla para Continuar: ";
		Leer char;
		Borrar Pantalla;
		Si char == "n" O char == "N" Entonces
			salir = Verdadero;
		FinSi
	FinMientras
FinAlgoritmo