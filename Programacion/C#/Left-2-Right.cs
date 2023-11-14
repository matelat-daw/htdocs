using System;

public class Draw_Left_Right
{

	public static void Main(string[] args)
	{
		int wide;

		Console.WriteLine("Ingresa el Ancho del Gráfico: ");
		wide = Convert.ToInt32(Console.ReadLine());
		while (wide > 0)
		{
			for (int index = 1; index <= wide; index++)
			{
				// Este es un Console.Write() 
				Console.Write('*');
			}
			// Este es un Console.WriteLine() 
			Console.WriteLine("");
			wide--;
		}
	}
}
