import java.util.Scanner;

public class Parking
{
	public static void main(String[] args)
	{
		var exit = false;
		var precio_hora = 1.5;
		var hour = 0.0;
		var minute = 0.0;
		var total = 0.0;
		var precio = 0.0;
		var again = "";
		Scanner hour_scann;
		Scanner min_scann;
		Scanner again_scann;

		while (!exit)
		{
			System.out.println("Cuantas Horas has Aparcado:");
			hour_scann = new Scanner(System.in);
			hour = Double.valueOf(hour_scann.next());
			System.out.println("Cuantos Minutos has Aparcado:");
			min_scann = new Scanner(System.in);
			minute = Double.valueOf(min_scann.next());
			total = hour + minute / 60;
			precio = precio_hora * total;
			System.out.println("Total a Pagar: " + precio + " €");
			System.out.println("Deseas Pagar Otro Ticket (n/N) Para Salir, Cualquier Otra para Continuar Además de Enter?");
			again_scann = new Scanner(System.in);
			again = again_scann.next();
			if (again.equals("n") || again.equals("N"))
			{
				exit = true;
				again_scann.close();
				min_scann.close();
				hour_scann.close();
			}
<<<<<<< HEAD
=======
			System.out.print("\033[H\033[2J");
			System.out.flush();
>>>>>>> 93bce38adaa3bfafdf5ceb38e102e94f2ab868f5
		}
	}
}