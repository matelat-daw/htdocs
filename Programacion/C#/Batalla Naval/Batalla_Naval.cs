using System.Reflection.Metadata;

namespace Batalla_Naval
{
    internal class Batalla_Naval
    {
        static void Main(string[] args)
        {
            char[,] tablero = new char[10, 10];
            char[,] agua = new char[10, 10];
            int[] contador = new int[2];
            int row;
            int col;
            int aircc;
            int trana;
            string coords = " ";

            Console.WriteLine("Juego de la Batalla Naval");
            Console.WriteLine();
            for (row = 0; row < tablero.GetLength(0); row++)
            {
                for (col = 0; col < tablero.GetLength(1); col++)
                {
                    tablero[row, col] = ' ';
                    agua[row, col] = '~';
                }
            }
            for (aircc = 0; aircc < 4; aircc++)
            {
                tablero[2, 3 + aircc] = 'H';
            }
            for (trana = 0; trana < 3; trana++)
            {
                tablero[7 + trana, 6] = 'H';
            }
            Console.Write("\t");
            for (row = 0; row < tablero.GetLength(0); row++)
            {
                Console.Write("\t{0}", Convert.ToChar('A' + row));
            }
            Console.WriteLine();
            for (row = 0; row < tablero.GetLength(0); row++)
            {
                Console.Write("\t{0}", (row + 1));
                for (col = 0; col < tablero.GetLength(1); col++)
                {
                    Console.Write("\t{0}", agua[row, col]);
                }
                Console.WriteLine();
            }
            while (coords != "")
            {
                Console.WriteLine("Ingresa las Coordenadas: ");
                coords = Console.ReadLine();
                switch (coords)
                {
                    case "C3":
                        agua[2, 2] = '*';
                        contador[0]++;
                        break;
                    case "D3":
                        agua[2, 3] = '*';
                        contador[0]++;
                        break;
                    case "E3":
                        agua[2, 4] = '*';
                        contador[0]++;
                        break;
                    case "F3":
                        agua[2, 5] = '*';
                        contador[0]++;
                        break;
                    case "H8":
                        tablero[7, 7] = '*';
                        contador[1]++;
                        break;
                    case "H9":
                        agua[8, 7] = '*';
                        contador[1]++;
                        break;
                    case "H10":
                        agua[9, 7] = '*';
                        contador[1]++;
                        break;
                }
                Console.Clear();
                Console.Write("\t");
                for (row = 0; row < tablero.GetLength(0); row++)
                {
                    Console.Write("\t{0}", Convert.ToChar('A' + row));
                }
                Console.WriteLine();
                for (row = 0; row < tablero.GetLength(0); row++)
                {
                    Console.Write("\t{0}", (row + 1));
                    for (col = 0; col < tablero.GetLength(1); col++)
                    {
                        Console.Write("\t{0}", agua[row, col]);
                    }
                    Console.WriteLine();
                }
                if (contador[0] == 4 && contador[1] == 3)
                {
                    Console.WriteLine("Ganaste, Has Hundido toda la Flota!");
                    coords = "";
                }
            }
            Console.WriteLine("Presiona Calquier Tecla Para Salir.");
            Console.ReadKey();
        }
    }
}