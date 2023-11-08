using System;

// Para Compilar el Código: mcs -out:edad2.exe main-2.cs
// Para Ejecutarlo: mono array.exe
// type datos.txt | edad2.exe // Funciona en Windows.

namespace Pasos
{
    public class Pasos
    {
        public static void Main(string[] args)
        {
            string[] names = new string[5]; // Array de sting que Contendrá los Nombres.
            int[] edades = new int[5]; // Arrauy de int que Conteandrá las Edades.
            int index = 0; // Índice de los Arrays.
            double total = 0; // Media de las Edades.
            int i; // Indice para el Bucle for.
            int tope; // Edad Tope Para Calcular la Media.
            int cantidad = 0; // Contador de las Edades Dentro del Rango.

            Console.WriteLine("Ingresa el Nombre de la Persona y a Continuación la Edad"); // Muestro un Mensaje de Como Ingresar los Datos.
            while (index < 5) // Mientras index sea menor que 5
            {
                Console.Write("Nombre-{0}: ", index + 1); // Muestro Numbre-1, Nombre-2, etc.
                names[index] = Console.ReadLine(); // Ingreso el Nombre por Teclado.
                Console.Write("Edad-{0}: ", index + 1); // Muestro Edad-1, Edad-2, etc.
                edades[index] = Convert.ToInt32(Console.ReadLine()); // Ingreso la Edad por teclado.
                Console.WriteLine(); // Escribo un Salto de Línea.
                index++; // Incremento index en 1.
            }
            Console.Write("Por Favor Indica la Edad Tope: "); // Muestro el Mansaje, Pidiendo la Edad Tope.
            tope = Convert.ToInt32(Console.ReadLine()); // Ingrso por Teclado la Edad Tope.
            for (i = 0; i < index; i++) // Hago un bucle al tamaño del array de edades/names.
            {
                if (edades[i] < tope) // Verifico si la edad en el Array de Edades es Menor que la Edad Tope.
                {
                    total += edades[i]; // Si la edad es Menor que la Edad Tope, la Sumo a la Variable de tipo double total.
                    Console.WriteLine("{0} Tiene: {1}", names[i], edades[i]); // Muestro el Nombre y la Edad de las Personas que Cumplen la Condición.
                    cantidad++; // Incremento la variable cantidad en 1.
                }
            }
            Console.WriteLine("La Media de las Edades es: {0}", total / cantidad); // Muestro la Media de las Edades que Están Dentro del Rango (total / cantidad).
        }
    }
}