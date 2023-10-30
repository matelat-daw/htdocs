namespace Ejercicio_5;

class Program
{
    static void Main(string[] args)
    {
        int num;

        Console.WriteLine("Ingresa el Número para ver la tabla de Multiplicar: ");
        num = Convert.ToInt32(Console.ReadLine());
        for (int i = 0; i < 11; i++)
        {
            // Console.WriteLine(i + " x " + num + " = " + num * i);
            Console.WriteLine("{0} + {1} = {2}", i, num, num * i);
        }
    }
}