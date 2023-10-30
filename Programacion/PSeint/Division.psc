Algoritmo Division
	Definir num, divisor Como Entero;
	Definir char Como Caracter;
	Definir salir Como Logico;
	salir = Falso;
	
	Mientras !salir Hacer
		Escribir "Ingresa el Número a dividir: " Sin Saltar;
		Leer num;
		Escribir "Ingresa el divisor: " Sin Saltar;
		Leer divisor;
		Si divisor > 0 Entonces
			Escribir "El resultado del a división es: " num / divisor;
			SiNo
				Escribir "No se puede dividir por 0";
		FinSi
		Escribir "¿Deseas Calcular Otra Cantidad? N o n para Salir, Cualquier Otra Tecla para Continuar: ";
		Leer char;
		Borrar Pantalla;
		Si char == "n" O char == "N" Entonces
			salir = Verdadero;
		FinSi
	FinMientras
FinAlgoritmo