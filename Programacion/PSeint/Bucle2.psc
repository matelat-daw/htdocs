Algoritmo Bucle2
	Definir num Como Entero;
	Definir char Como Caracter;
	Definir salir Como Logico;
	salir = falso;
	num = 0;
	
	Mientras !salir Hacer
		Escribir "Para Salir del Bucle Ingresa un N�mero Negativo.";
		Escribir "Ingresa el N�mero: " Sin Saltar;
		Leer num;
		Mientras num >= 0 Hacer
			Si num % 2 == 0 Entonces
				Escribir "El n�mero es par";
			SiNo
				Escribir "Ese N�mero es Impar";
			FinSi
			Escribir "Ingresa el N�mero: " Sin Saltar;
			Leer num;
		FinMientras
		Escribir "";
		Escribir "Gracias por Usar mi Algoritmo.";
		Escribir "�Est�s Seguro que Quieres Salir? s o S para Salir, Cualquier Otra Tecla para Continuar: ";
		Leer char;
		Borrar Pantalla;
		Si char == "s" O char == "S" Entonces
			salir = Verdadero;
		SiNo
			num = 0;
		FinSi
	FinMientras
FinAlgoritmo