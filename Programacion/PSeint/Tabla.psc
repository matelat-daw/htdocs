Algoritmo Tabla
	Definir num, indice Como Entero;
	Definir char Como Caracter;
	Definir salir Como Logico;

	Repetir
		Escribir "Ingresa el Número para Obtener la Tabla de Multiplicar: ";
		Leer num;
		Para indice = 0 Hasta 10 Con Paso 1 Hacer
			Escribir num " x " indice " = " num * indice;
		Fin Para
		Escribir "";
		Escribir "¿Deseas Hacer Otro Cálculo? N o n para Salir, Cualquier Otra Tecla para Continuar: ";
		Leer char;
		Borrar Pantalla;
		salir = char == "n" O char == "N";
	Hasta Que salir
FinAlgoritmo