namespace Array_Posicion
{
    internal class Array_Posicion
    {
        static void Main(string[] args)
        {
            int index = 0;
            int find;
            const int SIZE = 10;
            int[] num = new int[SIZE];

            Console.WriteLine("Este Programa te Pedirá 10 Números y Uno Más y te Dirá en que Posición lo Introdujiste Antes.");
            Console.WriteLine();
            while (index < SIZE)
            {
                Console.Write("Ingresa el {0}º: ", index + 1);
                num[index] = Convert.ToInt32(Console.ReadLine());
                Console.WriteLine();
                index++;
            }
            Console.Write("Ingresa el Número a Buscar: ");
            find = Convert.ToInt32(Console.ReadLine());
            while (index > 0 && find != num[index - 1]) // Este es un Ejemplo de Cuando hay que usa && (El Y de Corte) y no se puede Usar &.
            {
                index--;
            }
            if (index > 0)
            {
                Console.WriteLine("El Número Fue Introducido en la Posición: {0}", index);
            }
            else
            {
                Console.WriteLine("El Número Buscado no se ha Introducido Antes.");
            }
        }
    }
}