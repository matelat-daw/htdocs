// 8.- Introduce el valor del r�dio de un c�rculo y calcula su �rea y su circunferencia.
Algoritmo Pit�goras
	Definir radio Como Real;
	Definir char Como Caracter;
	Definir salir Como Logico;
	salir = Falso;
	
	Mientras !salir Hacer
		Escribir "Ingrea el Radio de la Circunferencia: " Sin Saltar;
		Leer radio;
		Escribir "";
		Escribir "El Primetro de la circunferencia es: " 2 * PI * radio " y su �rea es: " PI * radio * radio;
		Escribir "";
		Escribir "�Deseas Hacer Otro C�lculo? N o n para Salir, Cualquier Otra Tecla para Continuar: ";
		Leer char;
		Borrar Pantalla;
		Si char == "n" O char == "N" Entonces
			salir = Verdadero;
		FinSi
	FinMientras
FinAlgoritmo