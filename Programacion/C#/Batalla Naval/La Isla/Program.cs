using static System.Net.Mime.MediaTypeNames;
using System.Drawing;

namespace La_Isla
{
    internal class Program
    {
        static void Main(string[] args)
        {
            const int SIZE = 10;
            char agua = '~';
            char isla = 'O';
            char[,] empty = new char[SIZE, SIZE];
            string start;
            int start_column = -1;
            int start_row;
            string end;
            int end_column = -1;
            int end_row;
            int cont = 0;
            int isla_start;
            int isla_end;
            string letra;
            string letters = "ABCDEFGHIJ";

            for (int i = 0; i < SIZE; i++) // Doble Bucle para Mostrar el Tablero con los Asteriscos si el Jugador ha Acertado Alguna Casilla Donde Está Alguno de los Barcos.
            {
                for (int j = 0; j < SIZE; j++) // Bucle Interno.
                {
                    empty[i, j] = agua; // Muestro el Tablero La Isla.
                }
                Console.WriteLine();
            }
            Console.WriteLine("Creación de una Isla en un Array Bidimensional.\n");
            Console.Write("Ingresa las Coordenadas del Vertice Superior Izquierdo de la Isla: ");
            start = Console.ReadLine();
            Console.Write("Ingresa las Coordenadas del Vertice Inferior Derecho de la Isla: ");
            end = Console.ReadLine();
            letra = start.Substring(0, 1);
            for (int i = 0; i < SIZE; i++)
            {
                if (letra == letters[i].ToString())
                {
                    start_column = i;
                }
            }
            start_row = Convert.ToByte(start.Substring(1)) - 1;
            letra = end.Substring(0, 1);
            for (int i = 0; i < SIZE; i++)
            {
                if (letra == letters[i].ToString())
                {
                    end_column = i;
                }
            }
            end_row = Convert.ToByte(end.Substring(1)) - 1;

            for (int i = start_row; i <= end_row; i++)
            {
                for (int j = start_column; j <= end_column; j++)
                {
                    empty[i, j] = isla;
                }
            }
            Console.WriteLine();
            Console.Write("\t");
            for (int i = 0; i < SIZE; i++) // Bucle para Mostrar las Letras.
            {
                Console.Write("{0} ", Convert.ToChar('A' + i)); // Muestro las Letras de la A a la J.
            }
            Console.WriteLine();
            for (int i = 0; i < SIZE; i++) // Doble Bucle para Mostrar el Tablero con los Asteriscos si el Jugador ha Acertado Alguna Casilla Donde Está Alguno de los Barcos.
            {
                Console.Write("{0}\t", i + 1); // Muestro los Números de Línea.
                for (int j = 0; j < SIZE; j++) // Bucle Interno.
                {
                    Console.Write("{0} ", empty[i, j]); // Muestro el Tablero La Isla.
                }
                Console.WriteLine();
            }
        }
    }
}