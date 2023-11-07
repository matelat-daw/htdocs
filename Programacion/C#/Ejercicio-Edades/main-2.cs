using System;

// Para Compilar el Código: mcs -out:edad2.exe main-2.cs
// Para Ejecutarlo: mono array.exe

namespace Pasos
{
    public class Pasos
    {

        public static void Main(string[] args)
        {
            string[] names = new string[5];
            int[] edades = new int[5];
            int index = 0;
            double total = 0;
            int i;
            int tope;
            int cantidad = 0;

            Console.WriteLine("Ingresa el Nombre de la Persona y a Continuación la Edad");
            while (index < 5)
            {
                Console.Write("Nombre-{0}: ", index + 1);
                names[index] = Console.ReadLine();
                Console.Write("Edad-{0}: ", index + 1);
                edades[index] = Convert.ToInt32(Console.ReadLine());
                Console.WriteLine();
                index++;
            }
            Console.Write("Por Favor Indica la Edad Tope: ");
            tope = Convert.ToInt32(Console.ReadLine());
            for (i = 0; i < index; i++)
            {
                if (edades[i] < tope)
                {
                    total += edades[i];
                    Console.WriteLine("{0} Tiene: {1}", names[i], edades[i]);
                    cantidad++;
                }
            }
            Console.WriteLine("La Media de las Edades es: {0}", total / cantidad);
        }
    }
}