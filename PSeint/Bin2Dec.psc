Proceso Binaro2Decimal
	Definir num, array, aux Como Caracter;
	Definir result, size, i, x Como Entero;
	result = 0;
	x = 0;
	Dimension array[64];
	
	Escribir "Ingresa el Número Binario" Sin Saltar;
	Leer num;
	size = Longitud(num);
	Para i = 0 Hasta size - 1 Con Paso 1 Hacer
		array[i] = Subcadena(num, i, i);
	Fin Para
	Mientras size - x > x Hacer
		aux = array[x];
		array[x] = array[size - 1 - x];
		array[size - 1 - x] = aux;
		x = x + 1;
	FinMientras
	x = 0;
	Escribir "El resultado es: " Sin Saltar;
	Para i = 0 Hasta size - 1 Con Paso 1 Hacer
		result = result + ConvertirANumero(array[i]) * 2 ^ x;
		x = x + 1;
	Fin Para
	Escribir "El número en Decimal es: " result;
FinProceso