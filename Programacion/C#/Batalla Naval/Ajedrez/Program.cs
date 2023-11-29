namespace Ajedrez
{
    internal class Program
    {
        const int SIZE = 8;
        static char[,] tablero = new char[SIZE, SIZE];
        static string letras = "ABCDEFGH";

        static void Main(string[] args)
        {
            string horse;
            string letra;
            int row = -1;
            int col = -1;
            int result;

            draw(row, col);
            Console.WriteLine("Programa que Muestra el Tablero de Ajedrez, Pide las Coordenadas de Inicio de la Pieza Caballo y Muestra los Posibles Movimientos del Corsel.");
            show();

            Console.Write("Ingresa las Coordenadas del Equino: ");
            horse = Console.ReadLine();
            letra = horse.Substring(0, 1);
            for (int i = 0; i < SIZE; i++)
            {
                if (letra == letras[i].ToString())
                {
                    col = i;
                }
            }
            row = Convert.ToByte(horse.Substring(1)) - 1;
            draw(row, col);
            Console.Clear();
            show();
            result = moves(row, col);
            Console.WriteLine("Desde Las Coordenadas Ingresadas el Cavallino Rampante puede Moverse: {0} Veces.", result);
        }

        private static int moves(int row, int col)
        {
            int moves = 0;
            int total = row + col;

            switch (total)
            {
                case 0:
                case 14:
                    moves = 2;
                    break;
                case 1:
                case 13:
                    moves = 3;
                    break;
                default:
                    if (row > 1 && col > 1 && row < 6 && col < 6)
                    {
                        moves = 8;
                    }
                    else if (row > 1 && col == 1 && row < 6 && col == 1 || row == 1 && col > 1 && row == 1 && col < 6 || row > 1 && col == 6 && row < 6 && col == 6 || row == 6 && col > 1 && row == 6 && col < 6)
                    {
                        moves = 6;
                    }
                    else if (row > 1 && col == 0 && row < 6 && col == 0 || row == 0 && col > 1 && row == 0 && col < 6 || row > 1 && col == 7 && row < 6 && col == 7 || row == 7 && col > 1 && row == 7 && col < 6)
                    {
                        moves = 4;
                    }
                    else if (row == 0 && col == 6 || row == 1 && col == 7 || row == 6 && col == 0 || row == 7 && col == 1)
                    {
                        moves = 3;
                    }
                    else
                    {
                        moves = 2;
                    }
                    break;
            }
            return moves;
        }

        private static void draw(int row, int col)
        {
            if (col != -1)
            {
                for (int i = 0; i < SIZE; i++)
                {
                    for (int j = 0; j < SIZE; j++)
                    {
                        tablero[row, col] = 'C';
                    }
                }
            }
            else
            {
                for (int i = 0; i < SIZE; i++)
                {
                    for (int j = 0; j < SIZE; j++)
                    {
                        tablero[i, j] = ' ';
                    }
                }
            }
        }

        private static void show()
        {
            Console.Write("   ");
            for (int i = 0; i < SIZE; i++)
            {
                Console.Write(" {0} ", letras[i]);
            }
            Console.WriteLine("\n");
            for (int i = 0; i < SIZE; i++)
            {
                Console.Write("{0}  ", i + 1);
                for (int j = 0; j < SIZE; j++)
                {
                    if ((j + i) % 2 == 0)
                    {
                        Console.BackgroundColor = ConsoleColor.White;
                        Console.Write(" {0} ", tablero[i, j]);
                    }
                    else
                    {
                        Console.BackgroundColor = ConsoleColor.Black;
                        Console.Write(" {0} ", tablero[i, j]);
                    }
                }
                Console.BackgroundColor = ConsoleColor.Black;
                Console.WriteLine();
            }
            Console.WriteLine("\n");
        }
    }
}