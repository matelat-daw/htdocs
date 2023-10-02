import java.util.Scanner;

/**
 */
public class Parking
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

		var precio_hora = 1.5;
		System.out.println("Cuantas Horas has Aparcado:");
        Scanner scanner = new Scanner(System.in);
		var hour = (scanner).next();
		System.out.println("Cuantos Minutos has Aparcado:");
        Scanner scanner2 = new Scanner(System.in);
		var minute = (scanner2).next();
		var hour_total = Double.valueOf(hour) + Double.valueOf(minute) / 60;
		var precio_final = precio_hora * hour_total;
		System.out.println("Total a Pagar: " + precio_final + " €");
        scanner.close();
        scanner2.close();
	}
}