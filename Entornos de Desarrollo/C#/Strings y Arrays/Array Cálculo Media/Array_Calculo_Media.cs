namespace Array_Cálculo_Media
{
    internal class Array_Calculo_Media
    {
        static void Main(string[] args)
        {
            int index = 0;
            int total = 0;
            const int SIZE = 10;
            int[] num = new int[SIZE];

            Console.WriteLine("Este Programa te Pedirá 10 Números y Calculará la Media.");
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
                total += num[i];
            }
            Console.WriteLine("La Media de los Número Introducidos es: {0}", total / SIZE);
        }
    }
}