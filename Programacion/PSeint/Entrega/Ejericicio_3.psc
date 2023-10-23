Algoritmo Ejericicio_3
	Definir num, result, contador Como Entero;
	contador <- 0;
	result <- 0;
	Repetir
		Escribir 'Ingresa un Número: 'Sin Saltar;
		Leer num;
		contador <- contador+1;
		Si num>25 Entonces
			result <- result+num;
		FinSi
	Hasta Que contador=3
	Escribir 'El Resultado Es: ', result;
FinAlgoritmo
