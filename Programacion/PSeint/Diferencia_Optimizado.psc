Algoritmo Diferencia_Optimizado
	Definir day, month, year, day_old, month_old, year_old, back_old, back, counter, days, last_days, FDM, D, dw Como Entero; // Defino las variables enteros.
	Definir mes, day_week, fecha_end, seguir Como Caracter; // Defino las variables Caracter(String).
	Definir ok, leap, first_old, first, S Como Logico; // Defino las variable.
	ok = Falso;
	leap = Falso;
	first_old = Falso;
	first = Verdadero;
	counter = 0;
	Dimension mes[12]; // Defino mes como un array.
	mes[0] = "Enero"; // Asigno Enero a la primera posici�n del array mes.
	mes[1] = "Febrero";
	mes[2] = "Marzo";
	mes[3] = "Abril";
	mes[4] = "Mayo";
	mes[5] = "Junio";
	mes[6] = "Julio";
	mes[7] = "Agosto";
	mes[8] = "Septiembre";
	mes[9] = "Octubre";
	mes[10] = "Noviembre";
	mes[11] = "Diciembre";
	
	Dimension day_week[7];
	day_week[0] = "Lunes";
	day_week[1] = "Martes";
	day_week[2] = "Mi�rcoles";
	day_week[3] = "Jueves";
	day_week[4] = "Viernes";
	day_week[5] = "S�bado";
	day_week[6] = "Domingo";
	
	S <- Verdadero;
	Mientras S Hacer
		Repetir
			Repetir // Repito el pedido de entrada de dato
				Escribir "Introduce el D�a entre(1 y 31): " Sin Saltar; // Pido el d�a.
				Leer day; // Lee la entrada day.
			Hasta Que day <= 31 Y day >= 1; // Hasta que day est� entre 1 y 31.
			Repetir // Repito el pedido de entrada de dato
				Escribir "Introduce el Mes entre(1 y 12): " Sin Saltar; // Pido el mes.
				Leer month; // Lee la entrada month.
			Hasta Que month <= 12 Y month >= 1; // Hasta que month est� entre 1 y 12.
			Repetir
				Escribir "Introduce el A�o entre(1 y 3000): " Sin Saltar;
				Leer year;
			Hasta Que year <= 3000 Y year >= 1; // Hasta que year est� entre 1 y 3000.
			Repetir // Repito hasta que las fechas est�n correctas, uso ok y lo pongo a verdadero para eso.
				Segun day Hacer // Seg�n el d�a introducido hace.
					31: // Para el caso del d�a 31
						Segun month Hacer
							1, 3, 5, 7, 8, 10, 12:
								ok = Verdadero;
							De Otro Modo:
								Escribir "El N�mero de D�a no Corresponde a ese Mes, Por Favor introd�ce un N�mero Menor." Sin Saltar; // Muestro el aviso que hay que volver a poner el d�a.
								Leer day; // Pido day por teclado.
						FinSegun
					30: // Para el caso 30
						Si (month = 2) // Solo compruebo si month es 2 (Febrero).
							Escribir "Has Seleccionado el mes de Febrero que solo tiene 29 d�as en a�os bisiestos o 28 d�as, Tienes que Cambiar el D�a a 28 � 29." Sin Saltar;
							Leer day; // Solicito de nuevo day por teclado.
						SiNo
							ok = Verdadero; // Si no es Febrero ok es verdadero.
						FinSi
					29:
						Si month = 2 Entonces
							leap = isLeapYear(year);
							Si leap Entonces
								ok = Verdadero;
							SiNo
								Escribir "El Mes de Febrero del A�o ", year, " no es Bisiesto Tienes que Usar el D�a 28 Como M�ximo." Sin Saltar;
								Leer day;
							FinSi
						SiNo
							ok = Verdadero;
						FinSi
					De Otro Modo: // Si entra cualquier otro d�a (day).
						ok = Verdadero; // Ok es verdadero, la fecha est� bien.
				Fin Segun // Termina el Seg�n en d�a introducido.
			Hasta Que ok; // Repite hasta que ok sea verdadero.
			
			fDM = firstDayMonth(year, month);     // Primer d�a del mes
			D = (day - 1) % 7;
			dW = fDM + D;       // D�a de la semana en que cae la fecha
			Si (dW > 7) Entonces
				dW = dW - 7;
			FinSi
			Escribir "";
			Escribir "";
			Escribir "LA FECHA ES: ", day_week[dW - 1], " ", day, " de ", mes[month - 1] " de ", year;
			Escribir "";
			Escribir "";
			counter = counter + 1;
			Si counter = 1 Entonces
				day_old = day;
				month_old = month;
				year_old = year;
			FinSi
		Hasta Que counter = 2;
		
		Si year_old = year Entonces
			Si month_old = month Entonces
				Si day_old = day Entonces
					Escribir "Has Puesto la Misma Fecha no Hay Diferencia.";
				SiNo
					Si day_old < day Entonces
						first_old = Verdadero;
					SiNo
						first_old = Falso;
					FinSi
				FinSi
			SiNo
				Si month_old < month Entonces
					first_old = Verdadero;
				SiNo
					first_old = Falso;
				FinSi
			FinSi
		SiNo
			Si year_old < year Entonces
				first_old = Verdadero;
			SiNo
				first_old = Falso;
			FinSi
		FinSi
		
		Si first_old Entonces
			Escribir "La fecha Antigua es: ", day_old, "/", month_old, "/", year_old;
			Escribir "La fecha Nueva es: ", day, "/", month, "/", year;
		SiNo
			Escribir "La fecha Antigua es: ", day, "/", month, "/", year;
			Escribir "La fecha Nueva es: ", day_old, "/", month_old, "/", year_old;
			back = year;
			year = year_old;
			year_old = back;
			back = month;
			month = month_old;
			month_old = back;
			back = day;
			day = day_old;
			day_old = back;
		FinSi
		
		days = 0;
		Escribir "Calculando la Diferencia Entre la Fecha: ", day_old, "/", month_old, "/", year_old, " y la Fecha: ", day, "/", month, "/", year;
		Si year_old < year Entonces
			back_old = year_old;
			Mientras year_old < year Hacer
				Si isLeapYear(year_old) Entonces
					Si month_old > 2 Y first Entonces
						first = Falso;
						days = days + 365;
					SiNo
						days = days + 366;
					FinSi
				SiNo
					first = Falso;
					days = days + 365;
				FinSi
				year_old = year_old + 1;
			FinMientras
			
			days = days + Months(month, month_old, year) + (day - day_old);
		SiNo
			days = Months(month, month_old, year) + (day - day_old);
		FinSi
		Escribir "La Diferencia en d�as es: ", days;
		Escribir "";
		Escribir "";
		Escribir 'Pulsar la tecla s o S para Ver otra Fecha, Cualquier otra tecla para Salir.' Sin Saltar;
		Leer seguir;
		Si ((seguir == 'S') O (seguir == 's')) Entonces
			counter = 0;
			first = Verdadero;
			S <- Verdadero;
		SiNo
			S <- Falso;
		FinSi
	FinMientras
