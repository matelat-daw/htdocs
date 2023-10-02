Algoritmo Helado
	Definir precio Como Real;
	Definir opcion Como Entero;
	Definir char Como Caracter;
	Definir exit Como Logico;
	Definir salir Como Logico;
	exit = Falso;
	salir = Falso;
	
	Mientras !salir Hacer
		Escribir "Selecciona el Topping que te guste: ";
		Mientras !exit Hacer
			Escribir "1) Sin Topping";
			Escribir "2) Topping de Oreo 1 ?";
			Escribir "3) Topping de KitKat 1,50 ?";
			Escribir "4) Topping Brownie 0,75 ?";
			Escribir "5) Topping Lacasitos 0,95 ?";
			Escribir "6) No Tenemos Más Topping";
			Leer opción;
			Si opcion <= 6 Entonces
				exit = Verdadero;
			SiNo
				Escribir "Esa Opción no Existe";
				Escribir "¿Deseas Hacer Otro Pedido? N o n para Salir, Cualquier Otra Tecla para Continuar: ";
				Leer char;
				Borrar Pantalla;
				Si char == "n" O char == "N" Entonces
					exit = Verdadero;
					salir = Verdadero;
				FinSi
			FinSi
		Fin Mientras
		Segun opcion Hacer
			1:
				precio = 1.9;
			2:
				precio = 1.9 + 1;
			3:
				precio = 1.9 + 1.5;
			4:
				precio = 1.9 + .75;
			5:
				precio = 1.9 + .95;
			De Otro Modo:
				Escribir "Justo ese Topping no lo Tenemos";
				precio = 0;
		Fin Segun
		Escribir "Total a pagar por tu Helado: " precio;
		exit = Falso;
		Escribir "";
		Escribir "¿Deseas Efectuar Otra Evaluación? N o n para Salir, Cualquier Otra Tecla para Continuar: ";
		Leer char;
		Borrar Pantalla;
		Si char == "n" O char == "N" Entonces
			salir = Verdadero;
		FinSi
	FinMientras
FinAlgoritmo