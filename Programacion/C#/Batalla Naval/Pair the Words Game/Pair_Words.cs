using System.Net.NetworkInformation;
using System.Runtime.CompilerServices;
using static System.Runtime.InteropServices.JavaScript.JSType;

namespace Pair_the_Words
{
    internal class Pair_Words
    {
        const int ROW = 4;
        const int COL = 5;
        static string[,] tablero = new string[ROW, COL];
        static bool[,] added = new bool[ROW, COL];
        static string[] words = 
        {
            "Casas", "Coche", "Perro", "Gatos", "Monos", "Pajar", "Rojos", "Verde", "Rosas", "Plano"
        };

        static void Main(string[] args)
        {
            int fila1 = 11;
            int fila2;
            int col1;
            int col2;

            Console.WriteLine("Juego de Emparejar las Palabras.\n");
            Console.WriteLine("En una Grilla de 4 Filas Horizontales por 5 Columnas Verticales, se Esconden 10 Palbras Repetidas 2 Veces Cada Una.");
            Console.WriteLine("El Objetivo del Juego es Encontrar Todas las Palabras en la Menor Cantidad de Opciones Posible. A Jugar!");
            fill();
            show();
            while (fila1 != -1)
            {
                Console.Write("\nIngresa la Coordenada de la Primera Fila: ");
                if (fila1 != -1)
                {
                    fila1 = Convert.ToByte(Console.ReadLine());
                    Console.Write("\nIngresa la Coordenada de la Primera Columna: ");
                    col1 = Convert.ToByte(Console.ReadLine());
                    Console.Write("\nIngresa la Coordenada de la Segunda Fila: ");
                    fila2 = Convert.ToByte(Console.ReadLine());
                    Console.Write("\nIngresa la Coordenada de la Segunda Columna: ");
                    col2 = Convert.ToByte(Console.ReadLine());
                    draw(fila1, col1, fila2, col2);
                }
            }
        }

        private static void draw(int fila1, int col1, int fila2, int col2)
        {
            Console.Clear();
            Console.Write(" ");
            for (int i = 0; i < COL; i++)
            {
                Console.Write("    {0}    ", i);
            }
            Console.WriteLine();
            for (int i = 0; i < ROW; i++)
            {
                Console.Write("{0}", i);
                for (int j = 0; j < COL; j++)
                {
                    if (i == fila1 && j == col1)
                    {
                        if (added[fila1, col1])
                        {
                            tab(fila1, col1);
                        }
                        tab(fila1, col1);
                    }
                    else
                    {
                        if (i == fila2 && j == col2)
                        {
                            if (added[fila2, col2])
                            {
                                tab(fila2, col2);
                            }
                            tab(fila2, col2);
                        }
                        else
                        {
                            Console.Write("    _    ");
                        }
                    }
                }
                Console.WriteLine();
            }
            Console.WriteLine("{0} - {1}", tablero[fila1, col1], tablero[fila2, col2]);
            if (tablero[fila1, col1] == tablero[fila2, col2])
            {
                int count = 0;
                added[fila1, col1] = true;
                added[fila2, col2] = true;
                for (int i = 0; i < ROW; i++)
                {
                    for (int j = 0; j < COL; j++)
                    {
                        if (added[i, j])
                        {
                            Console.WriteLine("Has Ganado!. Impresionante Haz Terminado el Juego es: {0} Jugadas.", count);
                        }
                    }
                }
            }
        }

        private static void tab(int fila, int col)
        {
            Console.Write(new string(' ', (9 - tablero[fila, col].Length) / 2));
            Console.Write("{0}", tablero[fila, col]);
            Console.Write(new string(' ', (9 - tablero[fila, col].Length) / 2));
        }

        private static void fill()
        {
            int index = 0;
            Random random = new Random();
            int[] wordPosition = new int[words.Length];
            int[] copyPosition = new int[words.Length];
            for (int i = 0; i < words.Length; i++)
            {
                wordPosition[i] = -1;
                copyPosition[i] = -1;
            }
            while (index < words.Length)
            {
                copyPosition[index] = random.Next(0, words.Length);
                wordPosition[index] = random.Next(0, words.Length);
                if (index > 0)
                {
                    for (int i = 0; i < words.Length; i++)
                    {
                        if (i != index)
                        {
                            if (wordPosition[i] == wordPosition[index])
                            {
                                wordPosition[index] = random.Next(0, words.Length);
                                i = -1;
                            }
                        }
                    }
                    for (int i = 0; i < words.Length; i++)
                    {
                        if (i != index)
                        {
                            if (copyPosition[i] == copyPosition[index])
                            {
                                copyPosition[index] = random.Next(0, words.Length);
                                i = -1;
                            }
                        }
                    }
                }
                index++;
            }

            int index1 = 0;
            bool again = false;
            while (index1 < words.Length)
            {
                for (int i = 0; i < ROW; ++i)
                {
                    for (int j = 0; j < COL; ++j)
                    {
                        if (!again)
                        {
                            tablero[i, j] = words[wordPosition[index1]];
                        }
                        else
                        {
                            tablero[i, j] = words[copyPosition[index1]];
                        }
                        index1++;
                        if (index1 == 10 && !again)
                        {
                            again = true;
                            index1 = 0;
                        }
                    }
                }
            }
        }

        private static void show()
        {
            Console.Write(" ");
            for (int i = 0; i < COL; i++)
            {
                Console.Write("    {0}    ", i);
            }
            Console.WriteLine();
            for (int i = 0; i < ROW; i++)
            {
                Console.Write("{0}", i);
                for (int j = 0; j < COL; j++)
                {
                    Console.Write("    _    ");
                }
                Console.WriteLine();
            }
        }
    }
}