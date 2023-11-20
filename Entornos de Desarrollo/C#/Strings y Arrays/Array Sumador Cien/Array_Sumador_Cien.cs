namespace Array_Sumador_Cien
{
    internal class Array_Sumador_Cien
    {
        static void Main(string[] args)
        {
            int index = 0;
            int total = 0;
            const int SIZE = 100;
            int[] num = new int[SIZE];

            Console.WriteLine("Este Programa te Pedirá Números Hasta que Ingreses 0, el Limite es 100 Números, te Mostrará la Cantidad de Números Introducidos y la Suma de Todos.");
            Console.WriteLine();
            Console.Write("Ingresa el {0}º: ", index + 1);
            num[index] = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine();
            while (num[index] != 0)
            {
                index++;
                Console.Write("Ingresa el {0}º: ", index + 1);
                num[index] = Convert.ToInt32(Console.ReadLine());
                Console.WriteLine();
            }
            for (int i = 0; i < index; i++)
            {
                total += num[i];
            }
            Console.WriteLine("Has Introducido {0} Números y la Suma de Todos es: {1}", index, total);
        }
    }
}
