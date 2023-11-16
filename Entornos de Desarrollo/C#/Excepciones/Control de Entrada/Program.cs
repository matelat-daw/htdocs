namespace Control_de_Entrada
{
    internal class Program
    {
        static void Main(string[] args)
        {
            bool flag = false;
            int num = 0;

            Console.WriteLine("Este Programa Controla que la Entrada sea Valida antes de Continuar.\n");
            do
            {
                try
                {
                    Console.Write("Ingresa un Número Entero (0 Para Salir): ");
                    num = int.Parse(Console.ReadLine());
                    flag = false;
                }
                catch (Exception error)
                {
                    Console.WriteLine("Te has Equivocado de Número, Pulsa Cualquier Tecla para Continuar: {0}", error);
                    flag = true;
                    Console.ReadKey();
                }
            }
            while (flag);
            if (num != 0)
            {
                Console.WriteLine("Perfecto has Introducido el Número Entero {0}. Presiona Cualquier Tecla para Salir.", num);
                Console.ReadKey();
            }
            else
            {
                Console.WriteLine("Has Introducido el 0. Presiona Cualquier Tecla para Salir.", num);
                Console.ReadKey();
            }
        }
    }
}