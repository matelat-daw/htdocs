Algoritmo Entrada
	Definir edad Como Entero;
	Definir char Como Caracter;
	Definir salir Como Logico;
	salir = Falso;
	
	Mientras !salir Hacer
		Escribir "Ingresa la Edad de la Persona: " Sin Saltar;
		Leer edad;
		Si edad < 4 Entonces
			Escribir "Entra Gratis";
		SiNo
			Si edad >= 4 Y edad <= 18 Entonces
				Escribir "Paga 5 ?";
			SiNo
				Escribir "Paga 10 ?";
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