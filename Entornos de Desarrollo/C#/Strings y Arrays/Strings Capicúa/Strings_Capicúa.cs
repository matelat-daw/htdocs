namespace Strings_Capicúa
{
    internal class Strings_Capicúa
    {
        static void Main(string[] args)
        {
            int capicua;
            int result;
            bool capi = true;
            int index = 0;
            int[] each = new int[999999999];

            Console.WriteLine("Este Programa te Pedirá un Número por Teclado y te Dirá si es Capicúa.\n");
            Console.Write("Por Favor Ingresa un Número: ");
            capicua = Convert.ToInt32(Console.ReadLine());
            result = capicua; // Asigo a result el Número Introducido por Teclado.
            while (capicua > 0) // Mientras el Número sea Mayor que 0.
            {
                each[index] = capicua % 10; // Asigno al array each en la posición index, el resto del Número Dividido entre 10.
                capicua /= 10; // Divido el Número entre 10.
                index++; // Incremento el índice del Array index.
            }
            int half = index / 2; // Necesito la mitad del tamaño del Array para Comparar los Primeros Números con los Últimos.
            index--; // Decremento index, así Obtengo la Última Posición en el Array.
            for (int i = 0; i < half; i++) // Hago un bucle hasta la Mitad del Array.
            {
                if (each[i] != each[index - i]) // Comparo el primero Numero con el Último, el Segundo con el Penúltimo, etc.
                {
                    capi = false; // Si Alguno es Distinto capi es false.
                }
            }
            if (capi) // Si capi es true.
            {
                Console.WriteLine("\nEl Número Introducido: {0}, Es Capicúa.", result); // Muestro el Número es Capicúa.
            }
            else // Si no, capi es false.
            {
                Console.WriteLine("\nNo ese Número: {0} no es Capicúa.", result); // Muestro el Número no es Capicúa.
            }
        }
    }
}