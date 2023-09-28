Algoritmo Calculadora
	Definir num1, num2 Como Entero;
	Definir result Como Real;
	Definir char Como Caracter;
	Definir salir Como Logico;
	salir = falso;
	
	Mientras !salir Hacer
		Escribir "Ingresa el Primer Número: " Sin Saltar;
		Leer num1;
		Escribir "Ingresa la Operación (+, -, *, /): " Sin Saltar;
		Leer char;
		Escribir "Ingresa el Segundo Número: " Sin Saltar;
		Leer num2;
		Escribir "El resultado de la Operación es: " Sin Saltar;
		Si num2 == 0 Y char == "/" Entonces
			Escribir "No se Puede Dividir por 0, Por Favor Selecciona Otra Operción";
			Escribir "¿Deseas Realizar Otra Operación? N o n para Salir, Cualquier Otra Tecla para Continuar: ";
			Leer char;
			Borrar Pantalla;
			Si char == "n" O char == "N" Entonces
				salir = Verdadero;
			FinSi
		SiNo
			result = calc(num1, char, num2);
			Escribir result;
		FinSi
	FinMientras

FinAlgoritmo

Funcion result<-calc(num1, char, num2)
	Definir result Como Real;
	
	Segun char Hacer
		"+":
			result = num1 + num2;
		"-":
			result = num1 - num2;
		"*":
			result = num1 * num2;
		De Otro Modo:
			result = num1 / num2;
	Fin Segun
FinFuncion