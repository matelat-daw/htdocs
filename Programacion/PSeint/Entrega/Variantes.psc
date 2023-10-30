Proceso Variantes
	Definir num,original Como Entero;
	Definir continuar Como Caracter;
	Definir already Como Logico;
	Repetir
		already <- Falso;
		Escribir 'Este Programa Multiplicará el Número Ingresado x 3 si es mayor que 15 y le sumará 100 y x 5 si es menor que 15 y le sumará 200 si es menor que 20 ó 100 si es mayor que 20.';
		Escribir '';
		Escribir 'Ingresa un Número: ' Sin Saltar;
		Leer num;
		original <- num;
		Si num>15 Entonces
			num <- num*3;
			num <- num+100;
		SiNo
			Si num<15 Entonces
				num <- num*5;
				Si num>20 Entonces
					num <- num+100;
				SiNo
					Si num<20 Entonces
						num <- num+200;
					SiNo
						Escribir 'Casualmente el Resultado es 20. No se puede Sumar nada a ese Número.';
					FinSi
				FinSi
			SiNo
				Escribir 'El Número Ingresado es 15. Prueba con Otro Número.';
				already <- Verdadero;
			FinSi
		FinSi
		Si !already Entonces
			Escribir 'El Resultado del Número: ',original,' es: ',num;
		FinSi
		Escribir ''; // Dejo un Renglón en Blanco.
		Escribir 'Deseas Hacer Otra Operación? Escribe n para Salir, Cualquier otra Tecla para Continuar.'; // Pregunto si Quieres Realizar Otra Operación.
		Leer continuar; // Espera la Entrada por Teclado de un Caracter y lo asigna a la Variable continuar.
		Borrar Pantalla; // Borra la Pantalla
	Hasta Que continuar='n'
FinProceso