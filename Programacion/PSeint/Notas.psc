Algoritmo Notas
	Definir nota Como Entero;
	
	Escribir "Ingresa la nota del Alumno: " Sin Saltar;
	Leer nota;
	Segun nota Hacer
		0, 1, 2, 3, 4:
			Escribir "Un desastre Esfuerzate más.";
		5, 6:
			Escribir "Haz Aprobado";
		7, 8:
			Escribir "Notable";
		De Otro Modo:
			Escribir "Sobresaliente";
	Fin Segun
FinAlgoritmo