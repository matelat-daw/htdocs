Algoritmo Unidad_decena_2
	Definir num, numbase, doscifras, unidad, decena, result Como Entero;
	
	Escribir "Ingresa el Número: " Sin Saltar;
	Leer num;
	doscifras = num % 100;
	numbase = num - doscifras;
	unidad = doscifras % 10;
	decena = Trunc(doscifras / 10);
	result = numbase + decena + unidad * 10;
	Escribir "El resultado de invertir la unidad y la decena es: " result;
FinAlgoritmo