FinAlgoritmo

Funcion result = Febrero(year, sign)
	Definir result Como Entero;
	Si sign Entonces
		Si isLeapYear(year) Entonces
			result = 29;
		SiNo
			result = 28;
		FinSi
	SiNo
		Si isLeapYear(year) Entonces
			result = -29;
		SiNo
			result = -28;
		FinSi
	FinSi
FinFuncion

Funcion month_diff = Months(month, month_old, year)
	Definir month_diff Como Entero;
	Definir leap Como Logico;
	Si month_old = 1 Y month = 2 Entonces
		month_diff = 31;
	FinSi
	Si month_old = 1 Y month = 3 Entonces
		month_diff = Febrero(year, Verdadero);
		month_diff = month_diff + 31;
	FinSi
	Si month_old = 1 Y month = 4 Entonces
		month_diff = Febrero(year, Verdadero);
		month_diff = month_diff + 62;
	FinSi
	Si month_old = 1 Y month = 5 Entonces
		month_diff = Febrero(year, Verdadero);
		month_diff = month_diff + 92;
	FinSi
	Si month_old = 1 Y month = 6 Entonces
		month_diff = Febrero(year, Verdadero);
		month_diff = month_diff + 123;
	FinSi
	Si month_old = 1 Y month = 7 Entonces
		month_diff = Febrero(year, Verdadero);
		month_diff = month_diff + 153;
	FinSi
	Si month_old = 1 Y month = 8 Entonces
		month_diff = Febrero(year, Verdadero);
		month_diff = month_diff + 184;
	FinSi
	Si month_old = 1 Y month = 9 Entonces
		month_diff = Febrero(year, Verdadero);
		month_diff = month_diff + 215;
	FinSi
	Si month_old = 1 Y month = 10 Entonces
		month_diff = Febrero(year, Verdadero);
		month_diff = month_diff + 245;
	FinSi
	Si month_old = 1 Y month = 11 Entonces
		month_diff = Febrero(year, Verdadero);
		month_diff = month_diff + 276;
	FinSi
	Si month_old = 1 Y month = 12 Entonces
		month_diff = Febrero(year, Verdadero);
		month_diff = month_diff + 306;
	FinSi
	Si month_old = 2 Y month = 3 Entonces
		month_diff = Febrero(year, Verdadero);
	FinSi
	Si month_old = 2 Y month = 4 Entonces
		month_diff = Febrero(year, Verdadero);
		month_diff = month_diff + 31;
	FinSi
	Si month_old = 2 Y month = 5 Entonces
		month_diff = Febrero(year, Verdadero);
		month_diff = month_diff + 61;
	FinSi
	Si month_old = 2 Y month = 6 Entonces
		month_diff = Febrero(year, Verdadero);
		month_diff = month_diff + 92;
	FinSi
	Si month_old = 2 Y month = 7 Entonces
		month_diff = Febrero(year, Verdadero);
		month_diff = month_diff + 122;
	FinSi
	Si month_old = 2 Y month = 8 Entonces
		month_diff = Febrero(year, Verdadero);
		month_diff = month_diff + 153;
	FinSi
	Si month_old = 2 Y month = 9 Entonces
		month_diff = Febrero(year, Verdadero);
		month_diff = month_diff + 184;
	FinSi
	Si month_old = 2 Y month = 10 Entonces
		month_diff = Febrero(year, Verdadero);
		month_diff = month_diff + 214;
	FinSi
	Si month_old = 2 Y month = 11 Entonces
		month_diff = Febrero(year, Verdadero);
		month_diff = month_diff + 245;
	FinSi
	Si month_old = 2 Y month = 12 Entonces
		month_diff = Febrero(year, Verdadero);
		month_diff = month_diff + 275;
	FinSi
	Si month_old = 3 Y month = 4 Entonces
		month_diff = 31;
	FinSi
	Si month_old = 3 Y month = 5 Entonces
		month_diff = 61;
	FinSi
	Si month_old = 3 Y month = 6 Entonces
		month_diff = 92;
	FinSi
	Si month_old = 3 Y month = 7 Entonces
		month_diff = 122;
	FinSi
	Si month_old = 3 Y month = 8 Entonces
		month_diff = 153;
	FinSi
	Si month_old = 3 Y month = 9 Entonces
		month_diff = 184;
	FinSi
	Si month_old = 3 Y month = 10 Entonces
		month_diff = 214;
	FinSi
	Si month_old = 3 Y month = 11 Entonces
		month_diff = 245;
	FinSi
	Si month_old = 3 Y month = 12 Entonces
		month_diff = 275;
	FinSi
	Si month_old = 4 Y month = 5 Entonces
		month_diff = 30;
	FinSi
	Si month_old = 4 Y month = 6 Entonces
		month_diff = 61;
	FinSi
	Si month_old = 4 Y month = 7 Entonces
		month_diff = 91;
	FinSi
	Si month_old = 4 Y month = 8 Entonces
		month_diff = 122;
	FinSi
	Si month_old = 4 Y month = 9 Entonces
		month_diff = 153;
	FinSi
	Si month_old = 4 Y month = 10 Entonces
		month_diff = 183;
	FinSi
	Si month_old = 4 Y month = 11 Entonces
		month_diff = 214;
	FinSi
	Si month_old = 4 Y month = 12 Entonces
		month_diff = 244;
	FinSi
	Si month_old = 5 Y month = 6 Entonces
		month_diff = 31;
	FinSi
	Si month_old = 5 Y month = 7 Entonces
		month_diff = 61;
	FinSi
	Si month_old = 5 Y month = 8 Entonces
		month_diff = 92;
	FinSi
	Si month_old = 5 Y month = 9 Entonces
		month_diff = 123;
	FinSi
	Si month_old = 5 Y month = 10 Entonces
		month_diff = 153;
	FinSi
	Si month_old = 5 Y month = 11 Entonces
		month_diff = 184;
	FinSi
	Si month_old = 5 Y month = 12 Entonces
		month_diff = 214;
	FinSi
	Si month_old = 6 Y month = 7 Entonces
		month_diff = 30;
	FinSi
	Si month_old = 6 Y month = 8 Entonces
		month_diff = 61;
	FinSi
	Si month_old = 6 Y month = 9 Entonces
		month_diff = 92;
	FinSi
	Si month_old = 6 Y month = 10 Entonces
		month_diff = 122;
	FinSi
	Si month_old = 6 Y month = 11 Entonces
		month_diff = 153;
	FinSi
	Si month_old = 6 Y month = 12 Entonces
		month_diff = 183;
	FinSi
	Si month_old = 7 Y month = 8 Entonces
		month_diff = 31;
	FinSi
	Si month_old = 7 Y month = 9 Entonces
		month_diff = 62;
	FinSi
	Si month_old = 7 Y month = 10 Entonces
		month_diff = 92;
	FinSi
	Si month_old = 7 Y month = 11 Entonces
		month_diff = 123;
	FinSi
	Si month_old = 7 Y month = 12 Entonces
		month_diff = 153;
	FinSi
	Si month_old = 8 Y month = 9 Entonces
		month_diff = 31;
	FinSi
	Si month_old = 8 Y month = 10 Entonces
		month_diff = 61;
	FinSi
	Si month_old = 8 Y month = 11 Entonces
		month_diff = 92;
	FinSi
	Si month_old = 8 Y month = 12 Entonces
		month_diff = 122;
	FinSi
	Si month_old = 9 Y month = 10 Entonces
		month_diff = 30;
	FinSi
	Si month_old = 9 Y month = 11 Entonces
		month_diff = 61;
	FinSi
	Si month_old = 9 Y month = 12 Entonces
		month_diff = 91;
	FinSi
	Si month_old = 10 Y month = 11 Entonces
		month_diff = 31;
	FinSi
	Si month_old = 10 Y month = 12 Entonces
		month_diff = 61;
	FinSi
	Si month_old = 11 Y month = 12 Entonces
		month_diff = 30;
	FinSi
	
	Si month_old = 2 Y month = 1 Entonces
		month_diff = -31;
	FinSi
	Si month_old = 3 Y month = 1 Entonces
		month_diff = Febrero(year, Falso);
		month_diff = -31;
	FinSi
	Si month_old = 3 Y month = 2 Entonces
		month_diff = Febrero(year, Falso);
	FinSi
	Si month_old = 4 Y month = 1 Entonces
		month_diff = Febrero(year, Falso);
		month_diff = -62;
	FinSi
	Si month_old = 4 Y month = 2 Entonces
		month_diff = Febrero(year, Falso);
		month_diff = -31;
	FinSi
	Si month_old = 4 Y month = 3 Entonces
		month_diff = -31;
	FinSi
	Si month_old = 5 Y month = 1 Entonces
		month_diff = Febrero(year, Falso);
		month_diff = -92;
	FinSi
	Si month_old = 5 Y month = 2 Entonces
		month_diff = Febrero(year, Falso);
		month_diff = -61;
	FinSi
	Si month_old = 5 Y month = 3 Entonces
		month_diff = -61;
	FinSi
	Si month_old = 5 Y month = 4 Entonces
		month_diff = -30;
	FinSi
	Si month_old = 6 Y month = 1 Entonces
		month_diff = Febrero(year, Falso);
		month_diff = -123;
	FinSi
	Si month_old = 6 Y month = 2 Entonces
		month_diff = Febrero(year, Falso);
		month_diff = -92;
	FinSi
	Si month_old = 6 Y month = 3 Entonces
		month_diff = -92;
	FinSi
	Si month_old = 6 Y month = 4 Entonces
		month_diff = -61;
	FinSi
	Si month_old = 6 Y month = 5 Entonces
		month_diff = -31;
	FinSi
	Si month_old = 7 Y month = 1 Entonces
		month_diff = Febrero(year, Falso);
		month_diff = -153;
	FinSi
	Si month_old = 7 Y month = 2 Entonces
		month_diff = Febrero(year, Falso);
		month_diff = -122;
	FinSi
	Si month_old = 7 Y month = 3 Entonces
		month_diff = -122;
	FinSi
	Si month_old = 7 Y month = 4 Entonces
		month_diff = -91;
	FinSi
	Si month_old = 7 Y month = 5 Entonces
		month_diff = -61;
	FinSi
	Si month_old = 7 Y month = 6 Entonces
		month_diff = -30;
	FinSi
	Si month_old = 8 Y month = 1 Entonces
		month_diff = Febrero(year, Falso);
		month_diff = -184;
	FinSi
	Si month_old = 8 Y month = 2 Entonces
		month_diff = Febrero(year, Falso);
		month_diff = -153;
	FinSi
	Si month_old = 8 Y month = 3 Entonces
		month_diff = -153;
	FinSi
	Si month_old = 8 Y month = 4 Entonces
		month_diff = -122;
	FinSi
	Si month_old = 8 Y month = 5 Entonces
		month_diff = -92;
	FinSi
	Si month_old = 8 Y month = 6 Entonces
		month_diff = -61;
	FinSi
	Si month_old = 8 Y month = 7 Entonces
		month_diff = -31;
	FinSi
	Si month_old = 9 Y month = 1 Entonces
		month_diff = Febrero(year, Falso);
		month_diff = -215;
	FinSi
	Si month_old = 9 Y month = 2 Entonces
		month_diff = Febrero(year, Falso);
		month_diff = -184;
	FinSi
	Si month_old = 9 Y month = 3 Entonces
		month_diff = -184;
	FinSi
	Si month_old = 9 Y month = 4 Entonces
		month_diff = -153;
	FinSi
	Si month_old = 9 Y month = 5 Entonces
		month_diff = -123;
	FinSi
	Si month_old = 9 Y month = 6 Entonces
		month_diff = -92;
	FinSi
	Si month_old = 9 Y month = 7 Entonces
		month_diff = -62;
	FinSi
	Si month_old = 9 Y month = 8 Entonces
		month_diff = -31;
	FinSi
	Si month_old = 10 Y month = 1 
		month_diff = Febrero(year, Falso);
		month_diff = -245;
	FinSi
	Si month_old = 10 Y month = 2 Entonces
		month_diff = Febrero(year, Falso);
		month_diff = -214;
	FinSi
	Si month_old = 10 Y month = 3 Entonces
		month_diff = -214;
	FinSi
	Si month_old = 10 Y month = 4 Entonces
		month_diff = -183;
	FinSi
	Si month_old = 10 Y month = 5 Entonces
		month_diff = -153;
	FinSi
	Si month_old = 10 Y month = 6 Entonces
		month_diff = -122;
	FinSi
	Si month_old = 10 Y month = 7 Entonces
		month_diff = -92;
	FinSi
	Si month_old = 10 Y month = 8 Entonces
		month_diff = -61;
	FinSi
	Si month_old = 10 Y month = 9 Entonces
		month_diff = -30;
	FinSi
	Si month_old = 11 Y month = 1 Entonces
		month_diff = Febrero(year, Falso);
		month_diff = -276;
	FinSi
	Si month_old = 11 Y month = 2 Entonces
		month_diff = Febrero(year, Falso);
		month_diff = -245;
	FinSi
	Si month_old = 11 Y month = 3 Entonces
		month_diff = -245;
	FinSi
	Si month_old = 11 Y month = 4 Entonces
		month_diff = -214;
	FinSi
	Si month_old = 11 Y month = 5 Entonces
		month_diff = -184;
	FinSi
	Si month_old = 11 Y month = 6 Entonces
		month_diff = -153;
	FinSi
	Si month_old = 11 Y month = 7 Entonces
		month_diff = -123;
	FinSi
	Si month_old = 11 Y month = 8 Entonces
		month_diff = -92;
	FinSi
	Si month_old = 11 Y month = 9 Entonces
		month_diff = -61;
	FinSi
	Si month_old = 11 Y month = 10 Entonces
		month_diff = -31;
	FinSi
	Si month_old = 12 Y month = 1 Entonces
		month_diff = Febrero(year, Falso);
		month_diff = -306;
	FinSi
	Si month_old = 12 Y month = 2 Entonces
		month_diff = Febrero(year, Falso);
		month_diff = -275;
	FinSi
	Si month_old = 12 Y month = 3 Entonces
		month_diff = -275;
	FinSi
	Si month_old = 12 Y month = 4 Entonces
		month_diff = -244;
	FinSi
	Si month_old = 12 Y month = 5 Entonces
		month_diff = -214;
	FinSi
	Si month_old = 12 Y month = 6 Entonces
		month_diff = -183;
	FinSi
	Si month_old = 12 Y month = 7 Entonces
		month_diff = -153;
	FinSi
	Si month_old = 12 Y month = 8 Entonces
		month_diff = -122;
	FinSi
	Si month_old = 12 Y month = 9 Entonces
		month_diff = -91;
	FinSi
	Si month_old = 12 Y month = 10 Entonces
		month_diff = -61;
	FinSi
	Si month_old = 12 Y month = 11 Entonces
		month_diff = -30;
	FinSi
