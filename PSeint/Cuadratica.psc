Algoritmo Cuadratica
	Definir a, b, c Como Entero;
	Definir char Como Caracter;
	Definir salir Como Logico;
	
	Repetir // Bucle para Hacer Otra Operación
		Escribir "Ingresa el Valor de X2: " Sin Saltar;
		Leer a;
		Escribir "Ingresa el Valor de X: " Sin Saltar;
		Leer b;
		Escribir "Ingresa el Valor de la Variable Independiente: " Sin Saltar;
		Leer c;
		Si c > 0 Entonces
			Escribir "Las Posibles Raices de la Ecuación Cuadrática: " a "X2" b "X+" c " son: " Sin Saltar;
			SiNo
				Escribir "Las Posibles Raices de la Ecuación Cuadrática: " a "X2" b "X" c " son: " Sin Saltar;
			FinSi
		Escribir "";
		Escribir "¿Deseas Hacer Otra Operación? N o n para Salir, Cualquier Otra Tecla para Continuar: ";
		Leer char;
		Borrar Pantalla;
		salir = char == "n" O char == "N";
	Hasta Que salir
FinAlgoritmo