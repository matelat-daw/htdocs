Algoritmo Almacen
	Definir precio, total Como Real;
	Definir char Como Caracter;
	Definir salir Como Logico;
	salir = falso;
	
	Mientras !salir Hacer
		Escribir "Ingresa el Precio a Pagar: " Sin Saltar;
		Leer precio;
		total = precio;
		Si precio > 200 Y precio <= 400 Entonces
			total = precio - precio * .2;
		SiNo
			Si precio > 400 Entonces
				total = precio - precio * .25;
			FinSi
		FinSi
		Escribir "El total a Pagar es: " total;
		Escribir "";
		Escribir "�Deseas Hacer Otro C�lculo? N o n para Salir, Cualquier Otra Tecla para Continuar: ";
		Leer char;
		Borrar Pantalla;
		salir =  char == "n" O char == "N";
	FinMientras
FinAlgoritmo