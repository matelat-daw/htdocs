namespace Array_Empleados_Sueldos
{
    internal class Array_Empleados_Sueldos
    {
        static void Main(string[] args)
        {
            const int SIZE = 4;
            int position = 0;
            int i;
            int[] total = new int[SIZE];
            string[] names = new string[SIZE];
            // names = ["Ana", "Juan", "Rosa", "Manuel"];
            // string[] months = ["Último", "Penúltimo", "Antepenúltimo"];
            // int[,] salary = new int[names.Length, months.Length];
            int[,] salary = new int[SIZE, SIZE - 1];
            Random sueldo = new Random();
            bool ok = false;

            Console.WriteLine("Este Programa Almacena los Sueldos de los Últimos 3 Meses de 4 Empleados e Informa quien es el que Más Gana.");
            Console.WriteLine();
            for (i = 0; i < SIZE; i++)
            {
                Console.Write("Ingresa el Nombre de la {0}ª Persona: ", i + 1);
                names[i] = Console.ReadLine();
                for (int j = 0; j < SIZE - 1; j++)
                {
                    Console.Write("Ingresa El Sueldo de {0} del {1}º Mes: ", names[i], j + 1);
                    salary[i, j] = Convert.ToInt16(Console.ReadLine());
                }
            }
            Console.WriteLine("Los Sueldos de Todos los Trabajadores Son:");
            for (i = 0; i < SIZE; i++)
            {
                Console.Write("El Empleado {0}, ", names[i]);
                for (int j = 0; j < SIZE - 1; j++)
                {
                    total[i] += salary[i, j];
                }
                Console.WriteLine("Con un Sueldo Total de: {0}", total[i]);
            }
            for (i = 0; i < total.Length - 1; i++)
            {
                if (total[i] > total[i + 1])
                {
                    position = i;
                    ok = true;
                }
            }
            if (ok)
            {
                Console.WriteLine("El Empleado que más Ha Ganado es: {0}, con un Salario de: {1}", names[position], total[position]);
            }
            else
            {
                Console.WriteLine("El Empleado que más Ha Ganado es: {0}, con un Salario de: {1}", names[i], total[i]);
            }
        }
    }
}
