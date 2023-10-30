Algoritmo Oct_Dec
	Definir num_octal, num_decimal, unidad, decena, centena, mil, tmp, total Como Entero;
	Definir exit Como Caracter;
	Definir salir Como Logico;
	
	Repetir // Bucle para Hacer Otra Operación
		
		Escribir "Ingresa el Número Octal: " Sin Saltar;
		Leer num_octal;
		total = abs(num_octal);
		escribir total;
		
		Escribir "";
		Escribir "¿Deseas Hacer Otra Suma? N o n para Salir, Cualquier Otra Tecla para Continuar: ";
		Leer char;
		Borrar Pantalla;
		salir = exit == "n" O exit == "N";
	Hasta Que salir
FinAlgoritmo