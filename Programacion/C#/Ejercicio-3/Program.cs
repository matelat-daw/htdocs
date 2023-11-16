<<<<<<< HEAD
﻿namespace Ejercicio_3;
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
=======
﻿using System;

// En Linux: Para Compilar el Código: mcs -out:main.exe main.cs
// Para Ejecutarlo: mono main.exe

namespace Ejercicio_3
{
    class Program
    {
        static void Main(string[] args)
        {
            int num;
            int total = 0;

            Console.WriteLine("Este Programa Solicita 3 Números y Suma los que sea mayores que 25.");
            Console.WriteLine("");
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
>>>>>>> 93bce38adaa3bfafdf5ceb38e102e94f2ab868f5
}