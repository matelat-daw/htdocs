Proceso Mayores
	Definir num1,num2,num3 Como Entero;
	Definir one, two, three Como Logico;
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
					Escribir 'Todos los N�meros son Menores o Iguales a 25 no se Pueden Sumar.';
				SiNo
					Escribir 'Solo el Tercer N�mero ',num3,' es Mayor que 25. El Resultado es: ',num3;
				FinSi
			SiNo
				Si num3<=25 Entonces
					Escribir 'Solo el Segundo N�mero: ',num2,' es Mayor que 25. El resultado es: ',num2;
				SiNo
					Escribir 'Los N�meros Segundo y Tercero son Mayores que 25, el Resultado es: ',num2+num3;
				FinSi
			FinSi
		SiNo
			Si num2<=25 Entonces
				Si num3<=25 Entonces
					Escribir 'Solo el Primer N�mero: ',num1,' es Mayor que 25. El resultado es: ',num1;
				SiNo
					Escribir 'Los N�meros Primero y Tercero son Mayores que 25, el Resultado es: ',num1+num3;
				FinSi
			SiNo
				Si num3<=25 Entonces
					Escribir 'Los N�meros Primero y Segundo son Mayores que 25. El resultado es: ',num1+num2;
				SiNo
					Escribir 'Todos los N�meros son Mayores que 25. El resultado es: ',num1+num2+num3;
				FinSi
			FinSi
		FinSi
		Escribir ''; // Dejo un Rengl�n en Blanco.
		Escribir 'Deseas Hacer Otra Operaci�n? Escribe n para Salir, Cualquier otra Tecla para Continuar.'; // Pregunto si Quieres Realizar Otra Operaci�n.
		Leer continuar; // Espera la Entrada por Teclado de un Caracter y lo asigna a la Variable continuar.
		Borrar Pantalla; // Borra la Pantalla
	Hasta Que continuar='n'
FinProceso