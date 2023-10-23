Proceso Ejercicio_1
	Definir num, tmp Como Real; // Definici�n de las Variables como Real (Decimal).
	Definir continuar Como Caracter; // Definici�n de continuar como Caracter.
	
	Repetir // Uso Repetir
	Escribir "Ingresa tu N�mero: " Sin Saltar; // Pide un N�mero.
	Leer num; // Lee el N�mero desde el Teclado
	Si Trunc(num) - num <> 0 Entonces // Si a la Parte Entera del N�mero Ingresado se resta el N�mero Ingresado y no da 0, el N�mero es Decimal.
		Escribir "Ese N�mero no es Entero. Por Favor Ingresa un N�mero Entero."; // Informo que el N�mero no es Entero.
	SiNo // Si no, el N�mero es Entero.
		tmp = num / 2; // Asgino a la variable tmp el N�mero Ingresado Dividido por 2.
		Si Trunc(tmp) - tmp <> 0 Entonces // Si a la Parte Entera de la Variable tmp se resta la variable tmp y no da 0, el N�mero es Decimal.
			Escribir "El N�mero " num " No Cumple la Condici�n."; // Muestro que el N�mero no Cumple la Condici�n, ya que se Espera que la Suma de 2 N�meros Impares de Como Resulato el N�mero Ingresado.
		SiNo // Si no.
			Si num / 2 % 2 <> 0 Entonces // Verifico si el Resto de la divisi�n del N�mero Ingresado Dividido por 2 es Distinto de 0.
				Escribir "El N�mero " num " Cumple la condici�n, ya que es la suma de " num / 2 " + " num / 2 " y " num / 2 " es un N�mero Impar."; // Si se Cumple, el N�mero Cumple la Condici�n.
			SiNo // Si no.
				Escribir "El N�mero " num " No Cumple la Condici�n."; // El N�mero no Cumple la Condici�n.
			FinSi
		FinSi
	FinSi
	Escribir ""; // Dejo un Rengl�n en Blanco.
	Escribir "Deseas Hacer Otra Operaci�n? Escribe n para Salir, Cualquier otra Tecla para Continuar."; // Pregunto si Quieres Realizar Otra Operaci�n.
	Leer continuar; // Espera la Entrada por Teclado de un Caracter y lo asigna a la Variable continuar.
	Borrar Pantalla; // Borra la Pantalla
	Hasta Que continuar = "n" // Repite Hasta que continuar sea n.
FinProceso