Algoritmo Segundos
	Definir secs, minute, hour, days, rest_days, rest_sec_hour, rest_sec_minute Como Entero;
	
	Escribir "Ingresa la cantidad de segundos: " Sin Saltar;
	Leer secs;
	
	hour = Trunc(secs / 3600);
	Si hour > 23 Entonces
		days = Trunc(hour / 24);
		rest_days = hour % 24;
		hour = hour * rest_days * .1;
	FinSi
	rest_sec_hour = secs - hour * 3600;
	
	minute = Trunc(rest_sec_hour / 60);
	rest_sec_minute = secs - hour * 3600 - minute * 60;
	
	Si days == 0 Entonces
		Escribir "La cantidad de segundos: " secs " es igual a: " hour ":" minute ":" rest_sec_minute;
		Escribir "La cantidad de segundos: " secs " es igual a: " hour " Horas, " minute " Minutos y " rest_sec_minute " Segundos";
	SiNo
		Escribir "La cantidad de segundos: " secs " es igual a: " days ", " hour ":" minute ":" rest_sec_minute;
		Escribir "La cantidad de segundos: " secs " es igual a: " days ", " hour " Horas, " minute " Minutos y " rest_sec_minute " Segundos";
	FinSi
FinAlgoritmo