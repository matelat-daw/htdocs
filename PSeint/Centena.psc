Algoritmo Centena
	Definir num, result Como Entero;
	
	Escribir "Ingrea un N�mero de al menos 3 cifras: " Sin Saltar;
	Leer num;
	result = Trunc(num / 100) % 10;
	Escribir "La centena del n�mero ingresado es: " result;
FinAlgoritmo