namespace Array_Nombres_y_Notas
{
    internal class Array_Nombres_Notas
    {
        static void Main(string[] args)
        {
            int index = 0;
            const int SIZE = 10;
            double total = 0.0;
            double[] notas = new double[SIZE];
            string[] nombres = new string[SIZE];

            Console.WriteLine("Este Programa te Pedirá 10 Números Decimales, Calculará la Media y te Mostrará Los que son Mayores que la Media.");
            Console.WriteLine();
            while (index < SIZE)
            {
                Console.Write("Ingresa el Nombre de la {0}ª Persona: ", index + 1);
                nombres[index] = Console.ReadLine();
                Console.WriteLine();
                Console.Write("Ingresa la Nota de {0}: ", nombres[index]);
                notas[index] = Convert.ToDouble(Console.ReadLine());
                Console.WriteLine();
                index++;
            }
            for (int i = 0; i < SIZE; i++)
            {
                total += notas[i];
            }
            double media = total / SIZE;
            for (int i = 0; i < SIZE; i++)
            {
                if (media > notas[i])
                {
                    Console.WriteLine("La Persona: {0} Ha Obtenido la Nota: {1} y es Inferior a la Media:{2}", nombres[i], notas[i], media);
                }
            }
        }
    }
}
