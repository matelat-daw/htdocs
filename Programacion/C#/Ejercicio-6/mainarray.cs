using System;

// Para Compilar el Código: mcs -out:array.exe mainarray.cs
// Para Ejecutarlo: mono array.exe

namespace Pasos
{
    public class Pasos
    {

        public static void Main(string[] args)
        {
            int[] pasos = new int[20];
            int index = 0;
            int total = 0;
            int i;
            
            Console.WriteLine("Ingresa la Cantidad de Pasos que da la Persona en la Línea");
            Console.WriteLine("");
            Console.Write("Pasos: ");
            pasos[index] = Convert.ToInt32(Console.ReadLine());
            while (total != pasos[index])
            {
                total += pasos[index++];
                Console.Write("Van: {0}", total);
                Console.WriteLine("");
                Console.Write("Pasos: ");
                pasos[index] = Convert.ToInt32(Console.ReadLine());
            }
            Console.WriteLine("En Total la Persona ha Caminado: {0} Pasos.", total);
            for (i = 0; i < index; i++)
            {
                Console.WriteLine("Los Pasos son Paso-{0}: {1}", i + 1, pasos[i]);
            }
            Console.WriteLine("El Paso con el que Has Salido del Bucle es: {0}", pasos[i]);
            Console.WriteLine("El Array Queda: ");
            Console.Write("array = [");
            for (i = 0; i < index; i++)
            {
                if (i == index - 1)
                {
                    Console.Write("{0}", pasos[i]);
                }
                else
                {
                    Console.Write("{0}, ", pasos[i]);
                }
            }
            Console.Write("]");
            Console.WriteLine("");
        }
    }
}