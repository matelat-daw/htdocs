namespace Array_Menor_Mayor
{
    internal class Array_Menor_Mayor
    {
        static void Main(string[] args)
        {
            int index = 0;
            int tmp;
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
            // Array.Sort(num); // Este es con Trampa, Ordena el Array de Menor a Mayor.
            index--; // Este es Mi Algoritmo.
            while (index > 0)
            {
                for (int i = 0; i < SIZE - 1; i++)
                {
                    if (num[i] > num[i + 1])
                    {
                        tmp = num[i];
                        num[i] = num[i + 1];
                        num[i + 1] = tmp;
                    }
                }
                index--;
            }
            for (int i = 0; i < SIZE; i++)
            {
                Console.WriteLine("El Array Ordenado Queda: {0}º - {1}", i + 1, num[i]);
            }
        }
    }
}