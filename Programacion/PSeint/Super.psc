Algoritmo Super
	Definir cantidad, descuento, descuento_especial, regalo, inicio Como Entero;
	Definir completo, parte, total Como Real;
	Definir char Como Caracter;
	Definir salir Como Logico;
	salir = Falso;
	regalo = 0;
	descuento = 10;
	descuento_especial = 15;
	
	Mientras !salir Hacer
		Escribir "Oferta Aguacates a 1,20 ? la Unidad.";
		Escribir "";
		Escribir "Ingresa la Cantidad de Artículos a Comprar: " Sin Saltar;
		Leer cantidad;
		parte = cantidad % 12;
		completo = Trunc(cantidad / 12);
		Si completo > 3 Entonces
			Para inicio = 0 Hasta completo - 3 Con Paso 1 Hacer
				regalo = regalo + 1;
			Fin Para
			// total = completo * 12 - (completo * 12 * .15) + parte * 1.2 - (parte * 1.2 * .15);
			total = cantidad * 1.2 - (cantidad * 1.2 * .15);
		SiNo
			// total = completo * 12 - (completo * 12 * .10) + parte * 1.2 - (parte * 1.2 * .15);
			total = cantidad * 1.2 - (cantidad * 1.2 * .1);
		FinSi
		Si regalo > 0 Entonces
			Escribir "Total a Pagar por la compra de: " completo " Docenas de Huevos + " parte " Unidades es: " total " y Llevas: " regalo " Unidades de regalo.";
			regalo = 0;
		SiNo
			Escribir "Total a Pagar por la compra de: " completo " Docenas de Huevos + " parte " Unidades es: " total;
		FinSi
		Escribir "";
		Escribir "¿Deseas Efectuar Otra Compra? N o n para Salir, Cualquier Otra Tecla para Continuar: ";
		Leer char;
		Borrar Pantalla;
		Si char == "n" O char == "N" Entonces
			salir = Verdadero;
		FinSi
	FinMientras
FinAlgoritmo