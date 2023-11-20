namespace Array_Muestra_Numeros
{
    internal class Array_Muestra_Numeros
    {
        static void Main(string[] args)
        {
            int index = 0;
            const int SIZE = 10;
            int[] num = new int[SIZE];

            Console.WriteLine("Este Programa te Pedirá 10 Números y los Mostrará por Orden de Entrada.");
            Console.WriteLine();
            while (index < SIZE)
            {
                Console.Write("Ingresa el {0}º: ", index + 1);
                num[index] = Convert.ToInt32(Console.ReadLine());
                Console.WriteLine();
                index++;
            }
            for (int i = 0; i < SIZE; i++)
            {
                Console.WriteLine("El {0}º Fue: {1}", i + 1, num[i]);
            }
        }
    }
}
