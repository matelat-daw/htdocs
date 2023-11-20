namespace Array_Decimales_Media
{
    internal class Array_Decimales_Media
    {
        static void Main(string[] args)
        {
            int index = 0;
            double total = 0;
            const int SIZE = 10;
            double[] num = new double[SIZE];

            Console.WriteLine("Este Programa te Pedirá 10 Números Decimales, Calculará la Media y te Mostrará Los que son Mayores que la Media.");
            Console.WriteLine();
            while (index < SIZE)
            {
                Console.Write("Ingresa el {0}º: ", index + 1);
                num[index] = Convert.ToDouble(Console.ReadLine());
                Console.WriteLine();
                index++;
            }
            for (int i = 0; i < SIZE; i++)
            {
                total += num[i];
            }
            double media = total / SIZE;
            for (int i = 0; i < SIZE; i++)
            {
                if (media < num[i])
                {
                    Console.WriteLine("El Número en la Posición: {0} es el: {1} y es Mayor que la Media: {2}", i, num[i], media);
                }
            }
        }
    }
}
