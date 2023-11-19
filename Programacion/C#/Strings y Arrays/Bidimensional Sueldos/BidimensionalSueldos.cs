namespace Bidimensional_Sueldos
{
    internal class BidimensionalSueldos
    {
        static void Main(string[] args)
        {
            string[] names;
            string[,] salaries;
            names = new string[4];
            salaries = new string[4, 3];

            Console.WriteLine("Este Programa Crea una Tabla Bidimensional con los Sueldos de 4 Trabajadores durante los Últimos 3 Meses, Muestra lo que ha Ganado Cada Uno y Quien es el Empleado que más ha Ganado.");
            for (int i = 0; i < names.Length; i++)
            {
                Console.Write("Ingresa el Nombre del {0}º Empleado: ", i + 1);
                names[i] = Console.ReadLine();
                for (int j = 0; j < names.Length - 1; j++)
                {
                    Console.Write("Ingresa el Sueldo del {0}ª Mes ", i + 1);
                    salaries[i, j] = Console.ReadLine();
                }
            }
        }
    }
}
