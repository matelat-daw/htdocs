Proceso Ejercicio_2
	Definir intervalo_1, intervalo_2, num Como Entero; // Defino las Variables com Enteros.
	Definir continuar Como Caracter; // Defino continuar como Caracter.
	
	Repetir // Uso Repetir
		Escribir "Ingresa el Primer Número del Intervalo: " Sin Saltar; // Pido que se Ingrese el Primer Intervalo.
		Leer intervalo_1; // Lee el Intervalo por Teclado.
		Escribir "Ingresa el Segundo Número del Intervalo: " Sin Saltar; // Pido que se Ingrese el Segundo Intervalo.
		Leer intervalo_2; // Lee el Intervalo por Teclado.
		Escribir "Ingresa el Tercer Número del Intervalo: " Sin Saltar; // Pido que se Ingrese el Primer Intervalo.
		Leer num; // Lee el Intervalo por Teclado.
		// Si num >= intervalo_1 Y num <= intervalo_2 Entonces // Verifico si el Tercer Número Es Mayor o Igual que el Primero Intervalo Y si es Menor o Igual que el Segundo Intervalo.
			// Escribir "El Tercer Número PERTENECE al Intervalo: ", intervalo_1, " <= ", num " <= ", intervalo_2; // Muestro el mensaje Satisfactorio.
		// SiNo // Si no
			// Si num >= intervalo_2 Y num <= intervalo_1 Entonces // Verifico si el Tercer Número Es Mayor o Igual que el Segundo Intervalo Y si es Menor o Igual que el Primer Intervalo.
				// Escribir "El Tercer Número PERTENECE al Intervalo: ", intervalo_1, " >= ", num, " >= ", intervalo_2; // Muestro el mensaje Satisfactorio.
			// SiNo
				// Escribir "ERROR: El Número No Está Dentro del Intervalo."; // Muestro que No.
			// FinSi
		// FinSi
		Si num <= intervalo_1 Y num >= intervalo_2 O num >= intervalo_1 Y num <= intervalo_2 Entonces
			Escribir "El Tercer Número PERTENECE al Intervalo: ", intervalo_1, " <= ", num " <= ", intervalo_2; // Muestro el mensaje Satisfactorio.
		SiNo
			Escribir "ERROR: El Número No Está Dentro del Intervalo."; // Muestro que No.
		FinSi
		Escribir ""; // Dejo un Renglón en Blanco.
		Escribir "Deseas Hacer Otra Operación? Escribe n para Salir, Cualquier otra Tecla para Continuar."; // Pregunto si Quieres Realizar Otra Operación.
		Leer continuar; // Espera la Entrada por Teclado de un Caracter y lo asigna a la Variable continuar.
		Borrar Pantalla; // Borra la Pantalla
	Hasta Que continuar = "n"
FinProceso