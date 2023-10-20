namespace Ejercicio_3_Entrega;

class Program
{ 
    static void Main(string[] args)
    {
        int num;
        int total = 0;

        Console.WriteLine("Este Programa Pide 3 Números y Acumula la suma de lols que sean mayores que 25.");
        for (int i = 0; i < 3; i++)
        {
            Console.Write("Ingresa un Número: ");
            num = Convert.ToInt32(Console.ReadLine());
            if (num > 25)
            {
                total += num;
            }
        }
        Console.WriteLine("La Suma de Los Números Mayores que 25 es: " + total);
    }
}