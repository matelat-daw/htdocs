Algoritmo Conversor
	Definir num, original, resultado, index, code, i, final como entero; // Defino las variables a usar en el código.
	Dimension code[64]; // Declaro la variable entera code como un array de 64 posiciones.
	index = 0; // Inicializo index a 0.
	
	Escribir ""; // Dejo un renglón en blasco
	Escribir "Conversor de Decimal a Binario."; // Título encabesado de la página
	Escribir ""; // Dejo un renglón en blasco
	Escribir "Introduce un Número Decimal para Convertir: " Sin Saltar; // Pido la introducción de un número por teclado.
	Leer num; // Lee el número ingresado del teclado.
	Si num > 0 Entonces // Si el número es mayor que 0.
		original = num; // Hago un backup del número en la variable original.
		Mientras num >= 2 Hacer // Mientras el número sea mayor o igual a 2.
			code[index] = num % 2; // Obtengo en el array code en la posición index el módulo 2 del número.
			index = index + 1; // Incremento index en 1.
			resultado = Trunc(num / 2); // Asigno a resultado el resultado de dividir el número por 2, truncado ya que no puede tener decimales.
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