Proceso Mayores_2
	Definir num1,num2,num3 Como Entero;
	Definir one,two,three Como Logico;
	Definir continuar Como Caracter;
	Repetir
		Escribir 'Este Programa Calcular� la Suma de los N�meros Ingresados que Sean Mayores que 25.';
		Escribir '';
		Escribir 'Ingresa el Primer N�mero: ' Sin Saltar;
		Leer num1;
		Escribir 'Ingresa el Segundo N�mero: ' Sin Saltar;
		Leer num2;
		Escribir 'Ingresa el Tercer N�mero: ' Sin Saltar;
		Leer num3;
		Si num1<=25 Entonces
			Si num2<=25 Entonces
				Si num3<=25 Entonces
					one <- Falso;
					two <- Falso;
					three <- Falso;
				SiNo
					one <- Falso;
					two <- Falso;
					three <- Verdadero;
				FinSi
			SiNo
				Si num3<=25 Entonces
					one <- Falso;
					two <- Verdadero;
					three <- Falso;
				SiNo
					one <- Falso;
					two <- Verdadero;
					three <- Verdadero;
				FinSi
			FinSi
		SiNo
			Si num2<=25 Entonces
				Si num3<=25 Entonces
					one <- Verdadero;
					two <- Falso;
					three <- Falso;
				SiNo
					one <- Verdadero;
					two <- Falso;
					three <- Verdadero;
				FinSi
			SiNo
				Si num3<=25 Entonces
					one <- Verdadero;
					two <- Verdadero;
					three <- Falso;
				SiNo
					one <- Verdadero;
					two <- Verdadero;
					three <- Verdadero;
				FinSi
			FinSi
		FinSi
		Si one Y two Y three Entonces
			Escribir 'Los Tres N�meros son Mayores que 25, el Resultado es: ',num1+num2+num3;
		SiNo
			Si !one Y !two Y !three Entonces
				Escribir 'Todos los N�meros son Menores o Iguales que 25, No se Pueden Sumar.';
			SiNo
				Si !one Y !two Y three Entonces
					Escribir 'Solo el N�mero 3 es Mayor que 25, el Resultado es: ',num3;
				SiNo
					Si !one Y two Y !three Entonces
						Escribir 'Solo el N�mero 2 es Mayor que 25, el Resultado es: ',num2;
					SiNo
						Si one Y !two Y !three Entonces
							Escribir 'Solo el N�mero 1 es Mayor que 25, el Resultado es: ',num1;
						SiNo
							Si !one Y two Y three Entonces
								Escribir 'Los N�meros 2 y 3 Son Mayores que 25, el Resultado es: ',num2+num3;
							SiNo
								Si one Y !two Y three Entonces
									Escribir 'Los N�meros 1 y 3 Son Mayores que 25, el Resultado es: ',num1+num3;
								SiNo
									Escribir 'Los N�meros 1 y 2 Son Mayores que 25, el Resultado es: ',num1+num2;
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
		Escribir ''; // Dejo un Rengl�n en Blanco.
		Escribir 'Deseas Hacer Otra Operaci�n? Escribe n para Salir, Cualquier otra Tecla para Continuar.'; // Pregunto si Quieres Realizar Otra Operaci�n.
		Leer continuar; // Espera la Entrada por Teclado de un Caracter y lo asigna a la Variable continuar.
		Borrar Pantalla; // Borra la Pantalla
	Hasta Que continuar='n'
FinProceso