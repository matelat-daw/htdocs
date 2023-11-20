namespace Strings_Palíndromo
{
    internal class Strings_Palíndromo
    {
        static void Main(string[] args)
        {
            string word;
            int size;
            int half;
            bool palindrome = true;

            Console.WriteLine("Este Programa Te Dirá si la Palbara Ingresada es un Palíndromo.\n");
            Console.Write("Ingresa ua Palabra o Frase: ");
            word = Console.ReadLine();
            size = word.Length; // Obtengo el Tamaño de la Cadena Introducida.
            half = size / 2; // Necesito la Mitad para Comparar los Primeros Caracteres con los Últimos.
            size--; // Decremento el tamaño del Array, ya que Necesito la Posición del Último Caracter.
            for (int i = 0; i < half; i++) // Hago el Bucle Hasta la Mitad del Tamaño del Array.
            {
                if (word[i] != word[size - i]) // Comparo la Primera Letra del Array con la Última, la Segunda con la Penúltima, etc.
                {
                    palindrome = false; // Si no Coinciden No es Palíndromo.
                }
            }
            if (palindrome) // Si Todas las Letras Coinciden palindrome Queda a true.
            {
                Console.WriteLine("\nLa Palabra Introducida: {0}, Es Palindromo.", word); // Muestro la Palabra es Palíndromo.
            }
            else // Si palindrome está a false.
            {
                Console.WriteLine("\nNo esa Palabra: {0}, no es un Palíndromo.", word); // Muestro la Palabra no es Palíndromo.
            }
        }
    }
}
