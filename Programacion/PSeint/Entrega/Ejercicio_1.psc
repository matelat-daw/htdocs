Proceso Ejercicio_1
	Definir num, tmp Como Real; // Definición de las Variables como Real (Decimal).
	Definir continuar Como Caracter; // Definición de continuar como Caracter.
	
	Repetir // Uso Repetir
	Escribir "Ingresa tu Número: " Sin Saltar; // Pide un Número.
	Leer num; // Lee el Número desde el Teclado
	Si Trunc(num) - num <> 0 Entonces // Si a la Parte Entera del Número Ingresado se resta el Número Ingresado y no da 0, el Número es Decimal.
		Escribir "Ese Número no es Entero. Por Favor Ingresa un Número Entero."; // Informo que el Número no es Entero.
	SiNo // Si no, el Número es Entero.
		tmp = num / 2; // Asgino a la variable tmp el Número Ingresado Dividido por 2.
		Si Trunc(tmp) - tmp <> 0 Entonces // Si a la Parte Entera de la Variable tmp se resta la variable tmp y no da 0, el Número es Decimal.
			Escribir "El Número " num " No Cumple la Condición."; // Muestro que el Número no Cumple la Condición, ya que se Espera que la Suma de 2 Números Impares de Como Resulato el Número Ingresado.
		SiNo // Si no.
			Si num / 2 % 2 <> 0 Entonces // Verifico si el Resto de la división del Número Ingresado Dividido por 2 es Distinto de 0.
				Escribir "El Número " num " Cumple la condición, ya que es la suma de " num / 2 " + " num / 2 " y " num / 2 " es un Número Impar."; // Si se Cumple, el Número Cumple la Condición.
			SiNo // Si no.
				Escribir "El Número " num " No Cumple la Condición."; // El Número no Cumple la Condición.
			FinSi
		FinSi
	FinSi
	Escribir ""; // Dejo un Renglón en Blanco.
	Escribir "Deseas Hacer Otra Operación? Escribe n para Salir, Cualquier otra Tecla para Continuar."; // Pregunto si Quieres Realizar Otra Operación.
	Leer continuar; // Espera la Entrada por Teclado de un Caracter y lo asigna a la Variable continuar.
	Borrar Pantalla; // Borra la Pantalla
	Hasta Que continuar = "n" // Repite Hasta que continuar sea n.
FinProceso