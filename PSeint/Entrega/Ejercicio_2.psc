Proceso Ejercicio_2
	Definir intervalo_1, intervalo_2, num Como Entero; // Defino las Variables com Enteros.
	Definir continuar Como Caracter; // Defino continuar como Caracter.
	
	Repetir // Uso Repetir
		Escribir "Ingresa el Primer N�mero del Intervalo: " Sin Saltar; // Pido que se Ingrese el Primer Intervalo.
		Leer intervalo_1; // Lee el Intervalo por Teclado.
		Escribir "Ingresa el Segundo N�mero del Intervalo: " Sin Saltar; // Pido que se Ingrese el Segundo Intervalo.
		Leer intervalo_2; // Lee el Intervalo por Teclado.
		Escribir "Ingresa el Tercer N�mero del Intervalo: " Sin Saltar; // Pido que se Ingrese el Primer Intervalo.
		Leer num; // Lee el Intervalo por Teclado.
		// Si num >= intervalo_1 Y num <= intervalo_2 Entonces // Verifico si el Tercer N�mero Es Mayor o Igual que el Primero Intervalo Y si es Menor o Igual que el Segundo Intervalo.
			// Escribir "El Tercer N�mero PERTENECE al Intervalo: ", intervalo_1, " <= ", num " <= ", intervalo_2; // Muestro el mensaje Satisfactorio.
		// SiNo // Si no
			// Si num >= intervalo_2 Y num <= intervalo_1 Entonces // Verifico si el Tercer N�mero Es Mayor o Igual que el Segundo Intervalo Y si es Menor o Igual que el Primer Intervalo.
				// Escribir "El Tercer N�mero PERTENECE al Intervalo: ", intervalo_1, " >= ", num, " >= ", intervalo_2; // Muestro el mensaje Satisfactorio.
			// SiNo
				// Escribir "ERROR: El N�mero No Est� Dentro del Intervalo."; // Muestro que No.
			// FinSi
		// FinSi
		Si num <= intervalo_1 Y num >= intervalo_2 O num >= intervalo_1 Y num <= intervalo_2 Entonces
			Escribir "El Tercer N�mero PERTENECE al Intervalo: ", intervalo_1, " <= ", num " <= ", intervalo_2; // Muestro el mensaje Satisfactorio.
		SiNo
			Escribir "ERROR: El N�mero No Est� Dentro del Intervalo."; // Muestro que No.
		FinSi
		Escribir ""; // Dejo un Rengl�n en Blanco.
		Escribir "Deseas Hacer Otra Operaci�n? Escribe n para Salir, Cualquier otra Tecla para Continuar."; // Pregunto si Quieres Realizar Otra Operaci�n.
		Leer continuar; // Espera la Entrada por Teclado de un Caracter y lo asigna a la Variable continuar.
		Borrar Pantalla; // Borra la Pantalla
	Hasta Que continuar = "n"
FinProceso