Algoritmo Conversor
	Definir num, original, resultado, index, code, i, final como entero; // Defino las variables a usar en el c�digo.
	Dimension code[64]; // Declaro la variable entera code como un array de 64 posiciones.
	index = 0; // Inicializo index a 0.
	
	Escribir ""; // Dejo un rengl�n en blasco
	Escribir "Conversor de Decimal a Binario."; // T�tulo encabesado de la p�gina
	Escribir ""; // Dejo un rengl�n en blasco
	Escribir "Introduce un N�mero Decimal para Convertir: " Sin Saltar; // Pido la introducci�n de un n�mero por teclado.
	Leer num; // Lee el n�mero ingresado del teclado.
	Si num > 0 Entonces // Si el n�mero es mayor que 0.
		original = num; // Hago un backup del n�mero en la variable original.
		Mientras num >= 2 Hacer // Mientras el n�mero sea mayor o igual a 2.
			code[index] = num % 2; // Obtengo en el array code en la posici�n index el m�dulo 2 del n�mero.
			index = index + 1; // Incremento index en 1.
			resultado = Trunc(num / 2); // Asigno a resultado el resultado de dividir el n�mero por 2, truncado ya que no puede tener decimales.
			num = resultado;
		FinMientras
		Escribir "";
		Escribir "El N�mero " original " en Binario es: " Sin Saltar;
		Escribir 1 Sin Saltar;
		Para i = index - 1 Hasta 0 Con Paso -1 Hacer
			Escribir code[i] Sin Saltar;
		FinPara
	SiNo
		Si num == 0 Entonces
			Escribir "El N�mero " num " en Binario es: " num Sin Saltar;
		FinSi
	FinSi
FinAlgoritmo