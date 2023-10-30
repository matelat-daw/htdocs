using System;

public class Draw_Right_Left
{
	public static void Main(string[] args)
	{	
		int wide;
		int avance = 1;
		Console.WriteLine("Ingresa el Ancho del Gráfico: ");
		wide = Convert.ToInt32(Console.ReadLine());
		while (wide > 0)
		{
			for (int index = 0; index < wide; index++)
			{
				Console.Write('*');
			}
			Console.WriteLine("");
			wide--;
			for (int index = 0; index < avance; index++)
			{
				Console.Write(' ');
			}
			avance++;
		}
	}
}
