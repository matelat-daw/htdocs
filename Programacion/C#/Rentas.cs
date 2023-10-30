using System;

// Para Compilar el Código: mcs -out:main.exe main.cs
// Para Ejecutarlo: mono main.exe

namespace Rentas
{
    class Rentas
    {
        static void Main(string[] args)
        {
            const int tasa1 = 5;
            const int tasa2 = 10;
            const int tasa3 = 15;
            const int tasa4 = 18;
            int total = 0;
            int tasa = 0;
            double pagar = 0;
            double final = 0;
            double extra = 0;

            do
            {
                Console.Write("Ingresa un Número: ");
                total = Convert.ToInt32(Console.ReadLine());
                if (total > 0)
                {
                    if (total < 20000)
                    {
                        tasa = tasa1;
                        pagar = total * tasa / 100;
                        final = total - pagar;
                    } else if (total < 60000)
                    {
                        tasa = tasa2;
                        pagar = total * tasa / 100;
                        extra = pagar * tasa1 * 5;
                        final = total - pagar - extra;
                    } else if (total < 12000)
                    {
                        tasa = tasa3;
                        pagar = total * tasa / 100;
                        extra = pagar * tasa1 * 5;
                        final = total - pagar - extra;
                    } else
                    {
                        tasa = tasa4;
                        pagar = total * tasa / 100;
                        extra = pagar * tasa1 * 5;
                        final = total - pagar - extra;
                    }
                    if (extra > 0)
                    {
                        Console.WriteLine("Has Ganado {0} €, Tienes que pagar {1} % de IRPF, Total a Percibir Después de Impuestos: {2}, has Pagado: {3}", total, tasa, final, pagar);
                    }
                    else
                    {
                        Console.WriteLine("Has Ganado {0} €, Tienes que pagar {1} % de IRPF más un 5 % extra: {2}, Total a Percibir Después de Impuestos: {3}, has Pagado: {4}", total, tasa, extra, final, pagar);
                    }
                    Console.WriteLine("Para Terminar Ingrea -1, Presiona Cualquier Tecla Para Continuar.");
                    Console.ReadKey();
                    Console.Clear();
                }
            }
            while (total != -1);
        }
    }
}