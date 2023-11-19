using System;

// Para Compilar el Código: mcs -out:edad.exe main-1.cs
// Para Ejecutarlo: mono array.exe

namespace Pasos
{
    public class Pasos
    {

        public static void Main(string[] args)
        {
            string name;
            int index = 0;
            double total = 0;

            Console.WriteLine("Ingresa el Nombre de la Persona y a Continuación la Edad");
            while (index < 5)
            {
                Console.Write("Nombre-{0}: ", index + 1);
                name = Console.ReadLine();
                Console.Write("Edad-{0}: ", index + 1);
                total += Convert.ToInt32(Console.ReadLine());
                Console.WriteLine();
                index++;
            }
            total = total / index;
            Console.WriteLine("La Media de las Edades es: {0}", total);
        }
    }
}