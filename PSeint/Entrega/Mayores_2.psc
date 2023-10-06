Proceso Mayores_2
	Definir num1,num2,num3 Como Entero;
	Definir one,two,three Como Logico;
	Definir continuar Como Caracter;
	Repetir
		Escribir 'Este Programa Calculará la Suma de los Números Ingresados que Sean Mayores que 25.';
		Escribir '';
		Escribir 'Ingresa el Primer Número: ' Sin Saltar;
		Leer num1;
		Escribir 'Ingresa el Segundo Número: ' Sin Saltar;
		Leer num2;
		Escribir 'Ingresa el Tercer Número: ' Sin Saltar;
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
			Escribir 'Los Tres Números son Mayores que 25, el Resultado es: ',num1+num2+num3;
		SiNo
			Si !one Y !two Y !three Entonces
				Escribir 'Todos los Números son Menores o Iguales que 25, No se Pueden Sumar.';
			SiNo
				Si !one Y !two Y three Entonces
					Escribir 'Solo el Número 3 es Mayor que 25, el Resultado es: ',num3;
				SiNo
					Si !one Y two Y !three Entonces
						Escribir 'Solo el Número 2 es Mayor que 25, el Resultado es: ',num2;
					SiNo
						Si one Y !two Y !three Entonces
							Escribir 'Solo el Número 1 es Mayor que 25, el Resultado es: ',num1;
						SiNo
							Si !one Y two Y three Entonces
								Escribir 'Los Números 2 y 3 Son Mayores que 25, el Resultado es: ',num2+num3;
							SiNo
								Si one Y !two Y three Entonces
									Escribir 'Los Números 1 y 3 Son Mayores que 25, el Resultado es: ',num1+num3;
								SiNo
									Escribir 'Los Números 1 y 2 Son Mayores que 25, el Resultado es: ',num1+num2;
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
		Escribir ''; // Dejo un Renglón en Blanco.
		Escribir 'Deseas Hacer Otra Operación? Escribe n para Salir, Cualquier otra Tecla para Continuar.'; // Pregunto si Quieres Realizar Otra Operación.
		Leer continuar; // Espera la Entrada por Teclado de un Caracter y lo asigna a la Variable continuar.
		Borrar Pantalla; // Borra la Pantalla
	Hasta Que continuar='n'
FinProceso