FinFuncion

// Recibe el a�o (year) y devuelve (lY) si es bisiesto o no
Funcion lY <- isLeapYear(year)
	Definir lY Como Logico;
	// Si el a�o es m�ltiplo de 4
	Si (year MOD 4 == 0) Entonces
		lY <- Verdadero;
		// Si adem�s es m�ltiplo de 100 y de 400
		Si ((year MOD 100 <> 0) O (year MOD 400 == 0)) Entonces
			lY <- Verdadero;
		SiNo
			lY <- Falso;
		FinSi
	SiNo
		lY <- Falso;
	FinSi
FinFuncion

// Recibe el a�o (year) correspondiente y
// devuelve el d�a de la semana (dW) en el que cae el primer d�a de dicho a�o
Funcion dW <- firstDayYear(year)
	Definir dW, i Como Entero;
	Definir lY Como Logico;
	Si year == 1 Entonces
		// Si es 1, el primer d�a del a�o fue Lunes
		dW <- 1;
	SiNo
		// Si el a�o es mayor que 1600
		// Busco primer d�a del a�o
		dW <- 1; // Se comienza en Lunes
		Para i<-2 Hasta year Hacer
			// Si el a�o anterior fue bisiesto al d�a la semana
			// habr� que sumarle dos m�s, y si no uno.
			lY <- isLeapYear(i - 1);
			Si lY Entonces
				dW <- dW + 2;
			SiNo
				dW <- dW + 1;
			FinSi
			// Si se llega a 8, es lunes
			Si dW == 8 Entonces
				dW <- 1;
			FinSi
			// Si se llega a 9, es martes
			Si dW == 9 Entonces
				dW <- 2;
			FinSi
		FinPara
	FinSi
