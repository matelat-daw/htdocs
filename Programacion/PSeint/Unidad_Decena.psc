Algoritmo Unidad_Decena
	Definir num, resto1, resto2, num2, num3, result1, result2, final Como Entero;
	
	Escribir "Ingresa el número a intercambiar la decena por la centena y viseversa: " Sin Saltar;
	Leer num;
	resto1 = num % 10;
	num2 = Trunc(num / 10);
	resto2 = num2 % 10;
	num3 = Trunc(num2 / 10);
	num3 = num3 * 10;
	result1 = num3 + resto1;
	result2 = result1 * 10;
	final = result2 + resto2;
	Escribir "El número con la unidad y la decena invertidos es: " final;
FinAlgoritmo