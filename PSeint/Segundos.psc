Algoritmo Segundos
	Definir secs, hour, minute, rest_sec_hour, rest_sec_minute Como Entero;
	
	Escribir "Ingresa la cantidad de segundos: " Sin Saltar;
	Leer secs;
	
	hour = Trunc(secs / 3600);
	rest_sec_hour = secs - hour * 3600;
	
	minute = Trunc(rest_sec_hour / 60);
	rest_sec_minute = secs - hour * 3600 - minute * 60;

	Escribir "La cantidad de segundos: " secs " es igual a: " hour ":" minute ":" rest_sec_minute;
	Escribir "La cantidad de segundos: " secs " es igual a: " hour " Horas, " minute " Minutos y " rest_sec_minute " Segundos";
FinAlgoritmo