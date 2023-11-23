namespace Código_de_Error
{
    internal class Program
    {
        static void Main(string[] args)
        {
            string result;
            int num;
            string continua = "s";
            const double PI = 3.141596;

            Console.WriteLine("Programa Tabla de Multiplicar\n");
            Console.Write("Ingresa el Número Para ver su Tabla de Multiplicar: ");
            while (continua == "s")
            {
                num = Convert.ToInt16(Console.ReadLine());
                Console.WriteLine("\n");
                for (int i = 1; i < 11; i++)
                {
                    if (num * i > 75)
                    {
                        Console.WriteLine("Esos Valores Son Muy Altos. ¡CUIDADO!");
                    }
                    Console.WriteLine("{0} x {1} = {2}", i, num, num * i);
                }
                Console.WriteLine("Deseas Ver Otra Tabla?, Presiona s para Continuar, Cualquier Otra Tecla Para Salir: ");
                continua = Console.ReadLine();
                Console.Clear();
            }
        }
    }
}