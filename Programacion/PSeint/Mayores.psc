Algoritmo Mayores
	Definir num1, num2, num3 Como Entero;
	
	Escribir "Ingresa el Primer N�mero: " Sin Saltar;
	Leer num1;
	Escribir "Ingresa el Segundo N�mero: " Sin Saltar;
	Leer num2;
	Escribir "Ingresa el Tercer N�mero: " Sin Saltar;
	Leer num3;
	Si num1 > 25 Entonces
		Si num2 > 25 Entonces
			Si num3 > 25 Entonces
				Escribir "Todos los N�meros son Mayores de 25, El Resultado es: ", num1 + num2 + num3;
			SiNo
				Escribir "Todos los N�meros son Mayores de 25, El Resultado es: ", num1 + num2;
			FinSi
		SiNo
			Si num3 > 25 Entonces
				Escribir "Los N�meros Primero y Tercero son Mayores de 25, El Resultado es: ", num1 + num3;
			SiNo
				Escribir "El Primer N�mero es Mayore de 25, El Resultado es: ", num1;
			FinSi
		FinSi
	SiNo
		Si num2 > 25 Entonces
			Si num3 > 25 Entonces
				Escribir "Los N�meros Segundo y Tercero son Mayores de 25, El Resultado es: ", num2 + num3;
			SiNo
				Escribir "El N�mero Segundo es Mayor de 25, El Resultado es: ", num2;
			FinSi
		FinSi
	FinSi
FinAlgoritmo