using System.Drawing;

namespace Arrays_Empleados_Sueldos_2
{
    internal class Arrays_Empleados_Sueldos_2
    {
        static void Main(string[] args)
        {
            const int SIZE = 4;
            int[] total = new int[SIZE];
            String[] nombres;
            nombres = new String[] {"Pedro", "Andrea", "Gracia", "Eva"};

            String[] meses = {"Último", "Penúltimo", "Antepenúltimo"};
            int pers, m;
            int[,] sueldos;
            //sueldos = new int[,]
            //{
            //        {1230,2,3,4},
            //        {1000,2,3,4},
            //        {1990,2,3,4}
            //};

            sueldos = new int[meses.Length, nombres.Length];
            Random azar = new Random();
            // Generando sueldos al azar
            for (m = 0; m < sueldos.GetLength(0); m++)
            {
                for (pers = 0; pers < sueldos.GetLength(1); pers++)
                {
                    sueldos[m, pers] = azar.Next(100, 201) * 10;
                    total[pers] += sueldos[m, pers];
                }
            }




            // Mostrando tabla
            // Cabecera
            Console.Write("\t");
            for (pers = 0; pers < nombres.Length; pers++)
                Console.Write("\t{0}", nombres[pers]);
            Console.WriteLine();
            // Datos
            for (m = 0; m < sueldos.GetLength(0); m++)
            {
                // Linea de detalle
                Console.Write("{0, -10}", meses[m]);
                for (pers = 0; pers < nombres.Length; pers++)
                {
                    Console.Write("\t{0}", sueldos[m, pers]);
                }
                Console.WriteLine();
            }
            Console.WriteLine();
            Console.Write(" TOTALES: ");
            for (int i = 0; i < total.Length; i++)
            {
                Console.Write("\t{0}", total[i]);
            }
        }
    }
}
