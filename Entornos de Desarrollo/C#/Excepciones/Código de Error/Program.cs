namespace Código_de_Error
{
    internal class Program
    {
        static void Main(string[] args)
        {
            string result;
            int num;
            string exit = "s";

            Console.WriteLine("Programa Tabla de Multiplicar\n");
            Console.Write("Ingresa el Número Para ver su Tabla de Multiplicar: ");
            while (exit == "s")
            {
                num = Convert.ToInt16(Console.ReadLine());
                Console.WriteLine("\n");
                for (int i = 1; i < 11; i++)
                {
                    if (num * i > 75)
                    {
                        Console.WriteLine("Esos Valores Son Muy Altos Para Ti. ¡CUIDADO!");
                    }
                    Console.WriteLine("{0} x {1} = {2}", i, num, num * i);
                }
                Console.WriteLine("Deseas Ver Otra Tabla?, Presiona s para Continuar, Cualquier Otra Tecla Para Salir: ");
                exit = Console.ReadLine();
                Console.Clear();
            }
        }
    }
}