using System;

// Para Compilar el Código: mcs -out:main.exe main.cs
// Para Ejecutarlo: mono main.exe

namespace Pasos
{
    public class Pasos
    {

        public static void Main(string[] args)
        {
            int pasos;
            int total = 0;
            
            Console.WriteLine("Ingresa la Cantidad de Pasos que da la Persona en la Línea");
            Console.WriteLine("");
            Console.Write("Pasos: ");
            pasos = Convert.ToInt32(Console.ReadLine());
            while (total != pasos)
            {
                total += pasos;
                Console.Write("Van: {0}", total);
                Console.WriteLine("");
                Console.Write("Pasos: ");
                pasos = Convert.ToInt32(Console.ReadLine());
            }
            Console.WriteLine("En Total la Persona ha Caminado: {0} Pasos.", total);
        }
    }
}