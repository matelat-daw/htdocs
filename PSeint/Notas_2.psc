Algoritmo Notas_2
	Definir nota Como Entero;
	Definir salir Como Logico;
	Definir char Como Caracter;
	salir = falso;
	
	Mientras !salir Hacer
		Escribir "Ingresa la nota del Alumno: " Sin Saltar;
		Leer nota;
		Si nota < 5 Entonces
			Escribir "Suspendido.";
		SiNo
			Si nota < 6 Entonces
				Escribir "Suficiente";
			SiNo
				Si nota < 7 Entonces
					Escribir "Bien";
				SiNo
					Si nota < 8 Entonces
						Escribir "Notable";
					SiNo
						Si nota < 9 Entonces
							Escribir "Notable";
						SiNo
							Escribir "Sobresaliente";
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
		Escribir "¿Deseas Calcular Otra Cantidad? N o n para Salir, Cualquier Otra Tecla para Continuar: ";
		Leer char;
		Borrar Pantalla;
		Si char == "n" O char == "N" Entonces
			salir = Verdadero;
		FinSi
	FinMientras
FinAlgoritmo