using System.Data;
using System.Drawing;

namespace Pair_the_Words_Game
{
    internal class Program
    {
        const int ROW = 4;
        const int COL = 5;
        static string[,] tablero = new string[ROW, COL];
        static string[] words = new string[]
        {
            "Casa", "Coche", "Perro", "Gato", "Pájaro", "Mono", "Elefante", "Barco", "Avión", "Monte"
        };

        static void Main(string[] args)
        {
            int fila1;
            int fila2;
            int columna1;
            int columna2;
            Console.WriteLine("Juego de Emparejar las Palabras.\n");
            // draw(-1, -1);
            show();
            Console.Write("Ingresa la Coordenada Fila de la Primera Palabra: ");
            fila1 = Convert.ToByte(Console.ReadLine());
            Console.Write("Ingresa la Coordenada Columna de la Primera Palabra: ");
            columna1 = Convert.ToByte(Console.ReadLine());
            Console.Write("Ingresa la Coordenada Fila de la Segunda Palabra: ");
            fila2 = Convert.ToByte(Console.ReadLine());
            Console.Write("Ingresa la Coordenada Columna de la Segunda Palabra: ");
            columna2 = Convert.ToByte(Console.ReadLine());
        }

        private static void show()
        {
            Console.Write(" "); // Dibujo 3 Espacios en la Pantalla.
            for (int i = 0; i < COL; i++) // Hago un Bucle hasta el Tamaño del Tablero
            {
                Console.Write("    {0}    ", i); // A Continuación de los 3 Espacios dibujo las Letras del Array de Letras letras con un Espacio Delante y Otro Detrás.
            }
            Console.WriteLine("\n"); // Después de Mostrar las Letras hago 2 Saltos de Línea.
            for (int i = 0; i < ROW; i++)
            {
                Console.Write("{0}", i);
                for (int j = 0; j < COL; j++)
                {
                    Console.Write("    {0}    ", '*');
                }
                Console.WriteLine();
            }
        }

        private static void draw(int row, int col)
        {
            Random rand = new Random();
            int[] position = new int[words.Length * 2];
            for (int i = 0; i <  words.Length; i++)
            {
                position[i] = -1;
            }

            for (int i = 0; i < words.Length; i++)
            {
                position[i] = rand.Next(0, 10);
                if (i > 0)
                {
                    while (position[i] == position[i - 1])
                    {
                        position[i] = rand.Next(0, 10);
                        position[i + 10] = position[i];
                    }
                }
            }
            for (int i = 0; i < ROW; i++)
            {
                //for (int j = 0; j < COL; j++)
                //{
                //    tablero[row, col] = words[position[i]];
                //}
            }
        }
    }
}