FinFuncion

// Recibe el a�o (year) y mes (month) correspondientes y
// devuelve el d�a de la semana (dW) en el que cae el primer d�a del mes de ese a�o
Funcion dW <- firstDayMonth(year, month)
	// Declarar variables
	Definir fDY, dW, i Como Entero;
	Definir lY Como Logico;
	lY <- isLeapYear(year); // �Es un a�o bisiesto? 
	fDY <- firstDayYear(year); // Primer d�a de la semana del a�o 
	Para i<-1 Hasta month Hacer
		// Si es enero, el primer d�a ser� el primer d�a del a�o
		Si i == 1 Entonces
			dW <- fDY;
		FinSi
		// Si es marzo, el primer d�a depender� de si el a�o es bisiesto o no
		Si i == 3 Entonces
			Si lY Entonces
				dW <- dW + 1;
			SiNo
				dW <- dW;
			FinSi
		FinSi
		Segun i Hacer
			2, 4, 6, 8, 9, 11: // Si es un mes precedido de otro de 31 d�as, se le sumar�n 3 d�as
				dW <- dW + 3;
			5, 7, 10, 12: // Si es un mes precedido de otro de 30 d�as, se le sumar�n 2 d�as
				dW <- dW + 2;
		Fin Segun
		// Si llega a 8, es lunes
		Si dW == 8 Entonces
			dW <- 1;
		FinSi
		// Si llega a 9, es martes
		Si dW == 9 Entonces
			dW <- 2;
		FinSi
		// Si llega a 10, es mi�rcoles
		Si dW == 10 Entonces
			dW <- 3;
		FinSi
	FinPara
FinFuncion