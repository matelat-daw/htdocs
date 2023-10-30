Algoritmo Estacionamiento
	Definir hour, minute, hour2minute, total Como Entero;
	Definir char Como Caracter;
	Definir salir Como Logico;
	salir = Falso;
	
	Escribir "Ingresa las Horas que has Estado Aparcado: " Sin Saltar;
	Leer hour;
	Escribir "Ingresa los Minutos que has Estado Aparcado: " Sin Saltar;
	Leer minute;
	hour2minute = hour * 60;
	total = hour2minute + minute;
	Escribir "El Total a Pagar por el Aparcamiento es: " 1.5 / 60 * total;
FinAlgoritmo