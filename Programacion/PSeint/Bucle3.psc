Funcion num <- repeat(0)
	Definir num Como Entero;
	Escribir "Ingresa el Número: " Sin Saltar;
	Leer num;
Fin Funcion

Algoritmo Bucle3
	Definir num Como Entero;
	Definir char Como Caracter;
	Definir salir Como Logico;
	salir = falso;
	num = 0;
	
	Repetir
		Escribir "Para Salir del Bucle Ingresa un Número Negativo.";
		num = repeat(0);
		Mientras num >= 0 Hacer
			Si num % 2 == 0 Entonces
				Escribir "El número es par";
			SiNo
				Escribir "Ese Número es Impar";
			FinSi
			num = repeat(0);
		FinMientras
		Escribir "";
		Escribir "Gracias por Usar mi Algoritmo.";
		Escribir "¿Estás Seguro que Quieres Salir? s o S para Salir, Cualquier Otra Tecla para Continuar: ";
		Leer char;
		Borrar Pantalla;
		salir = char == "s" O char == "S";
		num = 0;
	Hasta Que salir
FinAlgoritmo

