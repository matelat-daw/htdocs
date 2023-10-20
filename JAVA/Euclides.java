import java.util.Scanner;

/**
 */
public class Euclides
{

	/**
	 * @param args
	 */
	public static void main(String[] args)
	{
		
		// TODO: Check and accomplish variable declarations: 
		int num2;
		int num1;
        int org1;
		int org2;
        int tmp;
        int resto = 1;
		Scanner scann1;
		Scanner scann2;

		// TODO: You may have to modify input instructions, 
		//       e.g. by replacing nextLine() with a more suitable call 
		//       according to the variable type, say nextInt(). 

		System.out.println("Introduce el primero Número: ");
		scann1 = new Scanner(System.in);
		num1 = Integer.valueOf((scann1).nextLine());
        org1 = num1;
		scann2 = new Scanner(System.in);
		System.out.println("Introduce el Segundo Número: ");
		num2 = Integer.valueOf((scann2).nextLine());
        org2 = num2;
		if (num1 > num2)
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
		scann1.close();
		scann2.close();
        System.out.println("El Máximo Común Divisor de: " + org1 + " y " + org2 + " es: " + num2);
	}

}