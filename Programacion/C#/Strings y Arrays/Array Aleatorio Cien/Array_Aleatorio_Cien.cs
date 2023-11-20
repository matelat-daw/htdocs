namespace Array_Aleatorio_Cien
{
    internal class Array_Aleatorio_Cien
    {
        static void Main(string[] args)
        {
            Random letra = new Random();
            const int QTTY = 100;
            const int LETTERS = 26;
            char[] chain = new char[QTTY];
            int[] counter = new int[LETTERS];

            Console.WriteLine("Este Programa Agrega a un Array 100 Letras entre la A y la Z y Muestra la Cantidad de Cada Una.");
            Console.WriteLine();
            for (int i = 0; i < QTTY; i++)
            {
                chain[i] = Convert.ToChar(letra.Next(65, 91));
                if (chain[i] == 'A') // De la Línea 18 a la 121 Algoritmo Pithecanthropus (‘hombre mono’) del Griego.
                {
                    counter[0]++;
                }
                if (chain[i] == 'B')
                {
                    counter[1]++;
                }
                if (chain[i] == 'C')
                {
                    counter[2]++;
                }
                if (chain[i] == 'D')
                {
                    counter[3]++;
                }
                if (chain[i] == 'E')
                {
                    counter[4]++;
                }
                if (chain[i] == 'F')
                {
                    counter[5]++;
                }
                if (chain[i] == 'G')
                {
                    counter[6]++;
                }
                if (chain[i] == 'H')
                {
                    counter[7]++;
                }
                if (chain[i] == 'I')
                {
                    counter[8]++;
                }
                if (chain[i] == 'J')
                {
                    counter[9]++;
                }
                if (chain[i] == 'K')
                {
                    counter[10]++;
                }
                if (chain[i] == 'L')
                {
                    counter[11]++;
                }
                if (chain[i] == 'M')
                {
                    counter[12]++;
                }
                if (chain[i] == 'N')
                {
                    counter[13]++;
                }
                if (chain[i] == 'O')
                {
                    counter[14]++;
                }
                if (chain[i] == 'P')
                {
                    counter[15]++;
                }
                if (chain[i] == 'Q')
                {
                    counter[16]++;
                }
                if (chain[i] == 'R')
                {
                    counter[17]++;
                }
                if (chain[i] == 'S')
                {
                    counter[18]++;
                }
                if (chain[i] == 'T')
                {
                    counter[19]++;
                }
                if (chain[i] == 'U')
                {
                    counter[20]++;
                }
                if (chain[i] == 'V')
                {
                    counter[21]++;
                }
                if (chain[i] == 'W')
                {
                    counter[22]++;
                }
                if (chain[i] == 'X')
                {
                    counter[23]++;
                }
                if (chain[i] == 'Y')
                {
                    counter[24]++;
                }
                if (chain[i] == 'Z')
                {
                    counter[25]++;
                }
            }
            for (int i = 0; i < counter.Length; i++)
            {
                if (counter[i] > 0)
                {
                    if (counter[i] > 1) // Comprueba si Hay Más de una Letra.
                    {
                        Console.WriteLine("Tienes: {0} Letras: {1}", counter[i], Convert.ToChar(65 + i)); // Plural.
                    }
                    else // Si no, Solo Hay Una Letra.
                    {
                        Console.WriteLine("Tienes: {0} Letra: {1}", counter[i], Convert.ToChar(65 + i)); // Singular.
                    }
                }
                else // Si Alguna Letra no Está en el Array.
                {
                    Console.WriteLine(); // Hace un Salto Línea.
                }
            }
            Console.WriteLine("\nTotal: {0} Letras.", chain.Length); // Muestra la Cantidad total de Letras.
        }
    }
}