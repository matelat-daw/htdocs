Algoritmo Bucle
	Definir num Como Entero;
	Definir char Como Caracter;
	Definir salir Como Logico;
	salir = falso;
	num = 0;
	
	Mientras !salir Hacer
		Escribir "Para Salir del Bucle Ingresa un Número Negativo.";
		Mientras num >= 0 Hacer
			Escribir "Ingresa el Número: " Sin Saltar;
			Leer num;
			Si num > 0 Entonces
				Si num % 2 == 0 Entonces
					Escribir "El número es par";
				SiNo
					Escribir "Ese Número es Impar";
				FinSi
			FinSi
		FinMientras
		Escribir "";
		Escribir "Gracias por Usar mi Algoritmo, Adios.";
		Escribir "¿Estás Seguro que Quieres Salir? s o S para Salir, Cualquier Otra Tecla para Continuar: ";
		Leer char;
		Borrar Pantalla;
		Si char == "s" O char == "S" Entonces
			salir = Verdadero;
		SiNo
			num = 0;
		FinSi
	FinMientras
FinAlgoritmo