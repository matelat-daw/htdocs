using System;

public class Primo
{

	public static void Main(string[] args)
	{
		int num;
		int resto = 0;
		bool primo = true;
		
		Console.WriteLine("Ingresa un Número Mayor que 1 (ya que 1 no es primo)");
		num = Convert.ToInt32(Console.ReadLine());
		if (num > 2)
		{
			for (int indice = 2; indice < num; indice++)
			{
				resto = num % indice;
				if (resto == 0)
				{
					primo = false;
				}
			}
		}
		if (primo)
		{
			Console.WriteLine("El Numero {0} es Primo.", num);
		}
		else
		{
			Console.WriteLine("El Numero {0} No es Primo.", num);
		}
	}
}