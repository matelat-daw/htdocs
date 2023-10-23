// 10.- Una frutería ofrece las manzanas con descuento según la siguiente tabla:
// Número de kilos comprados
// % Descuento
// 0 ? 2              0%
// 2.01 ? 5          10%
// 5.01 ? 10         15%
// 10.01 en adelante 20%

// Dado el precio por kilo, y el peso, determinar cuánto pagará una persona que compre manzanas es esa frutería.

Algoritmo Fruteria
	Definir peso, total Como Real;
	Definir char, descuento Como Caracter;
	Definir salir Como Logico;
	salir = falso;
	descuento = "";
	
	Mientras !salir Hacer
		Escribir "Ingresa los Kilográmos de Manzanas Compradas: " Sin Saltar;
		Leer peso;
		Si peso <= 2 Entonces
			total = peso * 1;
		SiNo
			Si peso > 2 Y peso <= 5 Entonces
				total = peso - peso * .1;
				descuento = "10 %";
			SiNo
				Si peso > 5 Y peso <= 10 Entonces
					total = peso - peso * .15;
					descuento = "15 %";
				SiNo
					total = peso - peso * .2;
					descuento = "20 %";
				FinSi
			FinSi
		FinSi
		Si descuento <> "" Entonces
			Escribir "El total a Pagar por " peso " Kg. de Manzanas es: " total " Su Precio sería " peso " Pero al Comprar esa Cantidad se le ha Aplicado un Descunto de: " descuento;
		SiNo
			Escribir "El total a Pagar por " peso " Kg. de Manzanas es: " total;
		FinSi
		Escribir "";
		Escribir "¿Deseas Hacer Otro Cálculo? N o n para Salir, Cualquier Otra Tecla para Continuar: ";
		Leer char;
		Borrar Pantalla;
		Si char == "n" O char == "N" Entonces
			salir = Verdadero;
		FinSi
	FinMientras
FinAlgoritmo