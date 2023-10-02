Algoritmo Renta
	Definir gain Como Entero;
	Definir percentage Como Real;
	Definir char Como Caracter;
	Definir salir Como Logico;
	salir = Falso;
	
	Mientras !salir Hacer
		Escribir "Ingresa tus Ganacias: " Sin Saltar;
		Leer gain;
		Si gain < 10000 Entonces
				percentage = .05;
			SiNo
			Si gain >= 10000 Y gain < 20000
				percentage = .15;
			SiNo
			Si gain >= 20000 Y gain < 35000
				percentage = .2;
			SiNo
			Si gain >= 35000 Y gain < 60000
				percentage = .3;
			SiNo
				percentage = .45;
			FinSi
			FinSi
			FinSi
		FinSi
		Escribir "Según tus Ingresos Debes Pagar: " gain * percentage;
		Escribir "";
		Escribir "¿Deseas Calcular Otro Impuesto? N o n para Salir, Cualquier Otra Tecla para Continuar: ";
		Leer char;
		Borrar Pantalla;
		Si char == "n" O char == "N" Entonces
			salir = Verdadero;
		FinSi
	FinMientras
		
FinAlgoritmo