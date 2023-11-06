using System;

namespace Edades
{
    public class Edades
    {

        public static void Main(string[] args)
        {
            const int MIN = 14;
            const int MAX = 20;
            int num;
            int resto = 0;
            int ages = 1; // Solo muestra el número de edad ingresada.
            int counter = 0;
            
            Console.WriteLine("Ingresa las Edades de las Personas");
            Console.WriteLine("");
            Console.Write("Edad{0}: ", ages); // Muestra Edad1:, Edad2:, etc.
            num = Convert.ToInt32(Console.ReadLine());
            while (num != 999)
            {
                if (num >= MIN && num <= MAX)
                {
                    counter++;
                }
                ages++; // Incrementa el número de Edad a ingresar.
                Console.Write("Edad{0}: ", ages); // Muestra Edad1:, Edad2:, etc.
                num = Convert.ToInt32(Console.ReadLine());
            }
            resto = counter % 10;
            if (resto != 3)
            {
                Console.WriteLine("En Total Hay: {0} Personas de Entre {1} y {2} años.", counter, MIN, MAX);
            }
            else
            {
                Console.WriteLine("¡Qué Casualidad!");
            }
        }
    }
}