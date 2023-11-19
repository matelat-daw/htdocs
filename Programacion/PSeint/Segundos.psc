Proceso Segundos
	Definir qtty, years, rest_years, months, rest_months, days, rest_days, hours, rest_hours, minutes, rest_minutes, seconds, rest_seconds Como Entero;
	Definir salir Como Logico;
	Definir char Como Caracter;
	salir = Falso;
	
	Mientras !salir Hacer
		Escribir "";
		Escribir "Este Programa Calcula cuantos Años, Meses, Días, Horas, Minutos y Segundos son la Cantidad de Segundos Introducida.";
		Escribir "";
		Escribir "Ingresa la Cantidad de Segundos: " Sin Saltar;
		Leer qtty;
		
		years = Trunc(qtty / 31536000);
		rest_years = qtty % 31536000;
		months = Trunc(rest_years / 2592000);
		rest_months = rest_years % 2592000;
		days = Trunc(rest_months / 86400);
		rest_days = rest_months % 86400;
		hours = Trunc(rest_days / 3600);
		rest_hours = rest_days % 3600;
		minutes = Trunc(rest_hours / 60);
		rest_minutes = rest_hours % 60;
		seconds = rest_minutes % 60;
		Escribir "El resultado de la Cantidad de Segundos Introducidos es: " years " Años, " months " Meses, " days " Días, " hours " Horas, " minutes " Minutos y " seconds " Segundos.";
		Escribir "";
		Escribir "¿Deseas Calcular Otra Cantidad? N o n para Salir, Cualquier Otra Tecla para Continuar: " Sin Saltar;
		Leer char;
		Borrar Pantalla;
		Si char == "n" O char == "N" Entonces
			salir = Verdadero;
		FinSi
	FinMientras
FinProceso