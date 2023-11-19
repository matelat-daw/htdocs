Algoritmo Octal
	Definir num_octal, num_decimal, unidad, decena, centena, mil, tmp Como Entero;
	Definir exit Como Caracter;
	Definir salir Como Logico;
	
	Repetir
		Escribir "Ingresa el Número en Octal: (Hasta 4 Cifras)" Sin Saltar;
		Leer num_octal;
		
		Si num_octal < 8 Entonces
			
			num_decimal = num_octal;
		SiNo
			Si num_octal > 7 Y num_octal < 100 Entonces
				decena = Trunc(num_octal / 10);
				num_decimal = decena * 8 + (num_octal - decena * 10);
			SiNo
				Si num_octal > 77 Y num_octal < 1000
					centena = Trunc(num_octal / 100);
					tmp = Trunc(num_octal / 10);
					decena = tmp - centena * 10;
					unidad = num_octal - centena * 100 - decena * 10;
					num_decimal = centena * 64 + decena * 8 + unidad;
				SiNo
					Si num_octal > 777 Y num_octal < 10000 Entonces
						mil = Trunc(num_octal / 1000);
						tmp = Trunc(num_octal / 100);
						centena = tmp - mil * 10;
						tmp = Trunc(num_octal / 10);
						decena = tmp - (mil * 100 + centena * 10);
						unidad = num_octal - mil * 1000 - centena * 100 - decena * 10;
						num_decimal = mil * 512 + centena * 64 + decena * 8 + unidad;
					FinSi
				FinSi
			FinSi
		FinSi
		Escribir "";
		Escribir "El Numero Octal: " num_octal " es: " num_decimal " en Decimal";
		Escribir "";
		Escribir "Deseas Convertir Otro Número? s o S para Continuar, Cualquier otra para Salir:";
		Leer exit;
		salir = exit == "s" O exit == "S";
	Hasta Que !salir
FinAlgoritmo