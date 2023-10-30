Proceso Mayores
	Definir num1,num2,num3 Como Entero;
	Definir one, two, three Como Logico;
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
					Escribir 'Todos los Números son Menores o Iguales a 25 no se Pueden Sumar.';
				SiNo
					Escribir 'Solo el Tercer Número ',num3,' es Mayor que 25. El Resultado es: ',num3;
				FinSi
			SiNo
				Si num3<=25 Entonces
					Escribir 'Solo el Segundo Número: ',num2,' es Mayor que 25. El resultado es: ',num2;
				SiNo
					Escribir 'Los Números Segundo y Tercero son Mayores que 25, el Resultado es: ',num2+num3;
				FinSi
			FinSi
		SiNo
			Si num2<=25 Entonces
				Si num3<=25 Entonces
					Escribir 'Solo el Primer Número: ',num1,' es Mayor que 25. El resultado es: ',num1;
				SiNo
					Escribir 'Los Números Primero y Tercero son Mayores que 25, el Resultado es: ',num1+num3;
				FinSi
			SiNo
				Si num3<=25 Entonces
					Escribir 'Los Números Primero y Segundo son Mayores que 25. El resultado es: ',num1+num2;
				SiNo
					Escribir 'Todos los Números son Mayores que 25. El resultado es: ',num1+num2+num3;
				FinSi
			FinSi
		FinSi
		Escribir ''; // Dejo un Renglón en Blanco.
		Escribir 'Deseas Hacer Otra Operación? Escribe n para Salir, Cualquier otra Tecla para Continuar.'; // Pregunto si Quieres Realizar Otra Operación.
		Leer continuar; // Espera la Entrada por Teclado de un Caracter y lo asigna a la Variable continuar.
		Borrar Pantalla; // Borra la Pantalla
	Hasta Que continuar='n'
FinProceso