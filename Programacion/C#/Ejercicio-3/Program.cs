using System;

// Para Compilar el Código: mcs -out:main.exe main.cs
// Para Ejecutarlo: mono main.exe

namespace Ejercicio_3
{
    class Program
    {
        static void Main(string[] args)
        {
            int num;
            int total = 0;

            for (int i = 0; i < 3; i++)
            {
                Console.Write("Ingresa un Número: ");
                num = Convert.ToInt32(Console.ReadLine());
                if (num > 25)
                {
                    total += num;
                }
            }
            Console.WriteLine("La Suma de Los Números Mayores que 25 es: " + total);
        }
    }
}