Algoritmo Renta
	Definir gain Como Entero;
	Escribir "Ingresa tus Ganacias: " Sin Saltar;
	Leer gain;
	Si gain < 10000 Entonces
		
			Escribir "Debes Pagar de Impuestos el 5%, Total a Pagar: " gain * .05;
		SiNo
		Si gain >= 10000 Y gain < 20000
			Escribir "Debes Pagar de Impuestos el 15%, Total a Pagar: " gain * .15;
		SiNo
		Si gain >= 20000 Y gain < 35000
			Escribir "Debes Pagar de Impuestos el 20%, Total a Pagar: " gain * .2;
		SiNo
		Si gain >= 35000 Y gain < 60000
			Escribir "Debes Pagar de Impuestos el 30%, Total a Pagar: " gain * .3;
		SiNo
			Escribir "Debes Pagar de Impuestos el 45%, Total a Pagar: " gain * .45;
		FinSi
		FinSi
		FinSi
		
	FinSi
		
FinAlgoritmo