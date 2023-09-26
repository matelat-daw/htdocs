import java.util.Scanner;

/**
 */
public class Intercambiador
{

	/**
	 * @param args
	 */
	public static void main(String[] args)
	{
		
		// TODO: Check and accomplish variable declarations: 

		// TODO: You may have to modify input instructions, 
		//       e.g. by replacing nextLine() with a more suitable call 
		//       according to the variable type, say nextInt(). 

		System.out.println("Ingresa un Número");
		num = (new Scanner(System.in)).nextLine();
		// Ingresa el número por teclado.
		var resto1 == num % 10; // Le aplico el modulo 10, el resto de la división será el último número y se lo asigno a la variable resto1.
		var num2 == Trunc(num / 10); // Trunco la división del número por 10 para obtener la parte entera y lo asigno a la variable num2.
		var resto2 == num2 % 10; // Aplico el modulo 10 al num2 y obtengo el ultimo numero y se lo asigno a la variable resto2.
		var num3 == Trunc(num2 / 10); // Trunco la división del num2 en 10 y iobtengo la parte entera que asigno a la variable num3.
		var num3 == num3 * 10; // Asigno a num3 el mismo num3 multiplicado por 10.
		var result1 == num3 + resto1; // Le sumo resto1 que es el número que antes era la unidad del número original a num3 y lo asigno a la variable result1.
		var result2 == result1 * 10; // Asigno a la variable result2 el valor de result1 multiplicado por 10.
		var final == result2 + resto2; // Asigno a la variable final el resultado de result2 sumándole resto2 que antes era la decena del número original.
		System.out.println("El resultado es: " + final);
	}

}