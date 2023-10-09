import java.util.Scanner;

/**
 */
public class Euriclides
{

	/**
	 * @param args
	 */
	public static void main(String[] args)
	{
		
		// TODO: Check and accomplish variable declarations: 
		int num2;
		int num1;
        int tmp;
        int resto = 1;

		// TODO: You may have to modify input instructions, 
		//       e.g. by replacing nextLine() with a more suitable call 
		//       according to the variable type, say nextInt(). 

		System.out.println("Introduce el primero Número: ");
		num1 = Integer.valueOf((new Scanner(System.in)).nextLine());
		System.out.println("Introduce el Segundo Número: ");
		num2 = Integer.valueOf((new Scanner(System.in)).nextLine());
		if (num1 < num2)
		{
		}
		else
		{
			tmp = num1;
			num1 = num2;
			num2 = tmp;
		}
		while (resto > 0)
		{
			resto = num2 % num1;
			num2 = num1;
			num1 = resto;
		}
        System.out.println("El Máximo Común Divisor es: " + num2);
	}

}