Algoritmo Conversor
	Definir num, original, resultado, index, code, i, final como entero;
	Dimension code[100];
	index = 0;
	
	Escribir "";
	Escribir "Conversor de Decimal a Binario.";
	Escribir "";
	Escribir "Introduce un Número Decimal para Convertir: " Sin Saltar;
	Leer num;
	Si num > 0 Entonces
		original = num;
		Mientras num >= 2 Hacer
			code[index] = num % 2;
			index = index + 1;
			resultado = Trunc(num / 2);
			num = resultado;
		FinMientras
		Escribir "";
		Escribir "El Número " original " en Binario es: " Sin Saltar;
		Escribir 1 Sin Saltar;
		Para i = index - 1 Hasta 0 Con Paso -1 Hacer
			Escribir code[i] Sin Saltar;
		FinPara
	SiNo
		Si num == 0 Entonces
			Escribir "El Número " num " en Binario es: " num Sin Saltar;
		FinSi
	FinSi
FinAlgoritmo