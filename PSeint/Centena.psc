Algoritmo Centena
	Definir num, result Como Entero;
	
	Escribir "Ingrea un Número de al menos 3 cifras: " Sin Saltar;
	Leer num;
	result = Trunc(num / 100) % 10;
	Escribir "La centena del número ingresado es: " result;
FinAlgoritmo