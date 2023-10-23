Algoritmo Sumador2
	Definir total, num, indice Como Entero;
	Definir char Como Caracter;
	Definir salir Como Logico;
	total = 0;
	
	Repetir
		Para indice = 0 Hasta 5 Hacer
			Escribir "Ingresa un Número a Acumular: " Sin Saltar;
			Leer num;
			Escribir "";
			total = total + num;
		FinPara
		Escribir "La Suma Total es: " total;
		Escribir "";
		Escribir "¿Deseas Hacer Otra Suma? N o n para Salir, Cualquier Otra Tecla para Continuar: ";
		Leer char;
		Borrar Pantalla;
		salir = char == "n" O char == "N";
	Hasta Que salir
FinAlgoritmo