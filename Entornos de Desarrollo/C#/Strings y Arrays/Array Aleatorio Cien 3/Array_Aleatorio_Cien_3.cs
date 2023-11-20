namespace Array_Aleatorio_Cien_3
{
    internal class Array_Aleatorio_Cien_3
    {
        static void Main(string[] args)
        {
            Random letra = new Random();
            const int QTTY = 100;
            const int LETTERS = 26;
            int contador = 0;
            char[] chain = new char[QTTY];
            int[] counter = new int[LETTERS];

            Console.WriteLine("Este Programa Agrega a un Array 100 Letras entre la A y la Z y Muestra la Cantidad de Cada Una.");
            Console.WriteLine();
            for (int i = 0; i < QTTY; i++) // Este Bucle Agrega las Letras al Azar al Array chain.
            {
                chain[i] = Convert.ToChar(letra.Next(65, 91)); // Uso el Código ASCII de las Letras de la 'A' a la 'Z' + 1, Para que Esté Incluida la 'Z' y lo Convierto a char.
            }
            while (contador < LETTERS) // Mientras la Variable contador sea menor que 26, la Cantidad de Letras.
            {
                for (int i = 0; i < QTTY; i++) // Hago un Bucle hasta 100, el Tamaño del Array que Contiene las Letras
                {
                    if (chain[i] == Convert.ToChar(65 + contador)) // Verifico si en Todas las Posiciones del Array está la Letra con Código ASCII 65, 'A'
                    {
                        counter[contador]++; // Incremento el Array Counter en la Posición Contador Para Cada Coincidencia.
                    }
                }
                contador++; // Cuando Termina el Bucle de 0 a 99 Incremento la Variable contador, Hasta que Llegue a 100 Seguirá Recorriendo el Array con las Letras (Lo Recorre 100 Veces) y en la Primera Vuelta Verifica la Letra 'A', Código ASCII 65, en la Segunda Vuelta Verifica La Letra 'B', etc.
            }
            for (int i = 0; i < counter.Length; i++) // Bucle de 0 a 25, Muestra el Contenido del Array counter que Tiene la Cantidad de Cada Letra.
            {
                if (counter[i] > 0) // Comprueba que Haya Letras.
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
