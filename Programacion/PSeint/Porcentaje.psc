Algoritmo Porcentaje
	Definir girls, boys, percent_boy, percent_girl, result Como Entero;
	
	Escribir "Ingresa el n�mero de Alumnas: " Sin Saltar;
	Leer girls;
	Escribir "Ingresa el n�mero de Alumnos: " Sin Saltar;
	Leer boys;
	result = girls + boys;
	percent_girl = trunc(girls * 100 / result);
	percent_boy = 100 - percent_girl;
	Escribir "El porcentaje de Mujeres es: " percent_girl " y el porcentaje de Varones es: " percent_boy;
FinAlgoritmo