Algoritmo Culpable
	Definir veredicto Como Caracter;
	Definir char Como Caracter;
	Definir salir Como Logico;
	salir = Falso;
	
	Mientras !salir Hacer
		Escribir "Dime si Eres Culpable: " Sin Saltar;
		Leer veredicto;
		Si veredicto == "Sí" O veredicto == "sí" o veredicto == "Si" O veredicto == "si" Entonces
			Escribir "Vas a la Carcel.";
		SiNo
			Si veredicto == "No" O veredicto == "no" Entonces
				Escribir "Vas a Casa.";
			SiNo
				Escribir "Documentación Por Favor.";
			FinSi
		FinSi
		Escribir "¿Deseas Agregar a Otro Empleado? N o n para Salir, Cualquier Otra Tecla para Continuar: ";
		Leer char;
		Borrar Pantalla;
		Si char == "n" O char == "N" Entonces
			salir = Verdadero;
		FinSi
	FinMientras
	
FinAlgoritmo